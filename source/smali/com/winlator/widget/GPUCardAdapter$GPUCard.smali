.class public Lcom/winlator/widget/GPUCardAdapter$GPUCard;
.super Ljava/lang/Object;
.source "GPUCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/widget/GPUCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPUCard"
.end annotation


# instance fields
.field public final deviceId:I

.field public final name:Ljava/lang/String;

.field public final vendorId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "deviceId"    # I
    .param p3, "vendorId"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->name:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->deviceId:I

    .line 27
    iput p3, p0, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->vendorId:I

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->name:Ljava/lang/String;

    return-object v0
.end method
