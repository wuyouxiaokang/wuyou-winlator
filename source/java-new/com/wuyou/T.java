package com.wuyou;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
public class T {
    public static int test() {
        KeyEvent e = new KeyEvent(0, 0, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_A, 0);
        return e.getUnicodeChar();
    }
}
