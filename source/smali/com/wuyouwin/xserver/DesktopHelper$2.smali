.class Lcom/wuyouwin/xserver/DesktopHelper$2;
.super Ljava/lang/Object;
.source "DesktopHelper.java"

# interfaces
.implements Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;


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

    .line 21
    iput-object p1, p0, Lcom/wuyouwin/xserver/DesktopHelper$2;->val$xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 1
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 24
    iget-object v0, p0, Lcom/wuyouwin/xserver/DesktopHelper$2;->val$xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-static {v0, p1}, Lcom/wuyouwin/xserver/DesktopHelper;->access$100(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/Window;)V

    .line 25
    return-void
.end method
