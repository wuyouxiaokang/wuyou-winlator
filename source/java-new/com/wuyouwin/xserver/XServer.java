package com.wuyouwin.xserver;
public class XServer {
    public final Keyboard keyboard = null;
    public final WindowManager windowManager = null;
    public final InputDeviceManager inputDeviceManager = null;
    public void injectKeyPress(XKeycode keycode) {}
    public void injectKeyPress(XKeycode keycode, int keysym) {}
    public void injectKeyRelease(XKeycode keycode) {}
}
