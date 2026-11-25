package com.wuyou;

import java.io.File;
import java.io.FileOutputStream;

/**
 * 简单日志：追加写到 /sdcard/Download/<file>。目录不存在会自动创建，失败静默。
 * 用于在无法读取 logcat 的设备上排查问题。
 */
public final class WlLog {
    private static final String DIR = "/storage/emulated/0/Download";

    private WlLog() {}

    public static void w(String fileName, String msg) {
        FileOutputStream out = null;
        try {
            File dir = new File(DIR);
            if (!dir.exists()) dir.mkdirs();

            out = new FileOutputStream(new File(dir, fileName), true);
            out.write((msg + "\n").getBytes("UTF-8"));
            out.flush();
        }
        catch (Throwable ignored) {}
        finally {
            try { if (out != null) out.close(); } catch (Throwable ignored) {}
        }
    }
}
