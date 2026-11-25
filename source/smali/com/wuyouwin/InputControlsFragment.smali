.class public Lcom/wuyouwin/InputControlsFragment;
.super Landroidx/fragment/app/Fragment;
.source "InputControlsFragment.java"


# instance fields
.field private currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

.field private importProfileCallback:Lcom/wuyouwin/core/Callback;

.field private manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

.field private final selectedProfileId:I

.field private updateLayout:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0aUHiaOHGSqwAIeEoavBaq2VDNc(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$9(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3gssJIqBfBl-aZAUEBMCL3PQBEc(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$downloadProfileList$22(Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$63nWRqN9AXsqoYhNBiYSoahoFOg(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$loadExternalControllers$23(Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8PnuISC27ThINY-HWPVkFisFifw(Lcom/wuyouwin/InputControlsFragment;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/wuyouwin/InputControlsFragment;->lambda$downloadSelectedProfiles$18(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8g6HfcZICQFU27cLCGCbXhtmJCg(Landroid/content/SharedPreferences;Lcom/wuyouwin/widget/SeekBar;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$3(Landroid/content/SharedPreferences;Lcom/wuyouwin/widget/SeekBar;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Cm3ycUL8LB_l9s0RD54UTyFgcM(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$downloadProfileList$21(Lcom/wuyouwin/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DG2Cmy3kJnFuQXVb455TIIlBogg(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;Lcom/wuyouwin/inputcontrols/ControlsProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$openProfileFile$16(Landroid/widget/Spinner;Lcom/wuyouwin/inputcontrols/ControlsProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FEy2cYAqtkXrC5qoi7QMPEJ2eA0(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$5(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H9auiQoXYtFT8iUHv2RBOhGuzIU(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$loadExternalControllers$25(Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JQCcLr66Atpc_I9a2MXtAnYGQiE(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$13(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K711MGO0qt47KJVnkmpZ0_V-H8A(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$11(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LsA7tskykqd-R-NhrlfRzhTwKGM(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/widget/SeekBar;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$2(Lcom/wuyouwin/widget/SeekBar;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q49SrZIcXsVtoCUJczAiVRSZFqA(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$12(Landroid/widget/Spinner;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$S_lFa5ENsBZrwhfB5oyL_mQkKlI(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$6(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UqOouBIO00GtKOS6Yz_2XZfDE4w(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$downloadProfileList$19(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vy1GEPd-AHTCOkQNCMwcV_OJE_s(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$10(Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eCwnZtAZmdduYBHe0kQulruCtpI(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$8(Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hLQixiYgmP4B9wNFqYW0UL4pPmI(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$4(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m3wBowMDhtFr5KGPVEyNVXSjckI(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/widget/SeekBar;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$0(Lcom/wuyouwin/widget/SeekBar;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$pVEx7IRPSXTq1Q43I-Ye8CU4u0w(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$7(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qx4lUlx85Gwo-Hmj6PTX9oc1boc(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wuyouwin/InputControlsFragment;->lambda$downloadProfileList$20(Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sC9Lm45SKiUyMKFec5K275gi0zM(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$downloadSelectedProfiles$17(Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uR26PSFuK9Z7cBluzxwCffTd9rM(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->lambda$loadExternalControllers$24(Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uqxrNl0W_gaMCWwn6AqxFFAZv-4(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$x1b9SGErG_RSdinlOTi44iPK4eI(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$14(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xK9v17B-9Ra-nWPDwh6UVpmE81k(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->lambda$onCreateView$15(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "selectedProfileId"    # I

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 59
    iput p1, p0, Lcom/wuyouwin/InputControlsFragment;->selectedProfileId:I

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/inputcontrols/ControlsProfile;)Lcom/wuyouwin/inputcontrols/ControlsProfile;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/InputControlsFragment;
    .param p1, "x1"    # Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 50
    iput-object p1, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wuyouwin/InputControlsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/InputControlsFragment;

    .line 50
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    return-object v0
.end method

.method private downloadProfileList(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/MainActivity;

    .line 252
    .local v0, "activity":Lcom/wuyouwin/MainActivity;
    iget-object v1, v0, Lcom/wuyouwin/MainActivity;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    const v2, 0x7f1000e0

    invoke-virtual {v1, v2}, Lcom/wuyouwin/core/PreloaderDialog;->show(I)V

    .line 253
    const-string v1, "index.txt"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "https://raw.githubusercontent.com/brunodev85/winlator/main/input_controls/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0, p1}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;)V

    invoke-static {v1, v2}, Lcom/wuyouwin/core/HttpUtils;->download(Ljava/lang/String;Lcom/wuyouwin/core/Callback;)V

    .line 265
    return-void
.end method

.method private downloadSelectedProfiles(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "items"    # [Ljava/lang/String;

    .line 228
    .local p3, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/MainActivity;

    .line 229
    .local v0, "activity":Lcom/wuyouwin/MainActivity;
    iget-object v1, v0, Lcom/wuyouwin/MainActivity;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    const v2, 0x7f10008a

    invoke-virtual {v1, v2}, Lcom/wuyouwin/core/PreloaderDialog;->show(I)V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 231
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 233
    .local v3, "processedItemCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 234
    .local v8, "position":I
    aget-object v1, p2, v8

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "https://raw.githubusercontent.com/brunodev85/winlator/main/input_controls/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda24;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p3

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda24;-><init>(Lcom/wuyouwin/InputControlsFragment;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;)V

    invoke-static {v9, v10}, Lcom/wuyouwin/core/HttpUtils;->download(Ljava/lang/String;Lcom/wuyouwin/core/Callback;)V

    .line 247
    .end local v8    # "position":I
    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method private synthetic lambda$downloadProfileList$19(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "positions"    # Ljava/util/ArrayList;

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/InputControlsFragment;->downloadSelectedProfiles(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$downloadProfileList$20(Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "activity"    # Lcom/wuyouwin/MainActivity;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "items"    # [Ljava/lang/String;
    .param p4, "positions"    # Ljava/util/ArrayList;

    .line 258
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda23;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    const v1, 0x7f10007a

    invoke-static {p1, v1, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 261
    :cond_0
    return-void
.end method

.method private synthetic lambda$downloadProfileList$21(Lcom/wuyouwin/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 4
    .param p1, "activity"    # Lcom/wuyouwin/MainActivity;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "sProfile"    # Landroid/widget/Spinner;

    .line 254
    iget-object v0, p1, Lcom/wuyouwin/MainActivity;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/wuyouwin/core/PreloaderDialog;->close()V

    .line 255
    if-eqz p2, :cond_0

    .line 256
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda22;-><init>(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;)V

    const v2, 0x7f1000d0

    const/4 v3, 0x1

    invoke-static {p1, v2, v0, v3, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->showSelectionList(Landroid/content/Context;I[Ljava/lang/String;ZLcom/wuyouwin/core/Callback;)V

    .line 262
    .end local v0    # "items":[Ljava/lang/String;
    goto :goto_0

    .line 263
    :cond_0
    const v0, 0x7f100001

    invoke-static {p1, v0}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 264
    :goto_0
    return-void
.end method

.method private synthetic lambda$downloadProfileList$22(Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lcom/wuyouwin/MainActivity;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "content"    # Ljava/lang/String;

    .line 253
    new-instance v0, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$downloadSelectedProfiles$17(Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;)V
    .locals 1
    .param p1, "activity"    # Lcom/wuyouwin/MainActivity;
    .param p2, "sProfile"    # Landroid/widget/Spinner;

    .line 241
    iget-object v0, p1, Lcom/wuyouwin/MainActivity;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/wuyouwin/core/PreloaderDialog;->close()V

    .line 242
    invoke-direct {p0, p2}, Lcom/wuyouwin/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 243
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 244
    return-void
.end method

.method private synthetic lambda$downloadSelectedProfiles$18(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2
    .param p1, "processedItemCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "positions"    # Ljava/util/ArrayList;
    .param p3, "activity"    # Lcom/wuyouwin/MainActivity;
    .param p4, "sProfile"    # Landroid/widget/Spinner;
    .param p5, "content"    # Ljava/lang/String;

    .line 236
    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/InputControlsManager;->importProfile(Lorg/json/JSONObject;)Lcom/wuyouwin/inputcontrols/ControlsProfile;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 239
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 240
    new-instance v0, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p3, p4}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda25;-><init>(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 246
    :cond_1
    return-void
.end method

.method private synthetic lambda$loadExternalControllers$23(Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 1
    .param p1, "controller"    # Lcom/wuyouwin/inputcontrols/ExternalController;
    .param p2, "view"    # Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0, p1}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->removeController(Lcom/wuyouwin/inputcontrols/ExternalController;)V

    .line 330
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 331
    invoke-direct {p0, p2}, Lcom/wuyouwin/InputControlsFragment;->loadExternalControllers(Landroid/view/View;)V

    .line 332
    return-void
.end method

.method private synthetic lambda$loadExternalControllers$24(Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "controller"    # Lcom/wuyouwin/inputcontrols/ExternalController;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;)V

    const v2, 0x7f100082

    invoke-static {v0, v2, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadExternalControllers$25(Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 3
    .param p1, "controller"    # Lcom/wuyouwin/inputcontrols/ExternalController;
    .param p2, "v"    # Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wuyouwin/ExternalControllerBindingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    iget v1, v1, Lcom/wuyouwin/inputcontrols/ControlsProfile;->id:I

    const-string v2, "profile_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v1, "controller_id"

    invoke-virtual {p1}, Lcom/wuyouwin/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 341
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100133

    invoke-static {v0, v1}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 343
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Lcom/wuyouwin/widget/SeekBar;F)V
    .locals 2
    .param p1, "seekBar"    # Lcom/wuyouwin/widget/SeekBar;
    .param p2, "value"    # F

    .line 103
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->setCursorSpeed(F)V

    .line 105
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 107
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 111
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0, p2}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->setDisableMouseInput(Z)V

    .line 113
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 115
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$10(Landroid/widget/Spinner;)V
    .locals 2
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 166
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    iget-object v1, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/InputControlsManager;->removeProfile(Lcom/wuyouwin/inputcontrols/ControlsProfile;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 168
    invoke-direct {p0, p1}, Lcom/wuyouwin/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 169
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 170
    return-void
.end method

.method private synthetic lambda$onCreateView$11(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;)V

    const v1, 0x7f100085

    invoke-static {p1, v1, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 172
    :cond_0
    const v0, 0x7f100133

    invoke-static {p1, v0}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 173
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$12(Landroid/widget/Spinner;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 180
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 181
    .local v0, "itemId":I
    const v1, 0x7f0901ee

    if-ne v0, v1, :cond_0

    .line 182
    invoke-direct {p0, p1}, Lcom/wuyouwin/InputControlsFragment;->openProfileFile(Landroid/widget/Spinner;)V

    goto :goto_0

    .line 184
    :cond_0
    const v1, 0x7f0901dd

    if-ne v0, v1, :cond_1

    .line 185
    invoke-direct {p0, p1}, Lcom/wuyouwin/InputControlsFragment;->downloadProfileList(Landroid/widget/Spinner;)V

    .line 187
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private synthetic lambda$onCreateView$13(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 176
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p1, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 177
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wuyouwin/ContainerDetailFragment$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/PopupMenu;Z)V

    .line 178
    :cond_0
    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 179
    new-instance v1, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p2}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 189
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 190
    return-void
.end method

.method private synthetic lambda$onCreateView$14(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    iget-object v1, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/InputControlsManager;->exportProfile(Lcom/wuyouwin/inputcontrols/ControlsProfile;)Ljava/io/File;

    move-result-object v0

    .line 195
    .local v0, "exportedFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f100157

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 199
    .end local v0    # "exportedFile":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 200
    :cond_1
    const v0, 0x7f100133

    invoke-static {p1, v0}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 201
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$15(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wuyouwin/ControlsEditorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    iget v1, v1, Lcom/wuyouwin/inputcontrols/ControlsProfile;->id:I

    const-string v2, "profile_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 209
    :cond_0
    const v0, 0x7f100133

    invoke-static {p1, v0}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 210
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$2(Lcom/wuyouwin/widget/SeekBar;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 2
    .param p1, "sbCursorSpeed"    # Lcom/wuyouwin/widget/SeekBar;
    .param p2, "cbDisableMouseInput"    # Landroid/widget/CheckBox;
    .param p3, "view"    # Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getCursorSpeed()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/wuyouwin/widget/SeekBar;->setValue(F)V

    .line 120
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->isDisableMouseInput()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1, v1}, Lcom/wuyouwin/widget/SeekBar;->setValue(F)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 126
    :goto_0
    invoke-direct {p0, p3}, Lcom/wuyouwin/InputControlsFragment;->loadExternalControllers(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method private static synthetic lambda$onCreateView$3(Landroid/content/SharedPreferences;Lcom/wuyouwin/widget/SeekBar;F)V
    .locals 3
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "seekBar"    # Lcom/wuyouwin/widget/SeekBar;
    .param p2, "value"    # F

    .line 132
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p2, v1

    const-string v2, "overlay_opacity"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$onCreateView$4(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "name"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    invoke-virtual {v0, p2}, Lcom/wuyouwin/inputcontrols/InputControlsManager;->createProfile(Ljava/lang/String;)Lcom/wuyouwin/inputcontrols/ControlsProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 137
    invoke-direct {p0, p1}, Lcom/wuyouwin/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 138
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 139
    return-void
.end method

.method private synthetic lambda$onCreateView$5(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 135
    new-instance v0, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;)V

    const v1, 0x7f100158

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$6(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "name"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0, p2}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->setName(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 146
    invoke-direct {p0, p1}, Lcom/wuyouwin/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 147
    return-void
.end method

.method private synthetic lambda$onCreateView$7(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p2}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;)V

    const v2, 0x7f100158

    invoke-static {p1, v2, v0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/wuyouwin/core/Callback;)V

    goto :goto_0

    .line 149
    :cond_0
    const v0, 0x7f100133

    invoke-static {p1, v0}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 150
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$8(Landroid/widget/Spinner;)V
    .locals 2
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 155
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    iget-object v1, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/InputControlsManager;->duplicateProfile(Lcom/wuyouwin/inputcontrols/ControlsProfile;)Lcom/wuyouwin/inputcontrols/ControlsProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 156
    invoke-direct {p0, p1}, Lcom/wuyouwin/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 157
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 158
    return-void
.end method

.method private synthetic lambda$onCreateView$9(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda15;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;)V

    const v1, 0x7f10007d

    invoke-static {p1, v1, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 160
    :cond_0
    const v0, 0x7f100133

    invoke-static {p1, v0}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 161
    :goto_0
    return-void
.end method

.method private synthetic lambda$openProfileFile$16(Landroid/widget/Spinner;Lcom/wuyouwin/inputcontrols/ControlsProfile;)V
    .locals 1
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "importedProfile"    # Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 217
    iput-object p2, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 218
    invoke-direct {p0, p1}, Lcom/wuyouwin/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 219
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 220
    return-void
.end method

.method private loadExternalControllers(Landroid/view/View;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 301
    .local v2, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 303
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 304
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllers()Ljava/util/ArrayList;

    move-result-object v5

    .line 306
    .local v5, "connectedControllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/inputcontrols/ExternalController;>;"
    iget-object v6, v0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v6}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v6, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/inputcontrols/ExternalController;>;"
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wuyouwin/inputcontrols/ExternalController;

    .line 308
    .local v8, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v8    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    :cond_1
    goto :goto_1

    .line 311
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const v8, 0x7f0900eb

    const/4 v9, 0x0

    if-nez v7, :cond_6

    .line 312
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 313
    const v7, 0x7f100031

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "bindingsText":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wuyouwin/inputcontrols/ExternalController;

    .line 315
    .local v10, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    const v11, 0x7f0c0049

    invoke-virtual {v4, v11, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 316
    .local v11, "itemView":Landroid/view/View;
    const v12, 0x7f0900f4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wuyouwin/inputcontrols/ExternalController;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v10}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllerBindingCount()I

    move-result v12

    .line 319
    .local v12, "controllerBindingCount":I
    const v13, 0x7f0900f3

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    const v13, 0x7f090068

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 322
    .local v13, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v10}, Lcom/wuyouwin/inputcontrols/ExternalController;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_3

    const v14, 0x7f0400c1

    goto :goto_3

    :cond_3
    const v14, 0x7f0400c7

    :goto_3
    invoke-static {v3, v14}, Lcom/wuyouwin/core/AppUtils;->getThemeColor(Landroid/content/Context;I)I

    move-result v14

    .line 323
    .local v14, "tintColor":I
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-static {v13, v15}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 325
    if-lez v12, :cond_4

    .line 326
    const v15, 0x7f090025

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 327
    .local v15, "removeButton":Landroid/widget/ImageButton;
    invoke-virtual {v15, v9}, Landroid/view/View;->setVisibility(I)V

    .line 328
    new-instance v9, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v9, v0, v10, v1}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/inputcontrols/ExternalController;Landroid/view/View;)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    .end local v15    # "removeButton":Landroid/widget/ImageButton;
    :cond_4
    new-instance v9, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v9, v0, v10}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/inputcontrols/ExternalController;)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 346
    .end local v10    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    .end local v11    # "itemView":Landroid/view/View;
    .end local v12    # "controllerBindingCount":I
    .end local v13    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "tintColor":I
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 347
    .end local v7    # "bindingsText":Ljava/lang/String;
    :cond_5
    goto :goto_4

    .line 348
    :cond_6
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :goto_4
    return-void
.end method

.method private loadProfileSpinner(Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .line 274
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 275
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/inputcontrols/ControlsProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f10016b

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "selectedPosition":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 280
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 281
    .local v4, "profile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    iget-object v5, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 282
    :cond_0
    invoke-virtual {v4}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v4    # "profile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 285
    .end local v3    # "i":I
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090009

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 286
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 287
    new-instance v3, Lcom/wuyouwin/InputControlsFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/wuyouwin/InputControlsFragment$1;-><init>(Lcom/wuyouwin/InputControlsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 297
    return-void
.end method

.method private openProfileFile(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 216
    new-instance v0, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/widget/Spinner;)V

    iput-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->importProfileCallback:Lcom/wuyouwin/core/Callback;

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 225
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 77
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wuyouwin/core/FileUtils;->readString(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/InputControlsManager;->importProfile(Lorg/json/JSONObject;)Lcom/wuyouwin/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 80
    .local v0, "importedProfile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    iget-object v1, p0, Lcom/wuyouwin/InputControlsFragment;->importProfileCallback:Lcom/wuyouwin/core/Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/InputControlsFragment;->importProfileCallback:Lcom/wuyouwin/core/Callback;

    invoke-interface {v1, v0}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "importedProfile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 84
    :cond_0
    :goto_0
    goto :goto_2

    .line 82
    :goto_1
    nop

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100195

    invoke-static {v1, v2}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->importProfileCallback:Lcom/wuyouwin/core/Callback;

    .line 87
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 66
    new-instance v0, Lcom/wuyouwin/inputcontrols/InputControlsManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wuyouwin/inputcontrols/InputControlsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    const v0, 0x7f0c0053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 96
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget v3, p0, Lcom/wuyouwin/InputControlsFragment;->selectedProfileId:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/wuyouwin/InputControlsFragment;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    iget v4, p0, Lcom/wuyouwin/InputControlsFragment;->selectedProfileId:I

    invoke-virtual {v3, v4}, Lcom/wuyouwin/inputcontrols/InputControlsManager;->getProfile(I)Lcom/wuyouwin/inputcontrols/ControlsProfile;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/wuyouwin/InputControlsFragment;->currentProfile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 98
    const v3, 0x7f0900cf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 99
    .local v3, "sProfile":Landroid/widget/Spinner;
    invoke-direct {p0, v3}, Lcom/wuyouwin/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 101
    const v4, 0x7f0900a8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/widget/SeekBar;

    .line 102
    .local v4, "sbCursorSpeed":Lcom/wuyouwin/widget/SeekBar;
    new-instance v5, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/InputControlsFragment;)V

    invoke-virtual {v4, v5}, Lcom/wuyouwin/widget/SeekBar;->setOnValueChangeListener(Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;)V

    .line 109
    const v5, 0x7f090036

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 110
    .local v5, "cbDisableMouseInput":Landroid/widget/CheckBox;
    new-instance v6, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/wuyouwin/InputControlsFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    new-instance v6, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v4, v5, v0}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/widget/SeekBar;Landroid/widget/CheckBox;Landroid/view/View;)V

    iput-object v6, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    .line 129
    iget-object v6, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 131
    const v6, 0x7f0900ad

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/wuyouwin/widget/SeekBar;

    .line 132
    .local v6, "sbOverlayOpacity":Lcom/wuyouwin/widget/SeekBar;
    new-instance v7, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v7, v2}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda4;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v6, v7}, Lcom/wuyouwin/widget/SeekBar;->setOnValueChangeListener(Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;)V

    .line 133
    const-string v7, "overlay_opacity"

    const v8, 0x3f59999a    # 0.85f

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/wuyouwin/widget/SeekBar;->setValue(F)V

    .line 135
    const v7, 0x7f090009

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0, v1, v3}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v7, 0x7f090014

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, v1, v3}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v7, 0x7f090012

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0, v1, v3}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v7, 0x7f090028

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v8, p0, v1, v3}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v7, 0x7f09001c

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0, v1, v3}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v7, 0x7f090017

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, v1}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v7, 0x7f09000f

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v1}, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/InputControlsFragment;Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 269
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 270
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 271
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 71
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1000d2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 73
    return-void
.end method
