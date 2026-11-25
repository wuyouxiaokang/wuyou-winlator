.class public final synthetic Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/renderer/GLRenderer;

.field public final synthetic f$1:Lcom/winlator/xserver/Drawable;

.field public final synthetic f$2:Lcom/winlator/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/renderer/GLRenderer;Lcom/winlator/xserver/Drawable;Lcom/winlator/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/renderer/GLRenderer;

    iput-object p2, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/xserver/Drawable;

    iput-object p3, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$2:Lcom/winlator/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/renderer/GLRenderer;

    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/xserver/Drawable;

    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$2:Lcom/winlator/core/Callback;

    invoke-static {v0, v1, v2}, Lcom/winlator/renderer/GLRenderer;->$r8$lambda$4mojsVTINrVDEnjdhP18m-n_AGQ(Lcom/winlator/renderer/GLRenderer;Lcom/winlator/xserver/Drawable;Lcom/winlator/core/Callback;)V

    return-void
.end method
