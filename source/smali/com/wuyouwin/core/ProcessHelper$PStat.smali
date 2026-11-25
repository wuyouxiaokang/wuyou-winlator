.class public Lcom/wuyouwin/core/ProcessHelper$PStat;
.super Ljava/lang/Object;
.source "ProcessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/core/ProcessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PStat"
.end annotation


# instance fields
.field public guestProcess:Z

.field public name:Ljava/lang/String;

.field public parentPID:I

.field public pid:I

.field public shortName:Ljava/lang/String;

.field public state:Lcom/wuyouwin/core/ProcessHelper$PState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    .line 33
    const-string v1, ""

    iput-object v1, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->shortName:Ljava/lang/String;

    .line 35
    sget-object v1, Lcom/wuyouwin/core/ProcessHelper$PState;->OTHER:Lcom/wuyouwin/core/ProcessHelper$PState;

    iput-object v1, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->state:Lcom/wuyouwin/core/ProcessHelper$PState;

    .line 36
    iput v0, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->parentPID:I

    .line 37
    iput-boolean v0, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->guestProcess:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->state:Lcom/wuyouwin/core/ProcessHelper$PState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->parentPID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/wuyouwin/core/ProcessHelper$PStat;->guestProcess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
