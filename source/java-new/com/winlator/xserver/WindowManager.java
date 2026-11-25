package com.winlator.xserver;
public class WindowManager {
    public static final FocusRevertTo NONE = null;
    public static final FocusRevertTo PARENT = null;
    public static final FocusRevertTo POINTER_ROOT = null;
    public final Window rootWindow = null;
    public Window getFocusedWindow() { return null; }
    public void setFocus(Window w, FocusRevertTo revertTo) {}
    public static final class FocusRevertTo {}
}
