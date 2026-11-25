package com.wuyou;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

/**
 * 首次启动说明（二级界面）+ 使用教程（三级界面）。
 *
 * 二级：项目说明、二改内容、注意事项、开源信息、仓库地址、日志位置、反馈邮箱
 * 三级：使用教程 + 已知问题
 */
public final class WlAbout {
    private static final String PREF_NAME = "wl_about";
    private static final String PREF_KEY = "wl_about_shown_v1";

    /** 本项目开源仓库地址。 */
    public static final String REPO_URL = "https://github.com/wuyouxiaokang/wuyou-winlator";
    /** 反馈邮箱。 */
    public static final String CONTACT_EMAIL = "3266636647@qq.com";

    private WlAbout() {}

    public static void maybeShow(Activity activity) {
        if (activity == null) return;
        SharedPreferences prefs;
        try {
            prefs = activity.getSharedPreferences(PREF_NAME, 0);
        }
        catch (Throwable t) {
            return;
        }
        if (prefs.getBoolean(PREF_KEY, false)) return;

        prefs.edit().putBoolean(PREF_KEY, true).apply();
        show(activity);
    }

    // ---------------- 二级界面 ----------------

    public static void show(final Activity activity) {
        if (activity == null) return;
        try {
            String msg = buildSecondaryText(activity);

            AlertDialog.Builder b = new AlertDialog.Builder(activity);
            b.setTitle("无忧 Windows 虚拟机");
            b.setMessage(Html.fromHtml(msg, Html.FROM_HTML_MODE_LEGACY));
            b.setPositiveButton("我已知晓", null);
            b.setNeutralButton("使用教程", (d, w) -> showTutorial(activity));

            Dialog dlg = b.create();
            dlg.setOnShowListener(d -> {
                try {
                    TextView tv = findMessageView(dlg);
                    if (tv != null) tv.setMovementMethod(LinkMovementMethod.getInstance());
                }
                catch (Throwable ignored) {}
            });
            dlg.show();
        }
        catch (Throwable ignored) {}
    }

    private static String buildSecondaryText(Context ctx) {
        String logsDir = logsPath(ctx);
        StringBuilder sb = new StringBuilder();

        sb.append("基于开源项目 Winlator 进行二改，二改内容：<br><br>");
        sb.append("1. 中文适配（简体 / 繁体）<br>");
        sb.append("2. UI 动画精化<br>");
        sb.append("3. 虚拟键盘支持（鼠标进入输入框时可调出）<br><br>");

        sb.append("<b>【虚拟键盘】</b><br><br>");
        sb.append("1. 鼠标移到输入框（光标变竖线）时会弹出询问，确认后调出键盘。<br>");
        sb.append("2. 也可以随时点右上角菜单 → 键盘，手动调出。<br>");
        sb.append("3. 键盘弹出后，输入的文字会转发到容器窗口。<br><br>");

        sb.append("<b>【注意】</b><br><br>");
        sb.append("1. 不要连续多次点击一个或多个 APP，否则会导致容器卡死崩溃闪退。<br><br>");
        sb.append("2. 虚拟机环境在部分游戏厂商的检测下可能会导致环境异常封号，");
        sb.append("因个人原因封号我们概不负责。<br><br>");
        sb.append("3. 如果桌面快捷方式无法打开浏览器等 APP，可在容器桌面的：");
        sb.append("起点 → Programs 中打开。<br><br>");

        sb.append("<b>【日志位置】</b><br><br>");
        sb.append("崩溃日志：<br>").append(logsDir).append("/wuyou-crash.txt").append("<br><br>");
        sb.append("键盘诊断：<br>/storage/emulated/0/Download/wuyou_send.txt<br>");
        sb.append("/storage/emulated/0/Download/wuyou_inject.txt<br><br>");

        sb.append("<b>【反馈】</b><br><br>");
        sb.append("邮箱：<a href=\"mailto:").append(CONTACT_EMAIL).append("\">")
          .append(CONTACT_EMAIL).append("</a><br><br>");

        sb.append("<b>【开源信息】</b><br><br>");
        sb.append("上游项目：<a href=\"https://www.winlator.org/\">winlator.org</a><br>");
        sb.append("上游仓库：<a href=\"https://github.com/brunodev85/winlator\">")
          .append("github.com/brunodev85/winlator</a><br>");
        sb.append("无忧 AI 实验室官网：<a href=\"https://wuyouai.gemigo.app/\">")
          .append("wuyouai.gemigo.app</a><br><br>");
        sb.append("本项目开源仓库：<br><a href=\"").append(REPO_URL).append("\">")
          .append(REPO_URL).append("</a><br><br>");
        sb.append("上游采用 LGPL 2.1 协议，本项目同样开源，");
        sb.append("严格遵守开源协议要求，更改代码会开源。");

        return sb.toString();
    }

    // ---------------- 三级界面：使用教程 ----------------

    public static void showTutorial(final Activity activity) {
        if (activity == null) return;
        try {
            ScrollView scroll = new ScrollView(activity);
            scroll.setPadding(dp(activity, 20), dp(activity, 12), dp(activity, 20), dp(activity, 8));

            LinearLayout root = new LinearLayout(activity);
            root.setOrientation(LinearLayout.VERTICAL);
            scroll.addView(root, new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

            addHeading(activity, root, "使用教程");

            addSection(activity, root, "1. 首次启动",
                    "进入后需要先创建容器。点右上角「＋」，选择分辨率后等待系统文件安装完成。\n"
                  + "首次安装耗时较长（视设备性能 3~10 分钟），请保持屏幕常亮。");

            addSection(activity, root, "2. 安装软件",
                    "把 .exe 安装包放到手机存储，在容器内用文件管理器打开即可安装。\n"
                  + "也可从「起点 → Programs」打开内置工具。");

            addSection(activity, root, "3. 调出虚拟键盘",
                    "方式一：鼠标移到输入框（光标变成竖线）后会弹窗询问，确认即可。\n"
                  + "方式二：点右上角菜单 → 键盘，手动调出。\n"
                  + "方式三：点屏幕右下角的悬浮球图标。\n\n"
                  + "如果键盘关闭后仍在输入，请再点一次菜单 → 键盘 重新打开再关闭。");

            addSection(activity, root, "4. 操作与手感",
                    "单击 = 鼠标左键，双指轻点 = 鼠标右键，四指轻点 = 打开菜单。\n"
                  + "可在「输入操控」里调整虚拟按键布局与透明度。");

            addSection(activity, root, "5. 性能优化",
                    "容器分辨率建议 1280x720；Box64 预设选 Performance；\n"
                  + "图形驱动优先选 Turnip（仅 Adreno GPU 支持），Mali 设备用 VirGL。");

            addHeading(activity, root, "已知问题");

            addSection(activity, root, "虚拟键盘输入可能不完整",
                    "当前版本的键盘文字注入仍在完善中，可能出现：\n"
                  + "· 只输入了第一个字\n"
                  + "· 文字进入了错误窗口（例如文件管理器）\n"
                  + "· 关闭键盘后仍在继续输入\n\n"
                  + "临时办法：先点击目标窗口内部让焦点切换过去，再调出键盘输入。");

            addSection(activity, root, "其他说明",
                    "本机日志保存在：\n" + logsPath(activity) + "\n\n"
                  + "反馈请发邮件至 " + CONTACT_EMAIL + "，并附上日志文件。");

            AlertDialog.Builder b = new AlertDialog.Builder(activity);
            b.setView(scroll);
            b.setPositiveButton("开始使用", null);
            b.setNegativeButton("返回", (d, w) -> show(activity));
            b.show();
        }
        catch (Throwable ignored) {}
    }

    // ---------------- UI 辅助 ----------------

    private static void addHeading(Context ctx, LinearLayout parent, String text) {
        TextView tv = new TextView(ctx);
        tv.setText(text);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
        tv.setTextColor(Color.parseColor("#1E96BE"));
        tv.setPadding(0, dp(ctx, 14), 0, dp(ctx, 6));
        parent.addView(tv);
    }

    private static void addSection(Context ctx, LinearLayout parent, String title, String body) {
        TextView t = new TextView(ctx);
        t.setText(title);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        t.setTextColor(Color.parseColor("#16202E"));
        t.setPadding(0, dp(ctx, 10), 0, dp(ctx, 2));
        parent.addView(t);

        TextView c = new TextView(ctx);
        c.setText(body);
        c.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
        c.setTextColor(Color.parseColor("#5A6B7C"));
        c.setLineSpacing(dp(ctx, 3), 1f);
        parent.addView(c);
    }

    private static int dp(Context ctx, float v) {
        return Math.round(v * ctx.getResources().getDisplayMetrics().density);
    }

    private static String logsPath(Context ctx) {
        try {
            java.io.File f = ctx.getExternalFilesDir(null);
            if (f != null) return f.getAbsolutePath();
        }
        catch (Throwable ignored) {}
        return "/sdcard/Android/data/com.winlator/files";
    }

    /** AlertDialog 的消息 TextView 是私有的，通过 id 查找。 */
    private static TextView findMessageView(Dialog dlg) {
        try {
            int id = dlg.getContext().getResources().getIdentifier(
                    "message", "id", "android");
            if (id != 0) {
                View v = dlg.findViewById(id);
                if (v instanceof TextView) return (TextView) v;
            }
        }
        catch (Throwable ignored) {}
        return null;
    }
}
