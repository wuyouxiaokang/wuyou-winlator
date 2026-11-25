.class Lcom/wuyouwin/xserver/DesktopHelper$1;
.super Ljava/lang/Object;
.source "DesktopHelper.java"

# interfaces
.implements Lcom/wuyouwin/xserver/Pointer$OnPointerMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/xserver/DesktopHelper;->attachTo(Lcom/wuyouwin/xserver/XServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$xServer:Lcom/wuyouwin/xserver/XServer;


# direct methods
.method constructor <init>(Lcom/wuyouwin/xserver/XServer;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/wuyouwin/xserver/DesktopHelper$1;->val$xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V
    .locals 1
    .param p1, "button"    # Lcom/wuyouwin/xserver/Pointer$Button;

    .line 17
    iget-object v0, p0, Lcom/wuyouwin/xserver/DesktopHelper$1;->val$xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-static {v0}, Lcom/wuyouwin/xserver/DesktopHelper;->access$000(Lcom/wuyouwin/xserver/XServer;)V

    .line 18
    return-void
.end method
