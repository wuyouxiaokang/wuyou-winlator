.class public final synthetic Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/xserver/extensions/PresentExtension;

.field public final synthetic f$1:Lcom/wuyouwin/xserver/Window;

.field public final synthetic f$2:Lcom/wuyouwin/xserver/Pixmap;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/xserver/extensions/PresentExtension;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/xserver/extensions/PresentExtension;

    iput-object p2, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$1:Lcom/wuyouwin/xserver/Window;

    iput-object p3, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$2:Lcom/wuyouwin/xserver/Pixmap;

    iput p4, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/xserver/extensions/PresentExtension;

    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$1:Lcom/wuyouwin/xserver/Window;

    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$2:Lcom/wuyouwin/xserver/Pixmap;

    iget v3, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->$r8$lambda$q_f8jc6JpLFt-12HVSOwOkW5lUQ(Lcom/wuyouwin/xserver/extensions/PresentExtension;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V

    return-void
.end method
