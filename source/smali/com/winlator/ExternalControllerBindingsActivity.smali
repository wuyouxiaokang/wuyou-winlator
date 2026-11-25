.class public Lcom/winlator/ExternalControllerBindingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExternalControllerBindingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field private controller:Lcom/winlator/inputcontrols/ExternalController;

.field private emptyTextView:Landroid/widget/TextView;

.field private profile:Lcom/winlator/inputcontrols/ControlsProfile;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$KT8vD2WgVnSH3aYpkwjPxmd0uuU(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/ExternalControllerBindingsActivity;->lambda$animateItemView$0(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/winlator/ExternalControllerBindingsActivity;)Lcom/winlator/inputcontrols/ExternalController;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/ExternalControllerBindingsActivity;

    .line 39
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/winlator/ExternalControllerBindingsActivity;)Lcom/winlator/inputcontrols/ControlsProfile;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/ExternalControllerBindingsActivity;

    .line 39
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity;->profile:Lcom/winlator/inputcontrols/ControlsProfile;

    return-object v0
.end method

.method static synthetic access$800(Lcom/winlator/ExternalControllerBindingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/winlator/ExternalControllerBindingsActivity;

    .line 39
    invoke-direct {p0}, Lcom/winlator/ExternalControllerBindingsActivity;->updateEmptyTextView()V

    return-void
.end method

.method private animateItemView(I)V
    .locals 5
    .param p1, "position"    # I

    .line 281
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 282
    .local v0, "holder":Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    if-eqz v0, :cond_0

    .line 283
    const v1, 0x7f0400c1

    invoke-static {p0, v1}, Lcom/winlator/core/AppUtils;->getThemeColor(Landroid/content/Context;I)I

    move-result v1

    .line 284
    .local v1, "color":I
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 285
    .local v2, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 286
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    new-instance v3, Lcom/winlator/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/winlator/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 293
    .end local v1    # "color":I
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x0
    .end array-data
.end method

.method private static synthetic lambda$animateItemView$0(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;ILandroid/animation/ValueAnimator;)V
    .locals 6
    .param p0, "holder"    # Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p1, "color"    # I
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 288
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 289
    .local v0, "alpha":F
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 290
    return-void
.end method

.method private processJoystickInput()V
    .locals 16

    .line 108
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 109
    .local v1, "keyCode":I
    sget-object v2, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    .line 110
    .local v2, "binding":Lcom/winlator/inputcontrols/Binding;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xb

    const/16 v8, 0xe

    const/4 v9, 0x6

    new-array v10, v9, [I

    fill-array-data v10, :array_0

    .line 111
    .local v10, "axes":[I
    iget-object v11, v0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v11}, Lcom/winlator/inputcontrols/ExternalController;->getGamepadState()Lcom/winlator/inputcontrols/GamepadState;

    move-result-object v11

    .line 112
    .local v11, "state":Lcom/winlator/inputcontrols/GamepadState;
    iget v12, v11, Lcom/winlator/inputcontrols/GamepadState;->thumbLX:F

    iget v13, v11, Lcom/winlator/inputcontrols/GamepadState;->thumbLY:F

    iget v14, v11, Lcom/winlator/inputcontrols/GamepadState;->thumbRX:F

    iget v15, v11, Lcom/winlator/inputcontrols/GamepadState;->thumbRY:F

    invoke-virtual {v11}, Lcom/winlator/inputcontrols/GamepadState;->getDPadX()B

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v11}, Lcom/winlator/inputcontrols/GamepadState;->getDPadY()B

    move-result v3

    int-to-float v3, v3

    new-array v9, v9, [F

    aput v12, v9, v5

    aput v13, v9, v6

    const/4 v5, 0x2

    aput v14, v9, v5

    const/4 v5, 0x3

    aput v15, v9, v5

    const/4 v5, 0x4

    aput v4, v9, v5

    const/4 v4, 0x5

    aput v3, v9, v4

    move-object v3, v9

    .line 115
    .local v3, "values":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v10

    if-ge v4, v5, :cond_b

    .line 116
    aget v5, v3, v4

    invoke-static {v5}, Lcom/winlator/math/Mathf;->sign(F)B

    move-result v5

    move v9, v5

    .local v9, "sign":B
    if-eqz v5, :cond_a

    .line 117
    aget v5, v10, v4

    if-eqz v5, :cond_0

    aget v5, v10, v4

    if-ne v5, v7, :cond_1

    :cond_0
    goto :goto_5

    .line 120
    :cond_1
    aget v5, v10, v4

    if-eq v5, v6, :cond_2

    aget v5, v10, v4

    if-ne v5, v8, :cond_3

    :cond_2
    goto :goto_3

    .line 123
    :cond_3
    aget v5, v10, v4

    const/16 v12, 0xf

    if-ne v5, v12, :cond_5

    .line 124
    if-lez v9, :cond_4

    sget-object v5, Lcom/winlator/inputcontrols/Binding;->KEY_D:Lcom/winlator/inputcontrols/Binding;

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/winlator/inputcontrols/Binding;->KEY_A:Lcom/winlator/inputcontrols/Binding;

    :goto_1
    move-object v2, v5

    goto :goto_7

    .line 126
    :cond_5
    aget v5, v10, v4

    const/16 v13, 0x10

    if-ne v5, v13, :cond_9

    .line 127
    if-lez v9, :cond_6

    sget-object v5, Lcom/winlator/inputcontrols/Binding;->KEY_S:Lcom/winlator/inputcontrols/Binding;

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/winlator/inputcontrols/Binding;->KEY_W:Lcom/winlator/inputcontrols/Binding;

    :goto_2
    move-object v2, v5

    goto :goto_7

    .line 121
    :goto_3
    if-lez v9, :cond_7

    sget-object v5, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/winlator/inputcontrols/Binding;

    goto :goto_4

    :cond_7
    sget-object v5, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/winlator/inputcontrols/Binding;

    :goto_4
    move-object v2, v5

    goto :goto_7

    .line 118
    :goto_5
    if-lez v9, :cond_8

    sget-object v5, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/winlator/inputcontrols/Binding;

    goto :goto_6

    :cond_8
    sget-object v5, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/winlator/inputcontrols/Binding;

    :goto_6
    move-object v2, v5

    .line 130
    :cond_9
    :goto_7
    aget v5, v10, v4

    invoke-static {v5, v9}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v1

    .line 131
    goto :goto_8

    .line 115
    :cond_a
    const/16 v12, 0xf

    const/16 v13, 0x10

    add-int/2addr v4, v6

    goto :goto_0

    .line 135
    .end local v4    # "i":I
    .end local v9    # "sign":B
    :cond_b
    :goto_8
    invoke-direct {v0, v1, v2}, Lcom/winlator/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/winlator/inputcontrols/Binding;)V

    .line 136
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private updateControllerBinding(ILcom/winlator/inputcontrols/Binding;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "binding"    # Lcom/winlator/inputcontrols/Binding;

    .line 88
    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v0, p1}, Lcom/winlator/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/winlator/inputcontrols/ExternalControllerBinding;

    move-result-object v0

    .line 92
    .local v0, "controllerBinding":Lcom/winlator/inputcontrols/ExternalControllerBinding;
    if-nez v0, :cond_1

    .line 93
    new-instance v1, Lcom/winlator/inputcontrols/ExternalControllerBinding;

    invoke-direct {v1}, Lcom/winlator/inputcontrols/ExternalControllerBinding;-><init>()V

    move-object v0, v1

    .line 94
    invoke-virtual {v0, p1}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->setKeyCode(I)V

    .line 95
    invoke-virtual {v0, p2}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/winlator/inputcontrols/Binding;)V

    .line 97
    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v1, v0}, Lcom/winlator/inputcontrols/ExternalController;->addControllerBinding(Lcom/winlator/inputcontrols/ExternalControllerBinding;)V

    .line 98
    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity;->profile:Lcom/winlator/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ControlsProfile;->save()V

    .line 99
    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity;->adapter:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 100
    invoke-direct {p0}, Lcom/winlator/ExternalControllerBindingsActivity;->updateEmptyTextView()V

    .line 101
    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v1, v0}, Lcom/winlator/inputcontrols/ExternalController;->getPosition(Lcom/winlator/inputcontrols/ExternalControllerBinding;)I

    move-result v1

    .local v1, "position":I
    goto :goto_0

    .line 103
    .end local v1    # "position":I
    :cond_1
    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v1, v0}, Lcom/winlator/inputcontrols/ExternalController;->getPosition(Lcom/winlator/inputcontrols/ExternalControllerBinding;)I

    move-result v1

    move v2, v1

    .local v2, "position":I
    invoke-direct {p0, v1}, Lcom/winlator/ExternalControllerBindingsActivity;->animateItemView(I)V

    .line 104
    .end local v2    # "position":I
    .restart local v1    # "position":I
    :goto_0
    iget-object v2, p0, Lcom/winlator/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 105
    return-void
.end method

.method private updateEmptyTextView()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity;->emptyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity;->adapter:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    invoke-virtual {v1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .line 84
    invoke-static {p1}, Lcom/winlator/core/LocaleHelper;->setSystemLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v0, p1}, Lcom/winlator/inputcontrols/ExternalController;->updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/ExternalController;->getGamepadState()Lcom/winlator/inputcontrols/GamepadState;

    move-result-object v0

    .line 142
    .local v0, "state":Lcom/winlator/inputcontrols/GamepadState;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/winlator/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x68

    sget-object v2, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    invoke-direct {p0, v1, v2}, Lcom/winlator/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/winlator/inputcontrols/Binding;)V

    .line 143
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/winlator/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x69

    sget-object v2, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    invoke-direct {p0, v1, v2}, Lcom/winlator/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/winlator/inputcontrols/Binding;)V

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/winlator/ExternalControllerBindingsActivity;->processJoystickInput()V

    .line 145
    const/4 v1, 0x1

    return v1

    .line 147
    .end local v0    # "state":Lcom/winlator/inputcontrols/GamepadState;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 152
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    invoke-direct {p0, v0, v1}, Lcom/winlator/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/winlator/inputcontrols/Binding;)V

    .line 154
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-static {p0}, Lcom/winlator/core/AppUtils;->setActivityTheme(Landroid/app/Activity;)V

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "profile_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 54
    .local v1, "profileId":I
    invoke-static {p0, v1}, Lcom/winlator/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/winlator/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/winlator/inputcontrols/ControlsProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/ExternalControllerBindingsActivity;->profile:Lcom/winlator/inputcontrols/ControlsProfile;

    .line 55
    const-string v2, "controller_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "controllerId":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/ExternalControllerBindingsActivity;->profile:Lcom/winlator/inputcontrols/ControlsProfile;

    invoke-virtual {v3, v2}, Lcom/winlator/inputcontrols/ControlsProfile;->getController(Ljava/lang/String;)Lcom/winlator/inputcontrols/ExternalController;

    move-result-object v3

    iput-object v3, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    .line 58
    iget-object v3, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    if-nez v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/winlator/ExternalControllerBindingsActivity;->profile:Lcom/winlator/inputcontrols/ControlsProfile;

    invoke-virtual {v3, v2}, Lcom/winlator/inputcontrols/ControlsProfile;->addController(Ljava/lang/String;)Lcom/winlator/inputcontrols/ExternalController;

    move-result-object v3

    iput-object v3, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    .line 60
    iget-object v3, p0, Lcom/winlator/ExternalControllerBindingsActivity;->profile:Lcom/winlator/inputcontrols/ControlsProfile;

    invoke-virtual {v3}, Lcom/winlator/inputcontrols/ControlsProfile;->save()V

    .line 63
    :cond_0
    const v3, 0x7f0900fb

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 64
    .local v3, "toolbar":Landroidx/appcompat/widget/Toolbar;
    iget-object v4, p0, Lcom/winlator/ExternalControllerBindingsActivity;->controller:Lcom/winlator/inputcontrols/ExternalController;

    invoke-virtual {v4}, Lcom/winlator/inputcontrols/ExternalController;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    .line 68
    .local v4, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    const v6, 0x7f080091

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 71
    const v6, 0x7f0900eb

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/winlator/ExternalControllerBindingsActivity;->emptyTextView:Landroid/widget/TextView;

    .line 72
    const v6, 0x7f0900a2

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v6, p0, Lcom/winlator/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iget-object v6, p0, Lcom/winlator/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v7, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    new-instance v6, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-direct {v6, p0, v5}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    move-object v5, v6

    .line 76
    .local v5, "itemDecoration":Landroidx/recyclerview/widget/DividerItemDecoration;
    const v6, 0x7f0800d8

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v6, p0, Lcom/winlator/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    iget-object v6, p0, Lcom/winlator/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;-><init>(Lcom/winlator/ExternalControllerBindingsActivity;Lcom/winlator/ExternalControllerBindingsActivity$1;)V

    iput-object v7, p0, Lcom/winlator/ExternalControllerBindingsActivity;->adapter:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    invoke-direct {p0}, Lcom/winlator/ExternalControllerBindingsActivity;->updateEmptyTextView()V

    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 162
    const/4 v0, 0x1

    return v0
.end method
