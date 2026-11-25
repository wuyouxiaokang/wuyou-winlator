.class public Lcom/wuyouwin/xconnector/ConnectedClient;
.super Ljava/lang/Object;
.source "ConnectedClient.java"


# instance fields
.field public final fd:I

.field protected inputStream:Lcom/wuyouwin/xconnector/XInputStream;

.field protected final nativePtr:J

.field protected outputStream:Lcom/wuyouwin/xconnector/XOutputStream;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .param p1, "nativePtr"    # J
    .param p3, "fd"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->nativePtr:J

    .line 12
    iput p3, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->fd:I

    .line 13
    return-void
.end method


# virtual methods
.method public createInputStream(I)V
    .locals 2
    .param p1, "initialInputBufferCapacity"    # I

    .line 16
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 17
    new-instance v0, Lcom/wuyouwin/xconnector/XInputStream;

    iget v1, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->fd:I

    invoke-direct {v0, v1, p1}, Lcom/wuyouwin/xconnector/XInputStream;-><init>(II)V

    iput-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    .line 19
    :cond_0
    return-void
.end method

.method public createOutputStream(I)V
    .locals 2
    .param p1, "initialOutputBufferCapacity"    # I

    .line 22
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->outputStream:Lcom/wuyouwin/xconnector/XOutputStream;

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 23
    new-instance v0, Lcom/wuyouwin/xconnector/XOutputStream;

    iget v1, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->fd:I

    invoke-direct {v0, v1, p1}, Lcom/wuyouwin/xconnector/XOutputStream;-><init>(II)V

    iput-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->outputStream:Lcom/wuyouwin/xconnector/XOutputStream;

    .line 25
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XInputStream;->destroy()V

    .line 46
    iput-object v1, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->outputStream:Lcom/wuyouwin/xconnector/XOutputStream;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->outputStream:Lcom/wuyouwin/xconnector/XOutputStream;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XOutputStream;->destroy()V

    .line 51
    iput-object v1, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->outputStream:Lcom/wuyouwin/xconnector/XOutputStream;

    .line 53
    :cond_1
    return-void
.end method

.method public getInputStream()Lcom/wuyouwin/xconnector/XInputStream;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    return-object v0
.end method

.method public getOutputStream()Lcom/wuyouwin/xconnector/XOutputStream;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->outputStream:Lcom/wuyouwin/xconnector/XOutputStream;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->tag:Ljava/lang/Object;

    .line 41
    return-void
.end method
