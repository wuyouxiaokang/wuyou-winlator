.class public abstract Lcom/winlator/win32/MSBitmap;
.super Ljava/lang/Object;
.source "MSBitmap.java"


# direct methods
.method public static create(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 24
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outputFile"    # Ljava/io/File;

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 128
    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 130
    .local v10, "height":I
    mul-int v0, v9, v10

    new-array v11, v0, [I

    .line 131
    .local v11, "pixels":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 133
    rem-int/lit8 v1, v9, 0x4

    .line 134
    .local v1, "extraBytes":I
    mul-int/lit8 v0, v9, 0x3

    add-int/2addr v0, v1

    mul-int v2, v10, v0

    .line 135
    .local v2, "imageSize":I
    const/16 v3, 0x28

    .line 136
    .local v3, "infoHeaderSize":I
    const/16 v4, 0x36

    .line 137
    .local v4, "dataOffset":I
    const/16 v5, 0x18

    .line 138
    .local v5, "bitCount":I
    const/4 v6, 0x1

    .line 139
    .local v6, "planes":I
    const/4 v7, 0x0

    .line 140
    .local v7, "compression":I
    const/4 v8, 0x0

    .line 141
    .local v8, "hr":I
    const/4 v12, 0x0

    .line 142
    .local v12, "vr":I
    const/4 v13, 0x0

    .line 143
    .local v13, "colorsUsed":I
    const/4 v14, 0x0

    .line 145
    .local v14, "colorsImportant":I
    add-int v0, v4, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 147
    .local v15, "buffer":Ljava/nio/ByteBuffer;
    const/16 v0, 0x4d42

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 148
    add-int v0, v4, v2

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 149
    move-object/from16 v16, v11

    .end local v11    # "pixels":[I
    .local v16, "pixels":[I
    const/4 v11, 0x0

    invoke-virtual {v15, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v15, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    int-to-short v0, v6

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 156
    int-to-short v0, v5

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v15, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 159
    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    mul-int/lit8 v0, v9, 0x3

    add-int v17, v0, v1

    .line 165
    .local v17, "rowBytes":I
    add-int/lit8 v0, v10, -0x1

    .local v0, "y":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 166
    const/16 v19, 0x0

    move/from16 v11, v19

    .local v11, "x":I
    :goto_1
    if-ge v11, v9, :cond_0

    .line 167
    mul-int v20, v0, v17

    add-int v20, v4, v20

    mul-int/lit8 v21, v11, 0x3

    add-int v20, v20, v21

    .line 168
    .local v20, "j":I
    add-int/lit8 v21, v18, 0x1

    .end local v18    # "i":I
    .local v21, "i":I
    aget v18, v16, v18

    .line 169
    .local v18, "pixel":I
    move/from16 v22, v2

    .end local v2    # "imageSize":I
    .local v22, "imageSize":I
    add-int/lit8 v2, v20, 0x0

    move/from16 v23, v3

    .end local v3    # "infoHeaderSize":I
    .local v23, "infoHeaderSize":I
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v15, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 170
    add-int/lit8 v2, v20, 0x1

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v15, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 171
    add-int/lit8 v2, v20, 0x2

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v15, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 166
    .end local v18    # "pixel":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v21

    move/from16 v2, v22

    move/from16 v3, v23

    goto :goto_1

    .end local v20    # "j":I
    .end local v21    # "i":I
    .end local v22    # "imageSize":I
    .end local v23    # "infoHeaderSize":I
    .restart local v2    # "imageSize":I
    .restart local v3    # "infoHeaderSize":I
    .local v18, "i":I
    :cond_0
    move/from16 v22, v2

    move/from16 v23, v3

    .line 174
    .end local v2    # "imageSize":I
    .end local v3    # "infoHeaderSize":I
    .end local v11    # "x":I
    .restart local v22    # "imageSize":I
    .restart local v23    # "infoHeaderSize":I
    if-lez v1, :cond_1

    .line 175
    mul-int v2, v0, v17

    add-int/2addr v2, v4

    mul-int/lit8 v3, v9, 0x3

    add-int/2addr v2, v3

    .line 176
    .local v2, "fillOffset":I
    move v3, v2

    .local v3, "j":I
    :goto_2
    add-int v11, v2, v1

    if-ge v3, v11, :cond_1

    const/4 v11, -0x1

    invoke-virtual {v15, v3, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 165
    .end local v2    # "fillOffset":I
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v22

    move/from16 v3, v23

    const/4 v11, 0x0

    goto :goto_0

    .end local v22    # "imageSize":I
    .end local v23    # "infoHeaderSize":I
    .local v2, "imageSize":I
    .local v3, "infoHeaderSize":I
    :cond_2
    move/from16 v22, v2

    move/from16 v23, v3

    .line 180
    .end local v0    # "y":I
    .end local v2    # "imageSize":I
    .end local v3    # "infoHeaderSize":I
    .end local v18    # "i":I
    .restart local v22    # "imageSize":I
    .restart local v23    # "infoHeaderSize":I
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v0

    .line 181
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    nop

    .line 183
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 182
    const/4 v0, 0x1

    return v0

    .line 184
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    move/from16 v18, v1

    goto :goto_5

    .line 180
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v11, v0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v18, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v18, v1

    move-object v1, v0

    .end local v1    # "extraBytes":I
    .local v18, "extraBytes":I
    :try_start_5
    invoke-virtual {v11, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "dataOffset":I
    .end local v5    # "bitCount":I
    .end local v6    # "planes":I
    .end local v7    # "compression":I
    .end local v8    # "hr":I
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v12    # "vr":I
    .end local v13    # "colorsUsed":I
    .end local v14    # "colorsImportant":I
    .end local v15    # "buffer":Ljava/nio/ByteBuffer;
    .end local v16    # "pixels":[I
    .end local v17    # "rowBytes":I
    .end local v18    # "extraBytes":I
    .end local v22    # "imageSize":I
    .end local v23    # "infoHeaderSize":I
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .end local p1    # "outputFile":Ljava/io/File;
    :goto_3
    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 184
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "dataOffset":I
    .restart local v5    # "bitCount":I
    .restart local v6    # "planes":I
    .restart local v7    # "compression":I
    .restart local v8    # "hr":I
    .restart local v9    # "width":I
    .restart local v10    # "height":I
    .restart local v12    # "vr":I
    .restart local v13    # "colorsUsed":I
    .restart local v14    # "colorsImportant":I
    .restart local v15    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "pixels":[I
    .restart local v17    # "rowBytes":I
    .restart local v18    # "extraBytes":I
    .restart local v22    # "imageSize":I
    .restart local v23    # "infoHeaderSize":I
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "outputFile":Ljava/io/File;
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v18    # "extraBytes":I
    .restart local v1    # "extraBytes":I
    :catch_2
    move-exception v0

    :goto_4
    move/from16 v18, v1

    .end local v1    # "extraBytes":I
    .restart local v18    # "extraBytes":I
    goto :goto_5

    .end local v18    # "extraBytes":I
    .restart local v1    # "extraBytes":I
    :catch_3
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_4

    .end local v1    # "extraBytes":I
    .restart local v18    # "extraBytes":I
    :goto_5
    nop

    .line 185
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static decodeBuffer(IIILjava/nio/ByteBuffer;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "bitCount"    # I
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .line 16
    move/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    goto/16 :goto_a

    .line 20
    :cond_1
    const/4 v3, 0x1

    .line 21
    .local v3, "invertY":Z
    if-gez p1, :cond_2

    .line 22
    mul-int/lit8 v4, p1, -0x1

    .line 23
    .end local p1    # "height":I
    .local v4, "height":I
    const/4 v3, 0x0

    goto :goto_0

    .line 21
    .end local v4    # "height":I
    .restart local p1    # "height":I
    :cond_2
    move/from16 v4, p1

    .line 26
    .end local p1    # "height":I
    .restart local v4    # "height":I
    :goto_0
    mul-int v5, v0, v4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 28
    .local v5, "pixels":Ljava/nio/ByteBuffer;
    const/16 v6, 0x20

    if-ne v1, v6, :cond_5

    .line 29
    add-int/lit8 v6, v4, -0x1

    .local v6, "y":I
    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->position()I

    move-result v7

    .local v7, "i":I
    :goto_1
    if-ltz v6, :cond_b

    .line 30
    if-eqz v3, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v4, -0x1

    sub-int/2addr v8, v6

    .line 32
    .local v8, "line":I
    :goto_2
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_3
    if-ge v9, v0, :cond_4

    .line 33
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "i":I
    .local v10, "i":I
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    .line 34
    .local v7, "b":B
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    .line 35
    .local v10, "g":B
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    .line 36
    .local v11, "r":B
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .local v13, "i":I
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    .line 38
    .local v12, "a":B
    mul-int v14, v8, v0

    mul-int/lit8 v14, v14, 0x4

    mul-int/lit8 v15, v9, 0x4

    add-int/2addr v14, v15

    .line 39
    .local v14, "j":I
    add-int/lit8 v15, v14, 0x2

    invoke-virtual {v5, v15, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 40
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v5, v15, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 41
    add-int/lit8 v15, v14, 0x0

    invoke-virtual {v5, v15, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 42
    add-int/lit8 v15, v14, 0x3

    invoke-virtual {v5, v15, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 32
    add-int/lit8 v9, v9, 0x1

    move v7, v13

    goto :goto_3

    .line 45
    .end local v10    # "g":B
    .end local v11    # "r":B
    .end local v12    # "a":B
    .end local v13    # "i":I
    .end local v14    # "j":I
    .local v7, "i":I
    :cond_4
    rem-int/lit8 v10, v0, 0x4

    add-int/2addr v7, v10

    .line 29
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 48
    .end local v6    # "y":I
    .end local v7    # "i":I
    .end local v8    # "line":I
    .end local v9    # "x":I
    :cond_5
    const/16 v6, 0x18

    const/4 v7, -0x1

    if-ne v1, v6, :cond_8

    .line 49
    add-int/lit8 v6, v4, -0x1

    .restart local v6    # "y":I
    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->position()I

    move-result v8

    .local v8, "i":I
    :goto_4
    if-ltz v6, :cond_b

    .line 50
    if-eqz v3, :cond_6

    move v9, v6

    goto :goto_5

    :cond_6
    add-int/lit8 v9, v4, -0x1

    sub-int/2addr v9, v6

    .line 52
    .local v9, "line":I
    :goto_5
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_6
    if-ge v10, v0, :cond_7

    .line 53
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    .line 54
    .local v8, "b":B
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    .line 55
    .local v11, "g":B
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    .line 57
    .local v12, "r":B
    mul-int v14, v9, v0

    mul-int/lit8 v14, v14, 0x4

    mul-int/lit8 v15, v10, 0x4

    add-int/2addr v14, v15

    .line 58
    .restart local v14    # "j":I
    add-int/lit8 v15, v14, 0x2

    invoke-virtual {v5, v15, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 59
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v5, v15, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 60
    add-int/lit8 v15, v14, 0x0

    invoke-virtual {v5, v15, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 61
    add-int/lit8 v15, v14, 0x3

    invoke-virtual {v5, v15, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 52
    add-int/lit8 v10, v10, 0x1

    move v8, v13

    goto :goto_6

    .line 64
    .end local v11    # "g":B
    .end local v12    # "r":B
    .end local v13    # "i":I
    .end local v14    # "j":I
    .local v8, "i":I
    :cond_7
    rem-int/lit8 v11, v0, 0x4

    add-int/2addr v8, v11

    .line 49
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 67
    .end local v6    # "y":I
    .end local v8    # "i":I
    .end local v9    # "line":I
    .end local v10    # "x":I
    :cond_8
    const/16 v6, 0x8

    if-gt v1, v6, :cond_b

    .line 68
    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->position()I

    move-result v6

    .line 69
    .local v6, "colorTableOffset":I
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    int-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    .line 72
    .local v8, "colorTableSize":I
    add-int/lit8 v9, v4, -0x1

    .local v9, "y":I
    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->position()I

    move-result v10

    add-int/2addr v10, v8

    .local v10, "i":I
    :goto_7
    if-ltz v9, :cond_b

    .line 73
    if-eqz v3, :cond_9

    move v11, v9

    goto :goto_8

    :cond_9
    add-int/lit8 v11, v4, -0x1

    sub-int/2addr v11, v9

    .line 75
    .local v11, "line":I
    :goto_8
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_9
    if-ge v12, v0, :cond_a

    .line 76
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    .line 78
    .local v10, "colorIndex":I
    add-int v14, v6, v10

    add-int/lit8 v14, v14, 0x0

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    .line 79
    .local v14, "b":B
    add-int v15, v6, v10

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    .line 80
    .local v15, "g":B
    add-int v16, v6, v10

    add-int/lit8 v7, v16, 0x2

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    .line 82
    .local v7, "r":B
    mul-int v16, v11, v0

    mul-int/lit8 v16, v16, 0x4

    mul-int/lit8 v17, v12, 0x4

    add-int v16, v16, v17

    .line 83
    .local v16, "j":I
    add-int/lit8 v1, v16, 0x2

    invoke-virtual {v5, v1, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 84
    add-int/lit8 v1, v16, 0x1

    invoke-virtual {v5, v1, v15}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 85
    add-int/lit8 v1, v16, 0x0

    invoke-virtual {v5, v1, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 86
    add-int/lit8 v1, v16, 0x3

    const/4 v2, -0x1

    invoke-virtual {v5, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 75
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p2

    move v7, v2

    move v10, v13

    move-object/from16 v2, p3

    goto :goto_9

    .line 89
    .end local v7    # "r":B
    .end local v13    # "i":I
    .end local v14    # "b":B
    .end local v15    # "g":B
    .end local v16    # "j":I
    .local v10, "i":I
    :cond_a
    move v2, v7

    rem-int/lit8 v1, v0, 0x4

    add-int/2addr v10, v1

    .line 72
    add-int/lit8 v9, v9, -0x1

    move/from16 v1, p2

    move-object/from16 v2, p3

    goto :goto_7

    .line 93
    .end local v6    # "colorTableOffset":I
    .end local v8    # "colorTableSize":I
    .end local v9    # "y":I
    .end local v10    # "i":I
    .end local v11    # "line":I
    .end local v12    # "x":I
    :cond_b
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 95
    return-object v1

    .line 16
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "invertY":Z
    .end local v4    # "height":I
    .end local v5    # "pixels":Ljava/nio/ByteBuffer;
    .restart local p1    # "height":I
    :goto_a
    const/4 v1, 0x0

    return-object v1
.end method
