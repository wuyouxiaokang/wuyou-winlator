.class public abstract Lcom/winlator/win32/MSIcon;
.super Ljava/lang/Object;
.source "MSIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/win32/MSIcon$IconDirEntry;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Ads-1kpHO4uC50u7OV3c6jCkEmI(Lcom/winlator/win32/MSIcon$IconDirEntry;Lcom/winlator/win32/MSIcon$IconDirEntry;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/win32/MSIcon;->lambda$decodeFile$0(Lcom/winlator/win32/MSIcon$IconDirEntry;Lcom/winlator/win32/MSIcon$IconDirEntry;)I

    move-result p0

    return p0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 28
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    invoke-static {v0}, Lcom/winlator/core/ImageUtils;->isPNGData(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 36
    .local v1, "bitmapOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 37
    .local v2, "bmpWidth":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 38
    .local v3, "bmpHeight":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 39
    .local v4, "colorPlanes":S
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 41
    .local v5, "bitCount":S
    add-int v6, p1, v1

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    invoke-static {v2, v2, v5, v0}, Lcom/winlator/win32/MSBitmap;->decodeBuffer(IIILjava/nio/ByteBuffer;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method

.method public static decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "icoFile"    # Ljava/io/File;

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/winlator/core/FileUtils;->read(Ljava/io/File;)[B

    move-result-object v0

    .line 49
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    return-object v1

    .line 51
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 53
    .local v2, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 54
    .local v3, "reserved":S
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 55
    .local v4, "imageType":S
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 57
    .local v5, "numberOfImages":S
    if-nez v3, :cond_2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    if-lez v5, :cond_2

    const/16 v6, 0x20

    if-lt v5, v6, :cond_3

    :cond_2
    goto :goto_1

    .line 59
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/win32/MSIcon$IconDirEntry;>;"
    const/4 v7, 0x0

    .local v7, "i":B
    :goto_0
    if-ge v7, v5, :cond_4

    .line 62
    new-instance v8, Lcom/winlator/win32/MSIcon$IconDirEntry;

    invoke-direct {v8, v1}, Lcom/winlator/win32/MSIcon$IconDirEntry;-><init>(Lcom/winlator/win32/MSIcon$1;)V

    .line 63
    .local v8, "entry":Lcom/winlator/win32/MSIcon$IconDirEntry;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v9

    invoke-static {v8, v9}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$102(Lcom/winlator/win32/MSIcon$IconDirEntry;I)I

    .line 64
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v9

    invoke-static {v8, v9}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$202(Lcom/winlator/win32/MSIcon$IconDirEntry;I)I

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v8, v9}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$302(Lcom/winlator/win32/MSIcon$IconDirEntry;B)B

    .line 66
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v8, v9}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$402(Lcom/winlator/win32/MSIcon$IconDirEntry;B)B

    .line 67
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    invoke-static {v8, v9}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$502(Lcom/winlator/win32/MSIcon$IconDirEntry;S)S

    .line 68
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    invoke-static {v8, v9}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$602(Lcom/winlator/win32/MSIcon$IconDirEntry;S)S

    .line 69
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v8, v9}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$702(Lcom/winlator/win32/MSIcon$IconDirEntry;I)I

    .line 70
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v8, v9}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$802(Lcom/winlator/win32/MSIcon$IconDirEntry;I)I

    .line 71
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v8    # "entry":Lcom/winlator/win32/MSIcon$IconDirEntry;
    add-int/lit8 v8, v7, 0x1

    int-to-byte v7, v8

    goto :goto_0

    :cond_4
    nop

    .line 74
    .end local v7    # "i":B
    new-instance v1, Lcom/winlator/win32/MSIcon$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/winlator/win32/MSIcon$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/win32/MSIcon$IconDirEntry;

    .line 81
    .local v1, "firstEntry":Lcom/winlator/win32/MSIcon$IconDirEntry;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-static {v1}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$800(Lcom/winlator/win32/MSIcon$IconDirEntry;)I

    move-result v8

    invoke-static {v1}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$700(Lcom/winlator/win32/MSIcon$IconDirEntry;)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/winlator/win32/MSIcon;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 57
    .end local v1    # "firstEntry":Lcom/winlator/win32/MSIcon$IconDirEntry;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/win32/MSIcon$IconDirEntry;>;"
    :goto_1
    return-object v1
.end method

.method private static synthetic lambda$decodeFile$0(Lcom/winlator/win32/MSIcon$IconDirEntry;Lcom/winlator/win32/MSIcon$IconDirEntry;)I
    .locals 3
    .param p0, "a"    # Lcom/winlator/win32/MSIcon$IconDirEntry;
    .param p1, "b"    # Lcom/winlator/win32/MSIcon$IconDirEntry;

    .line 75
    invoke-static {p1}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$600(Lcom/winlator/win32/MSIcon$IconDirEntry;)S

    move-result v0

    invoke-static {p0}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$600(Lcom/winlator/win32/MSIcon$IconDirEntry;)S

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Short;->compare(SS)I

    move-result v0

    .line 76
    .local v0, "value":I
    if-eqz v0, :cond_0

    return v0

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$100(Lcom/winlator/win32/MSIcon$IconDirEntry;)I

    move-result v1

    invoke-static {p0}, Lcom/winlator/win32/MSIcon$IconDirEntry;->access$100(Lcom/winlator/win32/MSIcon$IconDirEntry;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1
.end method
