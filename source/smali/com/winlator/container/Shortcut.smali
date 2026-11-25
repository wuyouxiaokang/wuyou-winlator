.class public Lcom/winlator/container/Shortcut;
.super Ljava/lang/Object;
.source "Shortcut.java"


# instance fields
.field public final container:Lcom/winlator/container/Container;

.field private final extraData:Lorg/json/JSONObject;

.field public final file:Ljava/io/File;

.field public final icon:Landroid/graphics/Bitmap;

.field public final iconFile:Ljava/io/File;

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final wmClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/winlator/container/Container;Ljava/io/File;)V
    .locals 20
    .param p1, "container"    # Lcom/winlator/container/Container;
    .param p2, "file"    # Ljava/io/File;

    .line 26
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    .line 27
    iput-object v2, v1, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    .line 28
    iput-object v3, v1, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    .line 30
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v5, ""

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/container/Shortcut;->name:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/winlator/container/Shortcut;->path:Ljava/lang/String;

    .line 33
    iput-object v0, v1, Lcom/winlator/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    .line 34
    iput-object v0, v1, Lcom/winlator/container/Shortcut;->iconFile:Ljava/io/File;

    .line 35
    iput-object v5, v1, Lcom/winlator/container/Shortcut;->wmClass:Ljava/lang/String;

    goto/16 :goto_6

    .line 38
    :cond_0
    const-string v0, ""

    .line 39
    .local v0, "execArgs":Ljava/lang/String;
    const/4 v6, 0x0

    .line 40
    .local v6, "icon":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 41
    .local v7, "iconFile":Ljava/io/File;
    const-string v8, ""

    .line 42
    .local v8, "wmClass":Ljava/lang/String;
    const-string v9, ""

    .line 44
    .local v9, "section":Ljava/lang/String;
    const/4 v10, 0x7

    new-array v10, v10, [S

    fill-array-data v10, :array_0

    .line 46
    .local v10, "iconSizes":[S
    invoke-static {v3, v4}, Lcom/winlator/core/FileUtils;->readLines(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    .end local v0    # "execArgs":Ljava/lang/String;
    .local v6, "execArgs":Ljava/lang/String;
    .local v7, "icon":Landroid/graphics/Bitmap;
    .local v8, "iconFile":Ljava/io/File;
    .local v9, "wmClass":Ljava/lang/String;
    .local v12, "section":Ljava/lang/String;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v13, -0x1

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 47
    .local v14, "line":Ljava/lang/String;
    const-string v0, "#"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "["

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    const-string v0, "]"

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move v2, v4

    move-object/from16 v18, v5

    .end local v12    # "section":Ljava/lang/String;
    .local v0, "section":Ljava/lang/String;
    goto/16 :goto_4

    .line 52
    .end local v0    # "section":Ljava/lang/String;
    .restart local v12    # "section":Ljava/lang/String;
    :cond_2
    const-string v0, "="

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 53
    .local v15, "index":I
    if-ne v15, v13, :cond_3

    goto :goto_0

    .line 54
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 55
    .local v13, "key":Ljava/lang/String;
    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "value":Ljava/lang/String;
    const-string v0, "Desktop Entry"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    const-string v0, "Exec"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v6, v4

    .line 59
    :cond_4
    const-string v0, "Icon"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    array-length v0, v10

    move-object/from16 v16, v8

    const/4 v8, 0x0

    .end local v8    # "iconFile":Ljava/io/File;
    .local v16, "iconFile":Ljava/io/File;
    :goto_1
    if-ge v8, v0, :cond_6

    move/from16 v17, v0

    aget-short v0, v10, v8

    .line 61
    .local v0, "iconSize":S
    new-instance v3, Ljava/io/File;

    move-object/from16 v18, v5

    invoke-virtual {v2, v0}, Lcom/winlator/container/Container;->getIconsDir(I)Ljava/io/File;

    move-result-object v5

    move/from16 v19, v0

    .end local v0    # "iconSize":S
    .local v19, "iconSize":S
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v16, v3

    .line 62
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 64
    move-object/from16 v8, v16

    const/4 v2, 0x1

    goto :goto_2

    .line 62
    :cond_5
    nop

    .line 60
    .end local v19    # "iconSize":S
    const/4 v2, 0x1

    add-int/2addr v8, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, v17

    move-object/from16 v5, v18

    goto :goto_1

    :cond_6
    move-object/from16 v18, v5

    const/4 v2, 0x1

    move-object/from16 v8, v16

    goto :goto_2

    .line 59
    .end local v16    # "iconFile":Ljava/io/File;
    .restart local v8    # "iconFile":Ljava/io/File;
    :cond_7
    move-object/from16 v18, v5

    const/4 v2, 0x1

    .line 68
    :goto_2
    const-string v0, "StartupWMClass"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v4

    move-object v9, v0

    .end local v9    # "wmClass":Ljava/lang/String;
    .local v0, "wmClass":Ljava/lang/String;
    goto :goto_4

    .line 70
    .end local v0    # "wmClass":Ljava/lang/String;
    .restart local v9    # "wmClass":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v5

    const/4 v2, 0x1

    const-string v0, "Extra Data"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    :try_start_0
    iget-object v0, v1, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    .line 77
    .end local v4    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "index":I
    :cond_9
    :goto_4
    move-object/from16 v3, p2

    move v4, v2

    move-object/from16 v5, v18

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 79
    :cond_a
    move-object/from16 v18, v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/container/Shortcut;->name:Ljava/lang/String;

    .line 80
    iput-object v7, v1, Lcom/winlator/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    .line 81
    iput-object v8, v1, Lcom/winlator/container/Shortcut;->iconFile:Ljava/io/File;

    .line 82
    iput-object v9, v1, Lcom/winlator/container/Shortcut;->wmClass:Ljava/lang/String;

    .line 84
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "wine "

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/core/StringUtils;->unescapeDOSPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_b
    move-object/from16 v5, v18

    :goto_5
    move-object v0, v5

    .line 85
    .local v0, "path":Ljava/lang/String;
    const-string v2, "start.exe "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "index":I
    if-eq v2, v13, :cond_c

    add-int/lit8 v3, v2, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_c
    iput-object v0, v1, Lcom/winlator/container/Shortcut;->path:Ljava/lang/String;

    .line 89
    iget-object v3, v1, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/winlator/container/Container;->checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V

    .line 91
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v6    # "execArgs":Ljava/lang/String;
    .end local v7    # "icon":Landroid/graphics/Bitmap;
    .end local v8    # "iconFile":Ljava/io/File;
    .end local v9    # "wmClass":Ljava/lang/String;
    .end local v10    # "iconSizes":[S
    .end local v12    # "section":Ljava/lang/String;
    :goto_6
    return-void

    nop

    :array_0
    .array-data 2
        0x40s
        0x30s
        0x20s
        0x18s
        0x10s
        0x80s
        0x100s
    .end array-data
.end method


# virtual methods
.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 94
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    goto :goto_1

    .line 99
    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 101
    :goto_1
    nop

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    return-object p2
.end method

.method public getLinkFile()Ljava/io/File;
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/winlator/container/Shortcut;->isLinkPath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/container/Shortcut;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-static {v1, v2}, Lcom/winlator/core/WineUtils;->dosToUnixPath(Ljava/lang/String;Lcom/winlator/container/Container;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".desktop"

    const-string v2, ".lnk"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public isLinkPath()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/winlator/container/Shortcut;->path:Ljava/lang/String;

    const-string v1, ".lnk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/container/Shortcut;->path:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 108
    if-eqz p2, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    nop

    .line 114
    return-void
.end method

.method public remove()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/container/Shortcut;->getLinkFile()Ljava/io/File;

    move-result-object v0

    .line 158
    .local v0, "linkFile":Ljava/io/File;
    iget-object v1, p0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/winlator/container/Shortcut;->iconFile:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/winlator/container/Shortcut;->iconFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 160
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    .end local v0    # "linkFile":Ljava/io/File;
    :cond_2
    :goto_0
    return-void
.end method

.method public saveData()V
    .locals 6

    .line 117
    const-string v0, "[Desktop Entry]\n"

    .line 118
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/winlator/core/FileUtils;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    nop

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    .local v2, "line":Ljava/lang/String;
    const-string v4, "[Extra Data]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    const-string v4, "[Desktop Entry]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 123
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[Extra Data]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/winlator/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 131
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_3

    .line 132
    .end local v2    # "key":Ljava/lang/String;
    :goto_4
    goto :goto_2

    .line 135
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 136
    return-void
.end method
