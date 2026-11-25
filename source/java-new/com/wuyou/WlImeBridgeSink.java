package com.wuyou;

import com.wuyouwin.XServerDisplayActivity;

import java.lang.ref.WeakReference;

/** WlImeBridge 的文本出口：交给 Activity 注入进容器。 */
public final class WlImeBridgeSink implements WlImeBridge.WlTextSink {
    private final WeakReference<XServerDisplayActivity> activity;

    public WlImeBridgeSink(XServerDisplayActivity activity) {
        this.activity = new WeakReference<>(activity);
    }

    @Override
    public void onText(String text) {
        XServerDisplayActivity a = activity.get();
        if (a == null || text == null || text.isEmpty()) return;
        a.wlSendText(text);
    }
}
