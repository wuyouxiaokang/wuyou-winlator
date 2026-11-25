.class public Lcom/wuyouwin/core/NetworkHelper$IFAddress;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/core/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IFAddress"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public family:I

.field public flags:I

.field public name:Ljava/lang/String;

.field public netmask:Ljava/lang/String;

.field public scopeId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->name:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->flags:I

    .line 25
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->family:I

    .line 26
    iput v0, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->scopeId:I

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->address:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->netmask:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->flags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->family:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->scopeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wuyouwin/core/NetworkHelper$IFAddress;->netmask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
