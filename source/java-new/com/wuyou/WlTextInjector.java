package com.wuyou;

import com.wuyouwin.xserver.Keyboard;
import com.wuyouwin.xserver.Window;
import com.wuyouwin.xserver.WindowManager;
import com.wuyouwin.xserver.XKeycode;
import com.wuyouwin.xserver.XServer;

import java.util.List;

/**
 * 文本注入（X11 keysym 路径）。
 *
 * 实测关键结论：
 *  - pointWindow 由鼠标坐标算出，若指针停在别的窗口（如 wfm.exe），
 *    文字就会进那个窗口而不是目标窗口。
 *  - keysym 首次注册后需要一次 MappingNotify 往返，Wine 才能识别。
 *
 * 因此注入策略改为：
 *  1. 记录所有可见应用窗口，便于判断目标窗口是否存在
 *  2. 焦点优先跟随指针窗口；若指针窗口不是应用窗口，则回退到当前焦点
 *  3. 一次性注册本次全部 keysym → 等待 → 逐字符注入（字符间留间隔）
 */
public final class WlTextInjector {
    private WlTextInjector() {}

    public static void inject(XServer xServer, String text) {
        if (xServer == null || text == null || text.isEmpty()) return;

        dumpWindows(xServer);

        StringBuilder log = new StringBuilder("inject ");

        try {
            WindowManager wm = xServer.windowManager;
            if (wm == null) {
                WlLog.w("wuyou_inject.txt", log.append("ABORT:no-wm").toString());
                return;
            }

            Window focused = wm.getFocusedWindow();
            log.append("focus=").append(name(focused));

            Window point = null;
            try {
                if (xServer.inputDeviceManager != null) {
                    point = xServer.inputDeviceManager.getPointWindow();
                }
            }
            catch (Throwable ignored) {}
            log.append(" point=").append(name(point));

            // 只在指针窗口是应用窗口时才切焦点；否则会抢走用户正在用的窗口
            Window target = focused;
            if (point != null && point.isApplicationWindow() && point != focused) {
                try {
                    wm.setFocus(point, WindowManager.POINTER_ROOT);
                    target = wm.getFocusedWindow();
                    log.append(" ->refocus=").append(name(target));
                }
                catch (Throwable t) {
                    log.append(" focusFail=").append(t.getClass().getSimpleName());
                }
            }

            if (target == null) {
                WlLog.w("wuyou_inject.txt", log.append(" ABORT:no-target").toString());
                return;
            }

            log.append(" listens=").append(target.hasEventListenerFor(1));

            Keyboard kb = xServer.keyboard;
            XKeycode carrier = XKeycode.KEY_A;
            if (kb == null || carrier == null) {
                WlLog.w("wuyou_inject.txt", log.append(" ABORT:no-kb").toString());
                return;
            }
            byte id = carrier.id;

            // 1) 一次性注册本次所有不同 keysym
            int prev = -1;
            for (int i = 0; i < text.length(); i++) {
                int ks = toKeysym(text.charAt(i));
                if (ks == 0 || ks == prev) continue;
                kb.setKeysyms(id, ks, ks);
                prev = ks;
            }

            // 2) 等待 Wine 完成键盘映射重查
            sleepQuiet(50);

            // 3) 逐字符注入，字符间留间隔
            int sent = 0;
            for (int i = 0; i < text.length(); i++) {
                char ch = text.charAt(i);
                int ks = toKeysym(ch);
                if (ks == 0) continue;

                kb.setKeysyms(id, ks, ks);
                xServer.injectKeyPress(carrier, ks);
                sleepQuiet(8);
                xServer.injectKeyRelease(carrier);
                sleepQuiet(18);
                sent++;
            }

            log.append(" sent=").append(sent).append("/").append(text.length());
        }
        catch (Throwable t) {
            log.append(" EX=").append(t.getClass().getSimpleName());
        }

        WlLog.w("wuyou_inject.txt", log.toString());
    }

    /** 列出当前所有应用窗口，用于排查"目标窗口是否真的存在"。 */
    public static void dumpWindows(XServer xServer) {
        if (xServer == null || xServer.windowManager == null) return;
        StringBuilder sb = new StringBuilder("windows:");
        try {
            Window root = xServer.windowManager.rootWindow;
            collect(root, sb, 0);
        }
        catch (Throwable t) {
            sb.append(" EX=").append(t.getClass().getSimpleName());
        }
        WlLog.w("wuyou_windows.txt", sb.toString());
    }

    private static void collect(Window w, StringBuilder sb, int depth) {
        if (w == null || depth > 3) return;
        try {
            if (w.isApplicationWindow()) {
                sb.append(" [").append(name(w)).append("]");
            }
            List<Window> kids = w.getChildren();
            if (kids != null) {
                for (Window k : kids) collect(k, sb, depth + 1);
            }
        }
        catch (Throwable ignored) {}
    }

    private static void sleepQuiet(long ms) {
        try { Thread.sleep(ms); } catch (Throwable ignored) {}
    }

    private static String name(Window w) {
        if (w == null) return "null";
        try {
            String n = w.getClassName();
            return n == null ? "?" : n;
        }
        catch (Throwable t) {
            return "err";
        }
    }

    private static int toKeysym(char ch) {
        if (ch == '\b') return 0xff08;
        if (ch == '\n' || ch == '\r') return 0xff0d;
        if (ch == '\t') return 0xff09;
        if (ch >= 0x20 && ch < 0x7f) return ch;
        return 0x01000000 | ch;
    }
}
