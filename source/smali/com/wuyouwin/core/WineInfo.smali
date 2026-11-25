.class public Lcom/wuyouwin/core/WineInfo;
.super Ljava/lang/Object;
.source "WineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wuyouwin/core/WineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_WINE_INFO:Lcom/wuyouwin/core/WineInfo;

.field private static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field public final path:Ljava/lang/String;

.field public final subversion:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/wuyouwin/core/WineInfo;

    const-string v1, "10.10"

    invoke-direct {v0, v1}, Lcom/wuyouwin/core/WineInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/wuyouwin/core/WineInfo;->MAIN_WINE_INFO:Lcom/wuyouwin/core/WineInfo;

    .line 18
    const-string v0, "^wine\\-([0-9\\.]+)\\-?([0-9\\.]+)?\\-?(x86|x86_64)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/core/WineInfo;->pattern:Ljava/util/regex/Pattern;

    .line 60
    new-instance v0, Lcom/wuyouwin/core/WineInfo$1;

    invoke-direct {v0}, Lcom/wuyouwin/core/WineInfo$1;-><init>()V

    sput-object v0, Lcom/wuyouwin/core/WineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/core/WineInfo;->version:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/core/WineInfo;->subversion:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/core/WineInfo;->path:Ljava/lang/String;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/wuyouwin/core/WineInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/wuyouwin/core/WineInfo$1;

    .line 15
    invoke-direct {p0, p1}, Lcom/wuyouwin/core/WineInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/wuyouwin/core/WineInfo;->version:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/core/WineInfo;->subversion:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/wuyouwin/core/WineInfo;->path:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "subversion"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/wuyouwin/core/WineInfo;->version:Ljava/lang/String;

    .line 31
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/wuyouwin/core/WineInfo;->subversion:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/wuyouwin/core/WineInfo;->path:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static fromIdentifier(Landroid/content/Context;Ljava/lang/String;)Lcom/wuyouwin/core/WineInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identifier"    # Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/wuyouwin/core/WineInfo;->MAIN_WINE_INFO:Lcom/wuyouwin/core/WineInfo;

    invoke-virtual {v0}, Lcom/wuyouwin/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wuyouwin/core/WineInfo;->MAIN_WINE_INFO:Lcom/wuyouwin/core/WineInfo;

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/wuyouwin/core/WineInfo;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 81
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-static {p0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wuyouwin/xenvironment/RootFS;->getInstalledWineDir()Ljava/io/File;

    move-result-object v1

    .line 83
    .local v1, "installedWineDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Lcom/wuyouwin/core/WineInfo;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/wuyouwin/core/WineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 86
    .end local v1    # "installedWineDir":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/wuyouwin/core/WineInfo;->MAIN_WINE_INFO:Lcom/wuyouwin/core/WineInfo;

    return-object v1
.end method

.method public static isMainWineVersion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "wineVersion"    # Ljava/lang/String;

    .line 90
    if-eqz p0, :cond_0

    sget-object v0, Lcom/wuyouwin/core/WineInfo;->MAIN_WINE_INFO:Lcom/wuyouwin/core/WineInfo;

    invoke-virtual {v0}, Lcom/wuyouwin/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public fullVersion()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wuyouwin/core/WineInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wuyouwin/core/WineInfo;->subversion:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wuyouwin/core/WineInfo;->subversion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public identifier()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wine-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wuyouwin/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/wuyouwin/core/WineInfo;->MAIN_WINE_INFO:Lcom/wuyouwin/core/WineInfo;

    if-ne p0, v1, :cond_0

    const-string v1, "-custom"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wuyouwin/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/wuyouwin/core/WineInfo;->MAIN_WINE_INFO:Lcom/wuyouwin/core/WineInfo;

    if-ne p0, v1, :cond_0

    const-string v1, " (Custom)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Lcom/wuyouwin/core/WineInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/wuyouwin/core/WineInfo;->subversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/wuyouwin/core/WineInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
