.class public Lcom/wuyouwin/win32/WinVersions$WinVersion;
.super Ljava/lang/Object;
.source "WinVersions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/win32/WinVersions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WinVersion"
.end annotation


# instance fields
.field public final buildNumber:I

.field public final csdVersion:Ljava/lang/String;

.field public final currentVersion:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final majorVersion:B

.field public final minorVersion:B

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "currentVersion"    # Ljava/lang/String;
    .param p4, "majorVersion"    # I
    .param p5, "minorVersion"    # I
    .param p6, "buildNumber"    # I
    .param p7, "csdVersion"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/wuyouwin/win32/WinVersions$WinVersion;->version:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/wuyouwin/win32/WinVersions$WinVersion;->description:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/wuyouwin/win32/WinVersions$WinVersion;->currentVersion:Ljava/lang/String;

    .line 31
    int-to-byte v0, p4

    iput-byte v0, p0, Lcom/wuyouwin/win32/WinVersions$WinVersion;->majorVersion:B

    .line 32
    int-to-byte v0, p5

    iput-byte v0, p0, Lcom/wuyouwin/win32/WinVersions$WinVersion;->minorVersion:B

    .line 33
    iput p6, p0, Lcom/wuyouwin/win32/WinVersions$WinVersion;->buildNumber:I

    .line 34
    iput-object p7, p0, Lcom/wuyouwin/win32/WinVersions$WinVersion;->csdVersion:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/wuyouwin/win32/WinVersions$WinVersion;->description:Ljava/lang/String;

    return-object v0
.end method
