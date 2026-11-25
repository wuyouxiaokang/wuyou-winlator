package com.wuyou;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

import com.winlator.XServerDisplayActivity;

/**
 * 键盘显隐助手（Java 实现，避免手写 smali 的寄存器/签名错误）。
 */
public final class WlKeyboardHelper {
    private WlKeyboardHelper() {}

    /** 收起键盘并结束输入。 */
    public static void hide(Activity activity) {
        if (activity == null) return;
        try {
            View decor = activity.getWindow() == null ? null : activity.getWindow().getDecorView();

            InputMethodManager imm = (InputMethodManager)
                    activity.getSystemService(Context.INPUT_METHOD_SERVICE);
            if (imm != null) {
                IBinder token = decor == null ? null : decor.getWindowToken();
                if (token != null) imm.hideSoftInputFromWindow(token, 0);
            }

            // 直接通过字段拿隐藏输入框（getCurrentFocus 未必指向它）
            if (activity instanceof XServerDisplayActivity) {
                WlHiddenEditText hidden = ((XServerDisplayActivity) activity).wlGetHiddenInput();
                if (hidden != null) hidden.finishInput();
            }
        }
        catch (Throwable ignored) {}
    }
}
