package com.wuyou;

import android.content.Context;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.inputmethod.BaseInputConnection;
import android.widget.EditText;

/**
 * 隐藏输入框：真实承载输入法文本，通过 TextWatcher 把"已确认"的增量转发进容器。
 *
 * 关键点：
 *  1. EditText 必须真实持有文本，否则输入法状态错乱（反复提交同一个字）。
 *  2. 必须过滤"组合中"的文本（拼音/候选未确认），否则会看到 h h h 这样
 *     的拼音碎片被送进容器。用 BaseInputConnection.getComposingSpanStart/End
 *     判断哪些字符还处于组合态，只有组合态之前的部分算已确认。
 */
public final class WlHiddenEditText extends EditText implements TextWatcher {
    private WlImeBridge.WlTextSink sink;
    /** 已转发给容器的字符数。 */
    private int lastCommitted = 0;
    /** 我们自己改动文本时抑制回调。 */
    private boolean suppress = false;
    private static final int MAX_KEEP = 200;

    public WlHiddenEditText(Context context) {
        super(context);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setCursorVisible(true);
        setBackgroundColor(0);
        setTextColor(0);
        setAlpha(0.01f);
        setLongClickable(false);
        setTextIsSelectable(false);
        setInputType(InputType.TYPE_CLASS_TEXT
                | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS
                | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        addTextChangedListener(this);
    }

    public void setTextSink(WlImeBridge.WlTextSink sink) {
        this.sink = sink;
    }

    public void finishInput() {
        suppress = true;
        try {
            setText("");
            lastCommitted = 0;
        }
        catch (Throwable ignored) {}
        suppress = false;
        clearFocus();
    }

    @Override
    public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

    @Override
    public void onTextChanged(CharSequence s, int start, int before, int count) {}

    @Override
    public void afterTextChanged(Editable s) {
        if (suppress || sink == null || s == null) return;

        // 组合态（拼音未确认）之前的部分才算已确认
        int committedEnd = s.length();
        try {
            int cs = BaseInputConnection.getComposingSpanStart(s);
            int ce = BaseInputConnection.getComposingSpanEnd(s);
            if (cs >= 0 && ce > cs) {
                committedEnd = Math.min(cs, s.length());
            }
        }
        catch (Throwable ignored) {}

        if (committedEnd > lastCommitted) {
            String added = s.subSequence(lastCommitted, committedEnd).toString();
            lastCommitted = committedEnd;
            if (!added.isEmpty()) sink.onText(added);
        }
        else if (committedEnd < lastCommitted) {
            int removed = lastCommitted - committedEnd;
            lastCommitted = committedEnd;
            StringBuilder bs = new StringBuilder();
            for (int i = 0; i < removed; i++) bs.append('\b');
            if (bs.length() > 0) sink.onText(bs.toString());
        }

        // 防止文本无限增长：保留尾部
        if (s.length() > MAX_KEEP) {
            suppress = true;
            try {
                String keep = s.subSequence(s.length() - MAX_KEEP / 2, s.length()).toString();
                setText(keep);
                setSelection(keep.length());
                lastCommitted = keep.length();
            }
            catch (Throwable ignored) {}
            suppress = false;
        }
    }
}
