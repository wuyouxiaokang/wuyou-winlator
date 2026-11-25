.class public Lcom/winlator/xserver/Visual;
.super Ljava/lang/Object;
.source "Visual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/xserver/Visual$Type;
    }
.end annotation


# instance fields
.field public final bitsPerRGBValue:B

.field public final blueMask:I

.field public final colormapEntries:S

.field public final depth:B

.field public final displayable:Z

.field public final greenMask:I

.field public final id:I

.field public final redMask:I

.field public final type:Lcom/winlator/xserver/Visual$Type;


# direct methods
.method public constructor <init>(IZIIIII)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "displayable"    # Z
    .param p3, "depth"    # I
    .param p4, "bitsPerRGBValue"    # I
    .param p5, "redMask"    # I
    .param p6, "greenMask"    # I
    .param p7, "blueMask"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/winlator/xserver/Visual$Type;->TRUE_COLOR:Lcom/winlator/xserver/Visual$Type;

    iput-object v0, p0, Lcom/winlator/xserver/Visual;->type:Lcom/winlator/xserver/Visual$Type;

    .line 10
    const/16 v0, 0x100

    iput-short v0, p0, Lcom/winlator/xserver/Visual;->colormapEntries:S

    .line 16
    iput p1, p0, Lcom/winlator/xserver/Visual;->id:I

    .line 17
    iput-boolean p2, p0, Lcom/winlator/xserver/Visual;->displayable:Z

    .line 18
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/winlator/xserver/Visual;->depth:B

    .line 19
    int-to-byte v0, p4

    iput-byte v0, p0, Lcom/winlator/xserver/Visual;->bitsPerRGBValue:B

    .line 20
    iput p5, p0, Lcom/winlator/xserver/Visual;->redMask:I

    .line 21
    iput p6, p0, Lcom/winlator/xserver/Visual;->greenMask:I

    .line 22
    iput p7, p0, Lcom/winlator/xserver/Visual;->blueMask:I

    .line 23
    return-void
.end method
