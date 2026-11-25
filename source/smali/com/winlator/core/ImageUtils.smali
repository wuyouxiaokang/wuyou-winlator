.class public abstract Lcom/winlator/core/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "maxSize"    # I

    .line 20
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 21
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 22
    .local v1, "width":I
    const/4 v2, 0x1

    .line 24
    .local v2, "inSampleSize":I
    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 25
    .local v4, "reqWidth":I
    :goto_0
    if-lt v0, v1, :cond_1

    move v3, p1

    .line 27
    .local v3, "reqHeight":I
    :cond_1
    if-gt v0, v3, :cond_2

    if-le v1, v4, :cond_3

    .line 28
    :cond_2
    div-int/lit8 v5, v0, 0x2

    .line 29
    .local v5, "halfHeight":I
    div-int/lit8 v6, v1, 0x2

    .line 30
    .local v6, "halfWidth":I
    :goto_1
    div-int v7, v5, v2

    if-lt v7, v3, :cond_3

    div-int v7, v6, v2

    if-lt v7, v4, :cond_3

    .line 31
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 34
    .end local v5    # "halfHeight":I
    .end local v6    # "halfWidth":I
    :cond_3
    return v2
.end method

.method public static getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/winlator/core/ImageUtils;->getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 92
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 93
    if-eqz p2, :cond_0

    .line 94
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 103
    :catch_0
    move-exception v2

    goto :goto_2

    .line 97
    :cond_0
    if-eqz p3, :cond_1

    .line 98
    const/4 v2, 0x0

    invoke-static {v0, v2, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 108
    :goto_0
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 110
    :catch_1
    move-exception v2

    .line 111
    goto :goto_3

    .line 110
    :cond_2
    :goto_1
    goto :goto_3

    .line 103
    :goto_2
    nop

    .line 104
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 112
    :goto_3
    return-object v1

    .line 108
    :goto_4
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 110
    :catch_2
    move-exception v3

    :cond_3
    :goto_5
    nop

    .line 111
    throw v2
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSize"    # I

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 69
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 71
    invoke-static {v1, p2}, Lcom/winlator/core/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    .line 72
    .local v2, "inSampleSize":I
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v2    # "inSampleSize":I
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 75
    :catch_1
    move-exception v2

    nop

    .line 76
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 85
    :goto_1
    invoke-static {p0, p1, v1}, Lcom/winlator/core/ImageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 80
    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 82
    :catch_2
    move-exception v3

    :cond_1
    :goto_3
    nop

    .line 83
    throw v2
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 41
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 42
    if-eqz p2, :cond_0

    .line 43
    const/4 v2, 0x0

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 47
    :catch_0
    move-exception v2

    goto :goto_2

    .line 45
    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 52
    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 54
    :catch_1
    move-exception v2

    .line 55
    goto :goto_3

    .line 54
    :cond_1
    :goto_1
    goto :goto_3

    .line 47
    :goto_2
    nop

    .line 48
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 56
    :goto_3
    return-object v1

    .line 52
    :goto_4
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 54
    :catch_2
    move-exception v3

    :cond_2
    :goto_5
    nop

    .line 55
    throw v2
.end method

.method public static getScaledSize(FFFF)[I
    .locals 2
    .param p0, "oldWidth"    # F
    .param p1, "oldHeight"    # F
    .param p2, "newWidth"    # F
    .param p3, "newHeight"    # F

    .line 154
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_0

    .line 155
    div-float v0, p2, p0

    mul-float p3, v0, p1

    .line 156
    div-float v0, p3, p1

    mul-float p2, v0, p0

    goto :goto_0

    .line 158
    :cond_0
    cmpl-float v1, p2, v0

    if-nez v1, :cond_1

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 159
    div-float v0, p3, p1

    mul-float p2, v0, p0

    .line 160
    div-float v0, p2, p0

    mul-float p3, v0, p1

    .line 162
    :cond_1
    :goto_0
    float-to-int v0, p2

    float-to-int v1, p3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public static isPNGData(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 148
    .local v0, "position":I
    add-int/lit8 v1, v0, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    const/16 v2, 0x89

    nop

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 149
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v2, 0x47

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 149
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "output"    # Ljava/io/File;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 127
    invoke-virtual {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    nop

    .line 135
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 136
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return v1

    .line 133
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 129
    :catch_1
    move-exception v1

    nop

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 135
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 136
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 139
    :catch_2
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 141
    :cond_0
    :goto_1
    nop

    .line 143
    :goto_2
    const/4 v1, 0x0

    return v1

    .line 134
    :goto_3
    if-eqz v0, :cond_1

    .line 135
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 136
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 139
    :catch_3
    move-exception v2

    .line 140
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    nop

    .line 142
    :goto_5
    throw v1
.end method
