package com.wuyou;

/**
 * 启动链路追踪：在容器启动的各个阶段写日志到 /sdcard/Download/wuyou_boot.txt
 *
 * 用途：容器"卡在正在启动"时，看最后一条记录就知道停在哪一步。
 * 全部方法只做追加写，失败静默，不影响主流程。
 */
public final class WlBootTrace {
    private static final String FILE = "wuyou_boot.txt";

    private WlBootTrace() {}

    public static void step(String name) {
        WlLog.w(FILE, "[" + now() + "] " + name);
    }

    public static void step(String name, String detail) {
        WlLog.w(FILE, "[" + now() + "] " + name + " | " + detail);
    }

    public static void fail(String name, Throwable t) {
        String msg = t == null ? "null" : (t.getClass().getName() + ": " + t.getMessage());
        WlLog.w(FILE, "[" + now() + "] " + name + " FAILED | " + msg);
    }


    public static void stepInt(String name, int value) {
        WlLog.w(FILE, "[" + now() + "] " + name + " | " + value);
    }

    /** 检查可执行文件状态，用于排查"进程创建失败"。 */
    public static void checkExecutable(String tag, String path, String workDir) {
        try {
            java.io.File f = new java.io.File(path);
            StringBuilder sb = new StringBuilder();
            sb.append("exists=").append(f.exists());
            sb.append(" canRead=").append(f.canRead());
            sb.append(" canExec=").append(f.canExecute());
            sb.append(" isFile=").append(f.isFile());
            sb.append(" len=").append(f.length());
            sb.append(" wd=").append(workDir);
            sb.append(" wdExists=").append(workDir != null && new java.io.File(workDir).exists());
            WlLog.w(FILE, "[" + now() + "] " + tag + " | " + sb);
        }
        catch (Throwable t) {
            fail(tag, t);
        }
    }

    /** 记录进程/文件等环境信息，便于判断是环境问题还是逻辑问题。 */
    public static void env(String tag, String value) {
        WlLog.w(FILE, "[" + now() + "] " + tag + " = " + value);
    }

    private static String now() {
        try {
            java.text.SimpleDateFormat f =
                    new java.text.SimpleDateFormat("HH:mm:ss.SSS", java.util.Locale.US);
            return f.format(new java.util.Date());
        }
        catch (Throwable t) {
            return String.valueOf(System.currentTimeMillis());
        }
    }
}
