package com.wuyou;

/**
 * 文本出口接口。
 *
 * 历史说明：这里曾是 BaseInputConnection 的自定义实现，但因为绕过 EditText
 * 真实文本导致输入法状态错乱（反复提交同一个字、删除键失灵），已废弃。
 * 现在输入链路为：系统 InputConnection → EditText 真实文本 → TextWatcher 差分 → 本接口。
 */
public final class WlImeBridge {
    private WlImeBridge() {}

    public interface WlTextSink {
        void onText(String text);
    }
}
