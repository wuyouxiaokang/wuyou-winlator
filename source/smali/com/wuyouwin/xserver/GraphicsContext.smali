.class public Lcom/wuyouwin/xserver/GraphicsContext;
.super Lcom/wuyouwin/xserver/XResource;
.source "GraphicsContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/xserver/GraphicsContext$Function;,
        Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;
    }
.end annotation


# instance fields
.field private background:I

.field public final drawable:Lcom/wuyouwin/xserver/Drawable;

.field private foreground:I

.field private function:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field private lineWidth:I

.field private planeMask:I

.field private subwindowMode:Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;


# direct methods
.method public constructor <init>(ILcom/wuyouwin/xserver/Drawable;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "drawable"    # Lcom/wuyouwin/xserver/Drawable;

    .line 38
    invoke-direct {p0, p1}, Lcom/wuyouwin/xserver/XResource;-><init>(I)V

    .line 30
    sget-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->COPY:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    iput-object v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->function:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    .line 31
    const v0, 0xffffff

    iput v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->background:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->foreground:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->lineWidth:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->planeMask:I

    .line 35
    sget-object v0, Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;->CLIP_BY_CHILDREN:Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;

    iput-object v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->subwindowMode:Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;

    .line 39
    iput-object p2, p0, Lcom/wuyouwin/xserver/GraphicsContext;->drawable:Lcom/wuyouwin/xserver/Drawable;

    .line 40
    return-void
.end method


# virtual methods
.method public getBackground()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->background:I

    return v0
.end method

.method public getForeground()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->foreground:I

    return v0
.end method

.method public getFunction()Lcom/wuyouwin/xserver/GraphicsContext$Function;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->function:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    return-object v0
.end method

.method public getLineWidth()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/wuyouwin/xserver/GraphicsContext;->lineWidth:I

    return v0
.end method

.method public setBackground(I)V
    .locals 0
    .param p1, "background"    # I

    .line 55
    iput p1, p0, Lcom/wuyouwin/xserver/GraphicsContext;->background:I

    .line 56
    return-void
.end method

.method public setForeground(I)V
    .locals 0
    .param p1, "foreground"    # I

    .line 47
    iput p1, p0, Lcom/wuyouwin/xserver/GraphicsContext;->foreground:I

    .line 48
    return-void
.end method

.method public setFunction(Lcom/wuyouwin/xserver/GraphicsContext$Function;)V
    .locals 0
    .param p1, "function"    # Lcom/wuyouwin/xserver/GraphicsContext$Function;

    .line 79
    iput-object p1, p0, Lcom/wuyouwin/xserver/GraphicsContext;->function:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    .line 80
    return-void
.end method

.method public setLineWidth(I)V
    .locals 0
    .param p1, "lineWidth"    # I

    .line 63
    iput p1, p0, Lcom/wuyouwin/xserver/GraphicsContext;->lineWidth:I

    .line 64
    return-void
.end method

.method public setPlaneMask(I)V
    .locals 0
    .param p1, "planeMask"    # I

    .line 71
    iput p1, p0, Lcom/wuyouwin/xserver/GraphicsContext;->planeMask:I

    .line 72
    return-void
.end method

.method public setSubwindowMode(Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;)V
    .locals 0
    .param p1, "subwindowMode"    # Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;

    .line 87
    iput-object p1, p0, Lcom/wuyouwin/xserver/GraphicsContext;->subwindowMode:Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;

    .line 88
    return-void
.end method
