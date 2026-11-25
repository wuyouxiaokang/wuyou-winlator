.class Lcom/winlator/xserver/DesktopHelper$1;
.super Ljava/lang/Object;
.source "DesktopHelper.java"

# interfaces
.implements Lcom/winlator/xserver/Pointer$OnPointerMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/xserver/DesktopHelper;->attachTo(Lcom/winlator/xserver/XServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$xServer:Lcom/winlator/xserver/XServer;


# direct methods
.method constructor <init>(Lcom/winlator/xserver/XServer;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/winlator/xserver/DesktopHelper$1;->val$xServer:Lcom/winlator/xserver/XServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerButtonPress(Lcom/winlator/xserver/Pointer$Button;)V
    .locals 1
    .param p1, "button"    # Lcom/winlator/xserver/Pointer$Button;

    .line 17
    iget-object v0, p0, Lcom/winlator/xserver/DesktopHelper$1;->val$xServer:Lcom/winlator/xserver/XServer;

    invoke-static {v0}, Lcom/winlator/xserver/DesktopHelper;->access$000(Lcom/winlator/xserver/XServer;)V

    .line 18
    return-void
.end method
