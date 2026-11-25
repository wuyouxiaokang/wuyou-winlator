package com.winlator.xserver;
import java.util.List;
public class Window {
    public String getClassName() { return ""; }
    public long getHandle() { return 0L; }
    public boolean hasEventListenerFor(int eventId) { return false; }
    public boolean isApplicationWindow() { return false; }
    public List<Window> getChildren() { return null; }
}
