.class public Lcom/winlator/container/Drive;
.super Ljava/lang/Object;
.source "Drive.java"


# instance fields
.field public letter:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "letter"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/winlator/container/Drive;->letter:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/winlator/container/Drive;->path:Ljava/lang/String;

    .line 10
    return-void
.end method
