.class Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;
.super Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelperInternal19"
.end annotation


# instance fields
.field private final mEditText:Landroid/widget/EditText;

.field private final mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "expectInitializedEmojiCompat"    # Z

    .line 264
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;-><init>()V

    .line 265
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    .line 266
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    invoke-direct {v0, v1, p2}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    .line 267
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 268
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 269
    return-void
.end method


# virtual methods
.method getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1
    .param p1, "keyListener"    # Landroid/text/method/KeyListener;

    .line 283
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    if-eqz v0, :cond_0

    .line 284
    return-object p1

    .line 286
    :cond_0
    if-nez p1, :cond_1

    .line 290
    const/4 v0, 0x0

    return-object v0

    .line 293
    :cond_1
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiKeyListener;-><init>(Landroid/text/method/KeyListener;)V

    return-object v0
.end method

.method onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 299
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    if-eqz v0, :cond_0

    .line 300
    return-object p1

    .line 304
    :cond_0
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    invoke-direct {v0, v1, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    return-object v0
.end method

.method setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 309
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->setEnabled(Z)V

    .line 314
    return-void
.end method
