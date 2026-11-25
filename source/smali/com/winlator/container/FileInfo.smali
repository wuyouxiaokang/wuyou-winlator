.class public Lcom/winlator/container/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/container/FileInfo$Type;
    }
.end annotation


# instance fields
.field private final container:Lcom/winlator/container/Container;

.field private linkInfo:Lcom/winlator/win32/MSLink$LinkInfo;

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final type:Lcom/winlator/container/FileInfo$Type;


# direct methods
.method public constructor <init>(Lcom/winlator/container/Container;Ljava/lang/String;Lcom/winlator/container/FileInfo$Type;)V
    .locals 1
    .param p1, "container"    # Lcom/winlator/container/Container;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/winlator/container/FileInfo$Type;

    .line 21
    invoke-static {p2}, Lcom/winlator/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/winlator/container/FileInfo;-><init>(Lcom/winlator/container/Container;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/container/FileInfo$Type;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/winlator/container/Container;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/container/FileInfo$Type;)V
    .locals 1
    .param p1, "container"    # Lcom/winlator/container/Container;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/winlator/container/FileInfo$Type;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/winlator/container/FileInfo;->container:Lcom/winlator/container/Container;

    .line 26
    iput-object p2, p0, Lcom/winlator/container/FileInfo;->name:Ljava/lang/String;

    .line 27
    invoke-static {p3}, Lcom/winlator/core/StringUtils;->removeEndSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/container/FileInfo;->path:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/winlator/container/FileInfo;->type:Lcom/winlator/container/FileInfo$Type;

    .line 29
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/winlator/container/FileInfo;)I
    .locals 6
    .param p1, "other"    # Lcom/winlator/container/FileInfo;

    .line 89
    iget-object v0, p1, Lcom/winlator/container/FileInfo;->type:Lcom/winlator/container/FileInfo$Type;

    sget-object v1, Lcom/winlator/container/FileInfo$Type;->DRIVE:Lcom/winlator/container/FileInfo$Type;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/winlator/container/FileInfo;->type:Lcom/winlator/container/FileInfo$Type;

    sget-object v4, Lcom/winlator/container/FileInfo$Type;->DRIVE:Lcom/winlator/container/FileInfo$Type;

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    .line 90
    .local v0, "value":I
    if-nez v0, :cond_4

    iget-object v1, p1, Lcom/winlator/container/FileInfo;->type:Lcom/winlator/container/FileInfo$Type;

    sget-object v4, Lcom/winlator/container/FileInfo$Type;->DIRECTORY:Lcom/winlator/container/FileInfo$Type;

    if-ne v1, v4, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iget-object v4, p0, Lcom/winlator/container/FileInfo;->type:Lcom/winlator/container/FileInfo$Type;

    sget-object v5, Lcom/winlator/container/FileInfo$Type;->DIRECTORY:Lcom/winlator/container/FileInfo$Type;

    if-ne v4, v5, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    .line 91
    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/winlator/container/FileInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/winlator/container/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 92
    :cond_5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/winlator/container/FileInfo;

    invoke-virtual {p0, p1}, Lcom/winlator/container/FileInfo;->compareTo(Lcom/winlator/container/FileInfo;)I

    move-result p1

    return p1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/winlator/container/FileInfo;->getLinkinfo()Lcom/winlator/win32/MSLink$LinkInfo;

    move-result-object v0

    .line 84
    .local v0, "linkInfo":Lcom/winlator/win32/MSLink$LinkInfo;
    iget-object v1, p0, Lcom/winlator/container/FileInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/winlator/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getItemCount()I
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/winlator/container/FileInfo;->getLinkFile()Ljava/io/File;

    move-result-object v0

    .line 55
    .local v0, "linkFile":Ljava/io/File;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/winlator/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v1

    .line 56
    .local v1, "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "items":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public getLinkFile()Ljava/io/File;
    .locals 4

    .line 65
    invoke-virtual {p0}, Lcom/winlator/container/FileInfo;->getLinkinfo()Lcom/winlator/win32/MSLink$LinkInfo;

    move-result-object v0

    .line 66
    .local v0, "linkInfo":Lcom/winlator/win32/MSLink$LinkInfo;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/winlator/container/FileInfo;->container:Lcom/winlator/container/Container;

    invoke-static {v2, v3}, Lcom/winlator/core/WineUtils;->dosToUnixPath(Ljava/lang/String;Lcom/winlator/container/Container;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getLinkinfo()Lcom/winlator/win32/MSLink$LinkInfo;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/winlator/container/FileInfo;->linkInfo:Lcom/winlator/win32/MSLink$LinkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/container/FileInfo;->linkInfo:Lcom/winlator/win32/MSLink$LinkInfo;

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/winlator/container/FileInfo;->name:Ljava/lang/String;

    const-string v1, ".lnk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/winlator/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/win32/MSLink;->extractLinkInfo(Ljava/io/File;)Lcom/winlator/win32/MSLink$LinkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/container/FileInfo;->linkInfo:Lcom/winlator/win32/MSLink$LinkInfo;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/winlator/container/FileInfo;->linkInfo:Lcom/winlator/win32/MSLink$LinkInfo;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/winlator/container/FileInfo;->type:Lcom/winlator/container/FileInfo$Type;

    sget-object v1, Lcom/winlator/container/FileInfo$Type;->FILE:Lcom/winlator/container/FileInfo$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/winlator/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public list()Ljava/util/ArrayList;
    .locals 11

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/container/FileInfo;>;"
    invoke-virtual {p0}, Lcom/winlator/container/FileInfo;->getLinkFile()Ljava/io/File;

    move-result-object v1

    .line 34
    .local v1, "linkFile":Ljava/io/File;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/winlator/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v2

    .line 36
    .local v2, "parent":Ljava/io/File;
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 38
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 39
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    nop

    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 40
    .local v6, "file":Ljava/io/File;
    new-instance v7, Lcom/winlator/container/FileInfo;

    iget-object v8, p0, Lcom/winlator/container/FileInfo;->container:Lcom/winlator/container/Container;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/winlator/container/FileInfo$Type;->DIRECTORY:Lcom/winlator/container/FileInfo$Type;

    goto :goto_2

    :cond_1
    sget-object v10, Lcom/winlator/container/FileInfo$Type;->FILE:Lcom/winlator/container/FileInfo$Type;

    :goto_2
    invoke-direct {v7, v8, v9, v10}, Lcom/winlator/container/FileInfo;-><init>(Lcom/winlator/container/Container;Ljava/lang/String;Lcom/winlator/container/FileInfo$Type;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v6    # "file":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 45
    .end local v3    # "files":[Ljava/io/File;
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 46
    return-object v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newName"    # Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/winlator/core/StringUtils;->clearReservedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/winlator/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v0

    .line 78
    .local v0, "from":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v1, "to":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public toFile()Ljava/io/File;
    .locals 2

    .line 61
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/container/FileInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
