.class public Lcom/winlator/winhandler/GamepadHandler$GamepadModel;
.super Ljava/lang/Object;
.source "GamepadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/winhandler/GamepadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GamepadModel"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final productId:S

.field public final vendorId:S


# direct methods
.method public constructor <init>(Ljava/lang/String;SS)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vendorId"    # S
    .param p3, "productId"    # S

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->name:Ljava/lang/String;

    .line 52
    iput-short p2, p0, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->vendorId:S

    .line 53
    iput-short p3, p0, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->productId:S

    .line 54
    return-void
.end method


# virtual methods
.method public identifier()Ljava/lang/String;
    .locals 3

    .line 57
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-short v1, p0, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->vendorId:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget-short v2, p0, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->productId:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "VID_%04X&PID_%04X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->name:Ljava/lang/String;

    return-object v0
.end method
