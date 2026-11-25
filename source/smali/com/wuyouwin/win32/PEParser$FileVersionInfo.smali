.class public Lcom/wuyouwin/win32/PEParser$FileVersionInfo;
.super Ljava/lang/Object;
.source "PEParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/win32/PEParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileVersionInfo"
.end annotation


# instance fields
.field public Comments:Ljava/lang/String;

.field public CompanyName:Ljava/lang/String;

.field public FileDescription:Ljava/lang/String;

.field public FileVersion:Ljava/lang/String;

.field public InternalName:Ljava/lang/String;

.field public LegalCopyright:Ljava/lang/String;

.field public LegalTrademarks:Ljava/lang/String;

.field public OriginalFilename:Ljava/lang/String;

.field public PrivateBuild:Ljava/lang/String;

.field public ProductName:Ljava/lang/String;

.field public ProductVersion:Ljava/lang/String;

.field public SpecialBuildprivate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->Comments:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->CompanyName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->FileDescription:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->FileVersion:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->InternalName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->LegalCopyright:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->LegalTrademarks:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->OriginalFilename:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->PrivateBuild:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->ProductName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->ProductVersion:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$FileVersionInfo;->SpecialBuildprivate:Ljava/lang/String;

    return-void
.end method
