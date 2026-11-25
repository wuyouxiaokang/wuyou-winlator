.class public final Lcom/winlator/win32/MSLink$LinkInfo;
.super Ljava/lang/Object;
.source "MSLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/win32/MSLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkInfo"
.end annotation


# instance fields
.field public arguments:Ljava/lang/String;

.field public fileSize:I

.field public iconIndex:I

.field public iconLocation:Ljava/lang/String;

.field public isDirectory:Z

.field public showCommand:I

.field public targetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/winlator/win32/MSLink$LinkInfo;->showCommand:I

    return-void
.end method
