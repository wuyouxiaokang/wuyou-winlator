.class Lcom/winlator/xserver/DesktopHelper$2;
.super Ljava/lang/Object;
.source "DesktopHelper.java"

# interfaces
.implements Lcom/winlator/xserver/WindowManager$OnWindowModificationListener;


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

    .line 21
    iput-object p1, p0, Lcom/winlator/xserver/DesktopHelper$2;->val$xServer:Lcom/winlator/xserver/XServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapWindow(Lcom/winlator/xserver/Window;)V
    .locals 1
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 24
    iget-object v0, p0, Lcom/winlator/xserver/DesktopHelper$2;->val$xServer:Lcom/winlator/xserver/XServer;

    invoke-static {v0, p1}, Lcom/winlator/xserver/DesktopHelper;->access$100(Lcom/winlator/xserver/XServer;Lcom/winlator/xserver/Window;)V

    .line 25
    return-void
.end method
