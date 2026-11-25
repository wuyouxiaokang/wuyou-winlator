.class public Lcom/winlator/box64/Box64Preset;
.super Ljava/lang/Object;
.source "Box64Preset.java"


# instance fields
.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/winlator/box64/Box64Preset;->id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/winlator/box64/Box64Preset;->name:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public isCustom()Z
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/winlator/box64/Box64Preset;->id:Ljava/lang/String;

    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/winlator/box64/Box64Preset;->name:Ljava/lang/String;

    return-object v0
.end method
