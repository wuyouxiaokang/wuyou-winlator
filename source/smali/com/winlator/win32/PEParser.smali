.class public Lcom/winlator/win32/PEParser;
.super Ljava/lang/Object;
.source "PEParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/win32/PEParser$ImageResourceDirectory;,
        Lcom/winlator/win32/PEParser$ImageResourceEntry;,
        Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;,
        Lcom/winlator/win32/PEParser$ImageResourceDataEntry;,
        Lcom/winlator/win32/PEParser$VSVersionInfo;,
        Lcom/winlator/win32/PEParser$StringFileInfo;,
        Lcom/winlator/win32/PEParser$FileVersionInfo;,
        Lcom/winlator/win32/PEParser$StringTable;,
        Lcom/winlator/win32/PEParser$StringHdr;,
        Lcom/winlator/win32/PEParser$VSFixedFileInfo;
    }
.end annotation


# instance fields
.field private final peFile:Ljava/io/File;

.field private resourcesOffset:I

.field private resourcesRVA:I


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "peFile"    # Ljava/io/File;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/win32/PEParser;->resourcesRVA:I

    .line 27
    iput v0, p0, Lcom/winlator/win32/PEParser;->resourcesOffset:I

    .line 266
    iput-object p1, p0, Lcom/winlator/win32/PEParser;->peFile:Ljava/io/File;

    .line 267
    return-void
.end method

.method static synthetic access$600(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;

    .line 22
    invoke-static {p0}, Lcom/winlator/win32/PEParser;->readUnicodeString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decodeIcon(IZLjava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "iconIndex"    # I
    .param p2, "largeIcon"    # Z

    .line 367
    .local p3, "dataEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/win32/PEParser$ImageResourceDataEntry;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 368
    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;

    .line 369
    .local v5, "dataEntry":Lcom/winlator/win32/PEParser$ImageResourceDataEntry;
    invoke-static {v5}, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;->access$1600(Lcom/winlator/win32/PEParser$ImageResourceDataEntry;)I

    move-result v6

    iget v7, v0, Lcom/winlator/win32/PEParser;->resourcesRVA:I

    sub-int/2addr v6, v7

    iget v7, v0, Lcom/winlator/win32/PEParser;->resourcesOffset:I

    add-int/2addr v6, v7

    .line 371
    .local v6, "fileOffset":I
    invoke-static {v5}, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;->access$1700(Lcom/winlator/win32/PEParser$ImageResourceDataEntry;)I

    move-result v7

    invoke-direct {v0, v6, v7}, Lcom/winlator/win32/PEParser;->readResourceData(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 372
    .local v7, "iconData":Ljava/nio/ByteBuffer;
    if-eqz v7, :cond_a

    .line 373
    invoke-static {v7}, Lcom/winlator/core/ImageUtils;->isPNGData(Ljava/nio/ByteBuffer;)Z

    move-result v8

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v8, :cond_4

    .line 374
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 375
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 376
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v13

    invoke-static {v12, v10, v13, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 378
    if-ltz v1, :cond_1

    if-ne v3, v1, :cond_0

    :goto_1
    goto :goto_3

    :cond_0
    move v11, v10

    goto :goto_3

    :cond_1
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v12, v9, :cond_2

    move v9, v11

    goto :goto_2

    :cond_2
    move v9, v10

    :goto_2
    if-ne v2, v9, :cond_0

    goto :goto_1

    :goto_3
    move v9, v11

    .line 379
    .local v9, "success":Z
    if-eqz v9, :cond_3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v12

    invoke-static {v11, v10, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    return-object v10

    .line 380
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "success":Z
    :cond_3
    goto :goto_8

    .line 382
    :cond_4
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 383
    .local v8, "bitmapOffset":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 384
    .local v12, "bmpWidth":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 385
    .local v13, "bmpHeight":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    .line 386
    .local v14, "colorPlanes":S
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    .line 387
    .local v15, "bitCount":S
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    .line 388
    .local v16, "compression":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 389
    .local v17, "sizeImage":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    .line 390
    .local v18, "xPelsPerMeter":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v19

    .line 391
    .local v19, "yPelsPerMeter":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 393
    .local v20, "clrUsed":I
    const/16 v10, 0x8

    if-ne v15, v10, :cond_6

    if-nez v16, :cond_5

    if-eqz v20, :cond_6

    :cond_5
    goto :goto_8

    .line 395
    :cond_6
    if-ltz v1, :cond_7

    if-ne v3, v1, :cond_9

    :goto_4
    goto :goto_6

    :cond_7
    if-lt v12, v9, :cond_8

    move v9, v11

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    if-ne v2, v9, :cond_9

    goto :goto_4

    :goto_6
    if-lt v15, v10, :cond_9

    move v10, v11

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    :goto_7
    move v9, v10

    .line 396
    .restart local v9    # "success":Z
    if-eqz v9, :cond_a

    .line 397
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 398
    invoke-static {v12, v12, v15, v7}, Lcom/winlator/win32/MSBitmap;->decodeBuffer(IIILjava/nio/ByteBuffer;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 399
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_a

    return-object v10

    .line 367
    .end local v5    # "dataEntry":Lcom/winlator/win32/PEParser$ImageResourceDataEntry;
    .end local v6    # "fileOffset":I
    .end local v7    # "iconData":Ljava/nio/ByteBuffer;
    .end local v8    # "bitmapOffset":I
    .end local v9    # "success":Z
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "bmpWidth":I
    .end local v13    # "bmpHeight":I
    .end local v14    # "colorPlanes":S
    .end local v15    # "bitCount":S
    .end local v16    # "compression":I
    .end local v17    # "sizeImage":I
    .end local v18    # "xPelsPerMeter":I
    .end local v19    # "yPelsPerMeter":I
    .end local v20    # "clrUsed":I
    :cond_a
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    move-object/from16 v4, p3

    .line 405
    .end local v3    # "i":I
    const/4 v3, 0x0

    return-object v3
.end method

.method private extractIcon(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "iconIndex"    # I

    .line 409
    iget-object v0, p0, Lcom/winlator/win32/PEParser;->peFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 411
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/winlator/win32/PEParser;->readImageResourceDirectory(B)Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    move-result-object v0

    .line 412
    .local v0, "rootDirectory":Lcom/winlator/win32/PEParser$ImageResourceDirectory;
    if-nez v0, :cond_1

    return-object v1

    .line 413
    :cond_1
    invoke-direct {p0, v0}, Lcom/winlator/win32/PEParser;->readImageResourceDataEntries(Lcom/winlator/win32/PEParser$ImageResourceDirectory;)Ljava/util/ArrayList;

    move-result-object v2

    .line 415
    .local v2, "dataEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/win32/PEParser$ImageResourceDataEntry;>;"
    const/4 v3, 0x1

    if-ltz p1, :cond_2

    .line 416
    invoke-direct {p0, p1, v3, v2}, Lcom/winlator/win32/PEParser;->decodeIcon(IZLjava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 419
    :cond_2
    const/4 v4, -0x1

    invoke-direct {p0, v4, v3, v2}, Lcom/winlator/win32/PEParser;->decodeIcon(IZLjava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 420
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    return-object v3

    .line 422
    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Lcom/winlator/win32/PEParser;->decodeIcon(IZLjava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 423
    if-eqz v3, :cond_4

    return-object v3

    .line 426
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    return-object v1
.end method

.method public static extractIcon(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "peFile"    # Ljava/io/File;

    .line 498
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/winlator/win32/PEParser;->extractIcon(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractIcon(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "peFile"    # Ljava/io/File;
    .param p1, "iconIndex"    # I

    .line 502
    new-instance v0, Lcom/winlator/win32/PEParser;

    invoke-direct {v0, p0}, Lcom/winlator/win32/PEParser;-><init>(Ljava/io/File;)V

    invoke-direct {v0, p1}, Lcom/winlator/win32/PEParser;->extractIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getFileVersionInfo(Ljava/io/File;)Lcom/winlator/win32/PEParser$FileVersionInfo;
    .locals 17
    .param p0, "peFile"    # Ljava/io/File;

    .line 430
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 432
    :cond_0
    new-instance v0, Lcom/winlator/win32/PEParser;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Lcom/winlator/win32/PEParser;-><init>(Ljava/io/File;)V

    .line 433
    .local v0, "peParser":Lcom/winlator/win32/PEParser;
    const/16 v3, 0x10

    invoke-direct {v0, v3}, Lcom/winlator/win32/PEParser;->readImageResourceDirectory(B)Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    move-result-object v3

    .line 434
    .local v3, "rootDirectory":Lcom/winlator/win32/PEParser$ImageResourceDirectory;
    if-nez v3, :cond_1

    return-object v1

    .line 435
    :cond_1
    invoke-direct {v0, v3}, Lcom/winlator/win32/PEParser;->readImageResourceDataEntries(Lcom/winlator/win32/PEParser$ImageResourceDirectory;)Ljava/util/ArrayList;

    move-result-object v4

    .line 436
    .local v4, "dataEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/win32/PEParser$ImageResourceDataEntry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    return-object v1

    .line 438
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;

    .line 439
    .local v7, "dataEntry":Lcom/winlator/win32/PEParser$ImageResourceDataEntry;
    invoke-static {v7}, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;->access$1600(Lcom/winlator/win32/PEParser$ImageResourceDataEntry;)I

    move-result v8

    iget v9, v0, Lcom/winlator/win32/PEParser;->resourcesRVA:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/winlator/win32/PEParser;->resourcesOffset:I

    add-int/2addr v8, v9

    .line 440
    .local v8, "fileOffset":I
    invoke-static {v7}, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;->access$1700(Lcom/winlator/win32/PEParser$ImageResourceDataEntry;)I

    move-result v9

    invoke-direct {v0, v8, v9}, Lcom/winlator/win32/PEParser;->readResourceData(II)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 441
    .local v9, "resourceData":Ljava/nio/ByteBuffer;
    if-nez v9, :cond_3

    return-object v1

    .line 443
    :cond_3
    new-instance v10, Lcom/winlator/win32/PEParser$VSVersionInfo;

    invoke-direct {v10, v9, v1}, Lcom/winlator/win32/PEParser$VSVersionInfo;-><init>(Ljava/nio/ByteBuffer;Lcom/winlator/win32/PEParser$1;)V

    .line 445
    .local v10, "versionInfo":Lcom/winlator/win32/PEParser$VSVersionInfo;
    invoke-static {v10}, Lcom/winlator/win32/PEParser$VSVersionInfo;->access$1900(Lcom/winlator/win32/PEParser$VSVersionInfo;)Lcom/winlator/win32/PEParser$StringFileInfo;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 446
    const-string v1, "0409"

    .line 447
    .local v1, "englishLangID":Ljava/lang/String;
    new-instance v11, Lcom/winlator/win32/PEParser$FileVersionInfo;

    invoke-direct {v11}, Lcom/winlator/win32/PEParser$FileVersionInfo;-><init>()V

    .line 448
    .local v11, "fileVersionInfo":Lcom/winlator/win32/PEParser$FileVersionInfo;
    invoke-static {v10}, Lcom/winlator/win32/PEParser$VSVersionInfo;->access$1900(Lcom/winlator/win32/PEParser$VSVersionInfo;)Lcom/winlator/win32/PEParser$StringFileInfo;

    move-result-object v12

    invoke-static {v12}, Lcom/winlator/win32/PEParser$StringFileInfo;->access$2000(Lcom/winlator/win32/PEParser$StringFileInfo;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/winlator/win32/PEParser$StringTable;

    .line 449
    .local v13, "stringTable":Lcom/winlator/win32/PEParser$StringTable;
    invoke-static {v13}, Lcom/winlator/win32/PEParser$StringTable;->access$2100(Lcom/winlator/win32/PEParser$StringTable;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0409"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v13}, Lcom/winlator/win32/PEParser$StringTable;->access$2100(Lcom/winlator/win32/PEParser$StringTable;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0000"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v13}, Lcom/winlator/win32/PEParser$StringTable;->access$2100(Lcom/winlator/win32/PEParser$StringTable;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ffff"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 450
    :cond_4
    invoke-static {v13}, Lcom/winlator/win32/PEParser$StringTable;->access$2200(Lcom/winlator/win32/PEParser$StringTable;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/winlator/win32/PEParser$StringHdr;

    .line 451
    .local v15, "stringHdr":Lcom/winlator/win32/PEParser$StringHdr;
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2300(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_5
    goto/16 :goto_2

    :sswitch_0
    const-string v6, "LegalTrademarks"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x6

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "OriginalFilename"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x7

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "CompanyName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :sswitch_3
    const-string v6, "PrivateBuild"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x8

    goto :goto_3

    :sswitch_4
    const-string v6, "SpecialBuildprivate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xb

    goto :goto_3

    :sswitch_5
    const-string v6, "ProductName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x9

    goto :goto_3

    :sswitch_6
    const-string v6, "InternalName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    goto :goto_3

    :sswitch_7
    const-string v6, "FileVersion"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_8
    const-string v6, "Comments"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :sswitch_9
    const-string v6, "FileDescription"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_a
    const-string v6, "ProductVersion"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xa

    goto :goto_3

    :sswitch_b
    const-string v6, "LegalCopyright"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    goto :goto_3

    :goto_2
    const/4 v5, -0x1

    :goto_3
    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 486
    :pswitch_0
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->SpecialBuildprivate:Ljava/lang/String;

    goto :goto_4

    .line 483
    :pswitch_1
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->ProductVersion:Ljava/lang/String;

    .line 484
    goto :goto_4

    .line 480
    :pswitch_2
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->ProductName:Ljava/lang/String;

    .line 481
    goto :goto_4

    .line 477
    :pswitch_3
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->PrivateBuild:Ljava/lang/String;

    .line 478
    goto :goto_4

    .line 474
    :pswitch_4
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->OriginalFilename:Ljava/lang/String;

    .line 475
    goto :goto_4

    .line 471
    :pswitch_5
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->LegalTrademarks:Ljava/lang/String;

    .line 472
    goto :goto_4

    .line 468
    :pswitch_6
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->LegalCopyright:Ljava/lang/String;

    .line 469
    goto :goto_4

    .line 465
    :pswitch_7
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->InternalName:Ljava/lang/String;

    .line 466
    goto :goto_4

    .line 462
    :pswitch_8
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->FileVersion:Ljava/lang/String;

    .line 463
    goto :goto_4

    .line 459
    :pswitch_9
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->FileDescription:Ljava/lang/String;

    .line 460
    goto :goto_4

    .line 456
    :pswitch_a
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->CompanyName:Ljava/lang/String;

    .line 457
    goto :goto_4

    .line 453
    :pswitch_b
    invoke-static {v15}, Lcom/winlator/win32/PEParser$StringHdr;->access$2400(Lcom/winlator/win32/PEParser$StringHdr;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/winlator/win32/PEParser$FileVersionInfo;->Comments:Ljava/lang/String;

    .line 454
    nop

    .line 489
    .end local v15    # "stringHdr":Lcom/winlator/win32/PEParser$StringHdr;
    :goto_4
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 491
    .end local v13    # "stringTable":Lcom/winlator/win32/PEParser$StringTable;
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 492
    :cond_7
    return-object v11

    .line 494
    .end local v1    # "englishLangID":Ljava/lang/String;
    .end local v11    # "fileVersionInfo":Lcom/winlator/win32/PEParser$FileVersionInfo;
    :cond_8
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x742202d2 -> :sswitch_b
        -0x2ebde6f7 -> :sswitch_a
        -0x250d1740 -> :sswitch_9
        -0x200dbdec -> :sswitch_8
        -0x16747c64 -> :sswitch_7
        0x5046308 -> :sswitch_6
        0xa7e53fa -> :sswitch_5
        0x1453f68e -> :sswitch_4
        0x43dcfecb -> :sswitch_3
        0x45194c88 -> :sswitch_2
        0x514b2318 -> :sswitch_1
        0x6281c3db -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readImageResourceDataEntries(Lcom/winlator/win32/PEParser$ImageResourceDirectory;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "rootDirectory"    # Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, "dataEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/win32/PEParser$ImageResourceDataEntry;>;"
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 350
    .local v1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/winlator/win32/PEParser$ImageResourceDirectory;>;"
    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 352
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    .line 354
    .local v2, "directory":Lcom/winlator/win32/PEParser$ImageResourceDirectory;
    invoke-static {v2}, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->access$1500(Lcom/winlator/win32/PEParser$ImageResourceDirectory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/win32/PEParser$ImageResourceEntry;

    .line 355
    .local v4, "entry":Lcom/winlator/win32/PEParser$ImageResourceEntry;
    instance-of v5, v4, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;

    if-eqz v5, :cond_0

    .line 356
    move-object v5, v4

    check-cast v5, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;

    invoke-static {v5}, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->access$400(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 358
    :cond_0
    instance-of v5, v4, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;

    if-eqz v5, :cond_1

    .line 359
    move-object v5, v4

    check-cast v5, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v4    # "entry":Lcom/winlator/win32/PEParser$ImageResourceEntry;
    :cond_1
    :goto_2
    goto :goto_1

    .line 362
    .end local v2    # "directory":Lcom/winlator/win32/PEParser$ImageResourceDirectory;
    :cond_2
    goto :goto_0

    .line 363
    :cond_3
    return-object v0
.end method

.method private readImageResourceDirectory(B)Lcom/winlator/win32/PEParser$ImageResourceDirectory;
    .locals 17
    .param p1, "type"    # B

    .line 283
    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/winlator/win32/PEParser;->peFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v4, 0x10000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 284
    .local v3, "inStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 286
    .local v0, "filePosition":I
    const/16 v4, 0x40

    :try_start_1
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 287
    .local v4, "dosHeader":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v5

    add-int/2addr v0, v5

    .line 289
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .local v5, "magicNumber":S
    const/16 v6, 0x5a4d

    if-eq v5, v6, :cond_0

    .line 341
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    return-object v2

    .line 342
    .end local v0    # "filePosition":I
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "dosHeader":Ljava/nio/ByteBuffer;
    .end local v5    # "magicNumber":S
    :catch_0
    move-exception v0

    move/from16 v15, p1

    goto/16 :goto_5

    .line 292
    .restart local v0    # "filePosition":I
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "dosHeader":Ljava/nio/ByteBuffer;
    .restart local v5    # "magicNumber":S
    :cond_0
    const/16 v6, 0x3c

    :try_start_3
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 293
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    .line 295
    .local v6, "fileHeaderOffset":I
    sub-int v7, v6, v0

    invoke-static {v3, v7}, Lcom/winlator/core/StreamUtils;->skip(Ljava/io/InputStream;I)I

    move-result v7

    add-int/2addr v0, v7

    .line 297
    const/16 v7, 0x14

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 298
    .local v7, "fileHeader":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v8

    add-int/2addr v0, v8

    .line 300
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v8

    .line 301
    .local v8, "machine":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 303
    .local v9, "numberOfSections":S
    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, 0xc

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 306
    .local v10, "sizeofOptionalHeader":S
    invoke-static {v3, v10}, Lcom/winlator/core/StreamUtils;->skip(Ljava/io/InputStream;I)I

    move-result v11

    add-int/2addr v0, v11

    .line 308
    const/4 v11, 0x0

    iput v11, v1, Lcom/winlator/win32/PEParser;->resourcesRVA:I

    .line 309
    iput v11, v1, Lcom/winlator/win32/PEParser;->resourcesOffset:I

    .line 310
    const/4 v12, 0x0

    .line 312
    .local v12, "resourcesSize":I
    const/16 v13, 0x28

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 313
    .local v13, "sectionHeader":Ljava/nio/ByteBuffer;
    const/16 v14, 0x8

    new-array v14, v14, [B

    .line 315
    .local v14, "nameBytes":[B
    const/4 v15, 0x0

    .local v15, "i":B
    :goto_0
    if-ge v15, v9, :cond_2

    .line 316
    invoke-virtual {v13, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 317
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 319
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 320
    invoke-static {v14}, Lcom/winlator/core/StringUtils;->fromANSIString([B)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "name":Ljava/lang/String;
    const-string v11, ".rsrc"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 323
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getInt()I

    .line 324
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iput v11, v1, Lcom/winlator/win32/PEParser;->resourcesRVA:I

    .line 325
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    move v12, v11

    .line 326
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iput v11, v1, Lcom/winlator/win32/PEParser;->resourcesOffset:I

    .line 327
    goto :goto_2

    .line 283
    .end local v0    # "filePosition":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "dosHeader":Ljava/nio/ByteBuffer;
    .end local v5    # "magicNumber":S
    .end local v6    # "fileHeaderOffset":I
    .end local v7    # "fileHeader":Ljava/nio/ByteBuffer;
    .end local v8    # "machine":I
    .end local v9    # "numberOfSections":S
    .end local v10    # "sizeofOptionalHeader":S
    .end local v12    # "resourcesSize":I
    .end local v13    # "sectionHeader":Ljava/nio/ByteBuffer;
    .end local v14    # "nameBytes":[B
    .end local v15    # "i":B
    :catchall_0
    move-exception v0

    move/from16 v15, p1

    :goto_1
    move-object v1, v0

    goto :goto_3

    .line 322
    .restart local v0    # "filePosition":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "dosHeader":Ljava/nio/ByteBuffer;
    .restart local v5    # "magicNumber":S
    .restart local v6    # "fileHeaderOffset":I
    .restart local v7    # "fileHeader":Ljava/nio/ByteBuffer;
    .restart local v8    # "machine":I
    .restart local v9    # "numberOfSections":S
    .restart local v10    # "sizeofOptionalHeader":S
    .restart local v12    # "resourcesSize":I
    .restart local v13    # "sectionHeader":Ljava/nio/ByteBuffer;
    .restart local v14    # "nameBytes":[B
    .restart local v15    # "i":B
    :cond_1
    nop

    .line 315
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v2, v15, 0x1

    int-to-byte v15, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_0

    .line 331
    .end local v15    # "i":B
    :cond_2
    :goto_2
    iget v2, v1, Lcom/winlator/win32/PEParser;->resourcesOffset:I

    if-lez v2, :cond_3

    .line 332
    iget v2, v1, Lcom/winlator/win32/PEParser;->resourcesOffset:I

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Lcom/winlator/core/StreamUtils;->skip(Ljava/io/InputStream;I)I

    move-result v2

    add-int/2addr v0, v2

    .line 334
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 335
    .local v2, "resourcesBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v15

    move/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "filePosition":I
    .local v16, "filePosition":I
    invoke-virtual {v3, v11, v0, v15}, Ljava/io/InputStream;->read([BII)I

    .line 337
    new-instance v11, Lcom/winlator/win32/PEParser$ImageResourceDirectory;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v15, p1

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {v11, v15, v2, v0, v1}, Lcom/winlator/win32/PEParser$ImageResourceDirectory;-><init>(BLjava/nio/ByteBuffer;ILcom/winlator/win32/PEParser$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 341
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 337
    return-object v11

    .line 342
    .end local v2    # "resourcesBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "dosHeader":Ljava/nio/ByteBuffer;
    .end local v5    # "magicNumber":S
    .end local v6    # "fileHeaderOffset":I
    .end local v7    # "fileHeader":Ljava/nio/ByteBuffer;
    .end local v8    # "machine":I
    .end local v9    # "numberOfSections":S
    .end local v10    # "sizeofOptionalHeader":S
    .end local v12    # "resourcesSize":I
    .end local v13    # "sectionHeader":Ljava/nio/ByteBuffer;
    .end local v14    # "nameBytes":[B
    .end local v16    # "filePosition":I
    :catch_1
    move-exception v0

    goto :goto_5

    .line 283
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 340
    .restart local v0    # "filePosition":I
    .restart local v4    # "dosHeader":Ljava/nio/ByteBuffer;
    .restart local v5    # "magicNumber":S
    .restart local v6    # "fileHeaderOffset":I
    .restart local v7    # "fileHeader":Ljava/nio/ByteBuffer;
    .restart local v8    # "machine":I
    .restart local v9    # "numberOfSections":S
    .restart local v10    # "sizeofOptionalHeader":S
    .restart local v12    # "resourcesSize":I
    .restart local v13    # "sectionHeader":Ljava/nio/ByteBuffer;
    .restart local v14    # "nameBytes":[B
    :cond_3
    move/from16 v15, p1

    .line 341
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 340
    const/4 v1, 0x0

    return-object v1

    .line 283
    .end local v0    # "filePosition":I
    .end local v4    # "dosHeader":Ljava/nio/ByteBuffer;
    .end local v5    # "magicNumber":S
    .end local v6    # "fileHeaderOffset":I
    .end local v7    # "fileHeader":Ljava/nio/ByteBuffer;
    .end local v8    # "machine":I
    .end local v9    # "numberOfSections":S
    .end local v10    # "sizeofOptionalHeader":S
    .end local v12    # "resourcesSize":I
    .end local v13    # "sectionHeader":Ljava/nio/ByteBuffer;
    .end local v14    # "nameBytes":[B
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "type":B
    :goto_4
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 342
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "type":B
    :goto_5
    nop

    .line 343
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private readResourceData(II)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "dataOffset"    # I
    .param p2, "dataSize"    # I

    .line 270
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/winlator/win32/PEParser;->peFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v3, 0x10000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-array v2, p2, [B

    .line 272
    .local v2, "bytes":[B
    invoke-static {v1, p1}, Lcom/winlator/core/StreamUtils;->skip(Ljava/io/InputStream;I)I

    .line 273
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 275
    .local v3, "bytesRead":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    .end local v2    # "bytes":[B
    .end local v3    # "bytesRead":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 275
    .restart local v2    # "bytes":[B
    .restart local v3    # "bytesRead":I
    :cond_0
    move-object v4, v0

    .line 276
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 275
    return-object v4

    .line 277
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "bytesRead":I
    :catch_0
    move-exception v1

    goto :goto_3

    .line 270
    .restart local v1    # "inStream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "dataOffset":I
    .end local p2    # "dataSize":I
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 277
    .end local v1    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "dataOffset":I
    .restart local p2    # "dataSize":I
    :goto_3
    nop

    .line 278
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method private static readUnicodeString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 152
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 154
    .local v0, "stringBuf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    move v2, v1

    .local v2, "value":S
    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method
