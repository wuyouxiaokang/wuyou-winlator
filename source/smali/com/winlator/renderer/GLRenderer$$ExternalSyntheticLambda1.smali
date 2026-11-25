.class public final synthetic Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/renderer/GLRenderer;

.field public final synthetic f$1:Lcom/winlator/xserver/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/renderer/GLRenderer;Lcom/winlator/xserver/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/renderer/GLRenderer;

    iput-object p2, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/winlator/xserver/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/renderer/GLRenderer;

    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/winlator/xserver/Window;

    invoke-static {v0, v1}, Lcom/winlator/renderer/GLRenderer;->$r8$lambda$BbDFjtB0fvAVQk-uwtCPYwtyYqc(Lcom/winlator/renderer/GLRenderer;Lcom/winlator/xserver/Window;)V

    return-void
.end method
