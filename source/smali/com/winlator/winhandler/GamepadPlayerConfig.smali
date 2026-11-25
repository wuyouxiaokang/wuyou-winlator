.class public Lcom/winlator/winhandler/GamepadPlayerConfig;
.super Ljava/lang/Object;
.source "GamepadPlayerConfig.java"


# instance fields
.field public final mode:B

.field public final name:Ljava/lang/String;

.field public final vibration:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "values"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v0, p1}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 14
    .local v0, "config":Lcom/winlator/core/KeyValueSet;
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/winlator/winhandler/GamepadPlayerConfig;->mode:B

    .line 15
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/winhandler/GamepadPlayerConfig;->name:Ljava/lang/String;

    .line 16
    const-string v1, "vibration"

    invoke-virtual {v0, v1}, Lcom/winlator/core/KeyValueSet;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/winlator/winhandler/GamepadPlayerConfig;->vibration:Z

    .line 17
    return-void
.end method
