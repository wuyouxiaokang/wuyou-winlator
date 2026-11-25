.class public Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
.super Ljava/lang/Object;
.source "ShaderMaterial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/renderer/material/ShaderMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uniform"
.end annotation


# instance fields
.field public location:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;->location:I

    .line 15
    iput-object p1, p0, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;->name:Ljava/lang/String;

    .line 16
    return-void
.end method
