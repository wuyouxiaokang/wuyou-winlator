.class public final synthetic Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/contentdialog/ScreenEffectDialog;

.field public final synthetic f$1:Lcom/wuyouwin/renderer/effects/ColorEffect;

.field public final synthetic f$2:Lcom/wuyouwin/renderer/GLRenderer;

.field public final synthetic f$3:Lcom/wuyouwin/renderer/effects/FXAAEffect;

.field public final synthetic f$4:Lcom/wuyouwin/renderer/effects/CRTEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/contentdialog/ScreenEffectDialog;Lcom/wuyouwin/renderer/effects/ColorEffect;Lcom/wuyouwin/renderer/GLRenderer;Lcom/wuyouwin/renderer/effects/FXAAEffect;Lcom/wuyouwin/renderer/effects/CRTEffect;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/contentdialog/ScreenEffectDialog;

    iput-object p2, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/renderer/effects/ColorEffect;

    iput-object p3, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$2:Lcom/wuyouwin/renderer/GLRenderer;

    iput-object p4, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$3:Lcom/wuyouwin/renderer/effects/FXAAEffect;

    iput-object p5, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$4:Lcom/wuyouwin/renderer/effects/CRTEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/contentdialog/ScreenEffectDialog;

    iget-object v1, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/renderer/effects/ColorEffect;

    iget-object v2, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$2:Lcom/wuyouwin/renderer/GLRenderer;

    iget-object v3, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$3:Lcom/wuyouwin/renderer/effects/FXAAEffect;

    iget-object v4, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;->f$4:Lcom/wuyouwin/renderer/effects/CRTEffect;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wuyouwin/contentdialog/ScreenEffectDialog;->$r8$lambda$_z5jioc9ydgt8PdXs0OLouEge9E(Lcom/wuyouwin/contentdialog/ScreenEffectDialog;Lcom/wuyouwin/renderer/effects/ColorEffect;Lcom/wuyouwin/renderer/GLRenderer;Lcom/wuyouwin/renderer/effects/FXAAEffect;Lcom/wuyouwin/renderer/effects/CRTEffect;)V

    return-void
.end method
