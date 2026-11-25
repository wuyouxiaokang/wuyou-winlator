.class public abstract Lcom/winlator/win32/MSLink;
.super Ljava/lang/Object;
.source "MSLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/win32/MSLink$LinkInfo;
    }
.end annotation


# direct methods
.method private static charToHexDigit(C)I
    .locals 1
    .param p0, "chr"    # C

    .line 44
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0
.end method

.method private static convertCLSIDtoDATA(Ljava/lang/String;)[B
    .locals 19
    .param p0, "str"    # Ljava/lang/String;

    .line 52
    move-object/from16 v0, p0

    .line 53
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v2, v4}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v2

    .line 54
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v5, v7}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v5

    .line 55
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v8, v10}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v8

    .line 56
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v11, v13}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v11

    .line 57
    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xc

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v14, v13}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v13

    .line 58
    const/16 v14, 0x9

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0xa

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v15, v3}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v3

    .line 59
    const/16 v15, 0x10

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v14, v1}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v1

    .line 60
    const/16 v14, 0xe

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v14, 0xf

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v6, v4}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v4

    .line 61
    const/16 v6, 0x13

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v14, 0x14

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v6, v14}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v6

    .line 62
    const/16 v14, 0x15

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v9, 0x16

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v14, v9}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v9

    .line 63
    const/16 v14, 0x18

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v7, 0x19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v14, v7}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v7

    .line 64
    const/16 v14, 0x1a

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v12, 0x1b

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v14, v12}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v12

    .line 65
    const/16 v14, 0x1c

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v10, 0x1d

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v14, v10}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v10

    .line 66
    const/16 v14, 0x1e

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x1f

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v14, v15}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v14

    .line 67
    const/16 v15, 0x20

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v17, v14

    const/16 v14, 0x21

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v15, v14}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v14

    .line 68
    const/16 v15, 0x22

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v18, v14

    const/16 v14, 0x23

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v15, v14}, Lcom/winlator/win32/MSLink;->twoCharsToByte(CC)B

    move-result v14

    const/16 v15, 0x10

    new-array v15, v15, [B

    const/16 v16, 0x0

    aput-byte v2, v15, v16

    const/4 v2, 0x1

    aput-byte v5, v15, v2

    const/4 v2, 0x2

    aput-byte v8, v15, v2

    const/4 v2, 0x3

    aput-byte v11, v15, v2

    const/4 v2, 0x4

    aput-byte v13, v15, v2

    const/4 v2, 0x5

    aput-byte v3, v15, v2

    const/4 v2, 0x6

    aput-byte v1, v15, v2

    const/4 v1, 0x7

    aput-byte v4, v15, v1

    const/16 v1, 0x8

    aput-byte v6, v15, v1

    const/16 v1, 0x9

    aput-byte v9, v15, v1

    const/16 v1, 0xa

    aput-byte v7, v15, v1

    const/16 v1, 0xb

    aput-byte v12, v15, v1

    const/16 v1, 0xc

    aput-byte v10, v15, v1

    const/16 v1, 0xd

    aput-byte v17, v15, v1

    const/16 v1, 0xe

    aput-byte v18, v15, v1

    const/16 v1, 0xf

    aput-byte v14, v15, v1

    .line 52
    return-object v15
.end method

.method public static createFile(Lcom/winlator/win32/MSLink$LinkInfo;Ljava/io/File;)Z
    .locals 33
    .param p0, "linkInfo"    # Lcom/winlator/win32/MSLink$LinkInfo;
    .param p1, "outputFile"    # Ljava/io/File;

    .line 120
    move-object/from16 v1, p0

    const/16 v0, 0xc

    const/4 v3, 0x2

    const/4 v5, 0x4

    new-array v6, v5, [B

    fill-array-data v6, :array_0

    .line 121
    .local v6, "HeaderSize":[B
    const-string v7, "00021401-0000-0000-c000-000000000046"

    invoke-static {v7}, Lcom/winlator/win32/MSLink;->convertCLSIDtoDATA(Ljava/lang/String;)[B

    move-result-object v7

    .line 123
    .local v7, "LinkCLSID":[B
    const/16 v8, 0x101

    .line 124
    .local v8, "linkFlags":I
    iget-object v9, v1, Lcom/winlator/win32/MSLink$LinkInfo;->arguments:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/winlator/win32/MSLink$LinkInfo;->arguments:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    or-int/lit8 v8, v8, 0x20

    .line 125
    :cond_0
    iget-object v9, v1, Lcom/winlator/win32/MSLink$LinkInfo;->iconLocation:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v1, Lcom/winlator/win32/MSLink$LinkInfo;->iconLocation:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    or-int/lit8 v8, v8, 0x40

    .line 127
    :cond_1
    invoke-static {v8}, Lcom/winlator/win32/MSLink;->intToByteArray(I)[B

    move-result-object v9

    .line 130
    .local v9, "LinkFlags":[B
    iget-object v10, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    const-string v11, "/+"

    const-string v12, "\\\\"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    .line 131
    iget-boolean v10, v1, Lcom/winlator/win32/MSLink$LinkInfo;->isDirectory:Z

    if-eqz v10, :cond_2

    .line 132
    new-array v10, v5, [B

    fill-array-data v10, :array_1

    .line 133
    .local v10, "FileAttributes":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    move-object v11, v10

    move-object v10, v0

    .local v0, "prefixOfTarget":[B
    goto :goto_0

    .line 136
    .end local v0    # "prefixOfTarget":[B
    .end local v10    # "FileAttributes":[B
    :cond_2
    new-array v10, v5, [B

    fill-array-data v10, :array_3

    .line 137
    .restart local v10    # "FileAttributes":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    move-object v11, v10

    move-object v10, v0

    .line 141
    .local v10, "prefixOfTarget":[B
    .local v11, "FileAttributes":[B
    :goto_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    move-object v12, v0

    .local v12, "WriteTime":[B
    move-object v13, v0

    .local v13, "AccessTime":[B
    move-object v14, v0

    .line 143
    .local v14, "CreationTime":[B
    iget v0, v1, Lcom/winlator/win32/MSLink$LinkInfo;->fileSize:I

    invoke-static {v0}, Lcom/winlator/win32/MSLink;->intToByteArray(I)[B

    move-result-object v15

    .line 144
    .local v15, "FileSize":[B
    iget v0, v1, Lcom/winlator/win32/MSLink$LinkInfo;->iconIndex:I

    invoke-static {v0}, Lcom/winlator/win32/MSLink;->intToByteArray(I)[B

    move-result-object v4

    .line 145
    .local v4, "IconIndex":[B
    iget v0, v1, Lcom/winlator/win32/MSLink$LinkInfo;->showCommand:I

    invoke-static {v0}, Lcom/winlator/win32/MSLink;->intToByteArray(I)[B

    move-result-object v2

    .line 146
    .local v2, "ShowCommand":[B
    new-array v0, v3, [B

    fill-array-data v0, :array_6

    move-object/from16 v18, v0

    .line 147
    .local v18, "Hotkey":[B
    new-array v0, v3, [B

    fill-array-data v0, :array_7

    move-object/from16 v19, v0

    .line 148
    .local v19, "Reserved1":[B
    new-array v0, v5, [B

    fill-array-data v0, :array_8

    move-object/from16 v20, v0

    .line 149
    .local v20, "Reserved2":[B
    new-array v0, v5, [B

    fill-array-data v0, :array_9

    move-object v5, v0

    .line 151
    .local v5, "Reserved3":[B
    const-string v0, "20d04fe0-3aea-1069-a2d8-08002b30309d"

    invoke-static {v0}, Lcom/winlator/win32/MSLink;->convertCLSIDtoDATA(Ljava/lang/String;)[B

    move-result-object v3

    .line 152
    .local v3, "CLSIDComputer":[B
    const-string v0, "208d2c60-3aea-1069-a2d7-08002b30309d"

    move-object/from16 v22, v5

    .end local v5    # "Reserved3":[B
    .local v22, "Reserved3":[B
    invoke-static {v0}, Lcom/winlator/win32/MSLink;->convertCLSIDtoDATA(Ljava/lang/String;)[B

    move-result-object v5

    .line 155
    .local v5, "CLSIDNetwork":[B
    iget-object v0, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    move-object/from16 v23, v2

    .end local v2    # "ShowCommand":[B
    .local v23, "ShowCommand":[B
    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    .line 157
    .local v0, "prefixRoot":[B
    move-object/from16 v24, v0

    .end local v0    # "prefixRoot":[B
    .local v24, "prefixRoot":[B
    iget-object v0, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/winlator/win32/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 158
    .local v0, "targetRoot":[B
    move-object/from16 v25, v0

    .end local v0    # "targetRoot":[B
    .local v25, "targetRoot":[B
    iget-object v0, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    move-object/from16 v26, v4

    .end local v4    # "IconIndex":[B
    .local v26, "IconIndex":[B
    iget-object v4, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/win32/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .end local v26    # "IconIndex":[B
    .restart local v4    # "IconIndex":[B
    :cond_3
    move-object/from16 v26, v4

    .end local v4    # "IconIndex":[B
    .restart local v26    # "IconIndex":[B
    const/4 v0, 0x0

    .line 159
    .local v0, "targetLeaf":[B
    :goto_1
    const/4 v2, 0x2

    new-array v4, v2, [B

    fill-array-data v4, :array_b

    filled-new-array {v4, v5}, [[B

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v2

    move-object v4, v0

    move-object/from16 v27, v15

    move-object/from16 v0, v25

    move-object/from16 v32, v5

    move-object v5, v2

    move-object/from16 v2, v24

    move-object/from16 v24, v32

    .local v2, "itemData":[B
    goto :goto_2

    .line 162
    .end local v0    # "targetLeaf":[B
    .end local v2    # "itemData":[B
    .end local v24    # "prefixRoot":[B
    .end local v25    # "targetRoot":[B
    .end local v26    # "IconIndex":[B
    .restart local v4    # "IconIndex":[B
    :cond_4
    move-object/from16 v26, v4

    .end local v4    # "IconIndex":[B
    .restart local v26    # "IconIndex":[B
    const/4 v0, 0x1

    new-array v4, v0, [B

    const/16 v17, 0x2f

    move-object/from16 v24, v5

    const/4 v5, 0x0

    .end local v5    # "CLSIDNetwork":[B
    .local v24, "CLSIDNetwork":[B
    aput-byte v17, v4, v5

    .line 163
    .local v4, "prefixRoot":[B
    iget-object v5, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 164
    .local v2, "index":I
    iget-object v5, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    move-object/from16 v25, v4

    .end local v4    # "prefixRoot":[B
    .local v25, "prefixRoot":[B
    add-int/lit8 v4, v2, 0x1

    move-object/from16 v27, v15

    const/4 v15, 0x0

    .end local v15    # "FileSize":[B
    .local v27, "FileSize":[B
    invoke-virtual {v5, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/win32/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 165
    .local v4, "targetRoot":[B
    iget-object v5, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/win32/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 166
    .restart local v0    # "targetLeaf":[B
    const/4 v5, 0x2

    new-array v15, v5, [B

    fill-array-data v15, :array_c

    filled-new-array {v15, v3}, [[B

    move-result-object v5

    invoke-static {v5}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v5

    move-object/from16 v2, v25

    move-object/from16 v32, v4

    move-object v4, v0

    move-object/from16 v0, v32

    .line 169
    .end local v25    # "prefixRoot":[B
    .local v0, "targetRoot":[B
    .local v2, "prefixRoot":[B
    .local v4, "targetLeaf":[B
    .local v5, "itemData":[B
    :goto_2
    const/16 v15, 0x15

    new-array v15, v15, [B

    filled-new-array {v0, v15}, [[B

    move-result-object v15

    invoke-static {v15}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v15

    .line 171
    .end local v0    # "targetRoot":[B
    .local v15, "targetRoot":[B
    move-object/from16 v25, v3

    const/4 v0, 0x1

    .end local v3    # "CLSIDComputer":[B
    .local v25, "CLSIDComputer":[B
    new-array v3, v0, [B

    const/16 v16, 0x0

    aput-byte v16, v3, v16

    .line 172
    .local v3, "endOfString":[B
    invoke-static {v5}, Lcom/winlator/win32/MSLink;->generateIDLIST([B)[B

    move-result-object v0

    filled-new-array {v2, v15, v3}, [[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v28

    move-object/from16 v29, v2

    .end local v2    # "prefixRoot":[B
    .local v29, "prefixRoot":[B
    invoke-static/range {v28 .. v28}, Lcom/winlator/win32/MSLink;->generateIDLIST([B)[B

    move-result-object v2

    filled-new-array {v0, v2}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    .line 173
    .local v0, "IDListItems":[B
    if-eqz v4, :cond_5

    filled-new-array {v10, v4, v3}, [[B

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/win32/MSLink;->generateIDLIST([B)[B

    move-result-object v2

    filled-new-array {v0, v2}, [[B

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    :cond_5
    move-object v2, v0

    .line 174
    .end local v0    # "IDListItems":[B
    .local v2, "IDListItems":[B
    move-object/from16 v28, v3

    .end local v3    # "endOfString":[B
    .local v28, "endOfString":[B
    invoke-static {v2}, Lcom/winlator/win32/MSLink;->generateIDLIST([B)[B

    move-result-object v3

    .line 176
    .local v3, "IDList":[B
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    move-object/from16 v21, v0

    .line 178
    .local v21, "TerminalID":[B
    move-object/from16 v30, v2

    const/4 v2, 0x0

    .end local v2    # "IDListItems":[B
    .local v30, "IDListItems":[B
    new-array v0, v2, [B

    .line 179
    .local v0, "StringData":[B
    and-int/lit8 v2, v8, 0x20

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/winlator/win32/MSLink$LinkInfo;->arguments:Ljava/lang/String;

    invoke-static {v2}, Lcom/winlator/win32/MSLink;->generateStringData(Ljava/lang/String;)[B

    move-result-object v2

    filled-new-array {v0, v2}, [[B

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    .line 180
    :cond_6
    and-int/lit8 v2, v8, 0x40

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/winlator/win32/MSLink$LinkInfo;->iconLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/winlator/win32/MSLink;->generateStringData(Ljava/lang/String;)[B

    move-result-object v2

    filled-new-array {v0, v2}, [[B

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    :cond_7
    move-object v2, v0

    .line 182
    .end local v0    # "StringData":[B
    .local v2, "StringData":[B
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v31, v0

    .line 183
    .local v31, "os":Ljava/io/FileOutputStream;
    move-object/from16 v1, v31

    .end local v31    # "os":Ljava/io/FileOutputStream;
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 184
    invoke-virtual {v1, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 185
    invoke-virtual {v1, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 186
    invoke-virtual {v1, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 187
    invoke-virtual {v1, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-virtual {v1, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 189
    invoke-virtual {v1, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 190
    move-object/from16 v31, v4

    move-object/from16 v4, v27

    .end local v27    # "FileSize":[B
    .local v4, "FileSize":[B
    .local v31, "targetLeaf":[B
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 191
    move-object/from16 v27, v4

    move-object/from16 v4, v26

    .end local v26    # "IconIndex":[B
    .local v4, "IconIndex":[B
    .restart local v27    # "FileSize":[B
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 192
    move-object/from16 v26, v4

    move-object/from16 v4, v23

    .end local v23    # "ShowCommand":[B
    .local v4, "ShowCommand":[B
    .restart local v26    # "IconIndex":[B
    :try_start_4
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 193
    move-object/from16 v23, v4

    move-object/from16 v4, v18

    .end local v18    # "Hotkey":[B
    .local v4, "Hotkey":[B
    .restart local v23    # "ShowCommand":[B
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 194
    move-object/from16 v18, v4

    move-object/from16 v4, v19

    .end local v19    # "Reserved1":[B
    .local v4, "Reserved1":[B
    .restart local v18    # "Hotkey":[B
    :try_start_6
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 195
    move-object/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "Reserved2":[B
    .local v4, "Reserved2":[B
    .restart local v19    # "Reserved1":[B
    :try_start_7
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 196
    move-object/from16 v20, v4

    move-object/from16 v4, v22

    .end local v22    # "Reserved3":[B
    .local v4, "Reserved3":[B
    .restart local v20    # "Reserved2":[B
    :try_start_8
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 197
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 198
    move-object/from16 v22, v3

    move-object/from16 v3, v21

    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .local v22, "IDList":[B
    :try_start_9
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 200
    array-length v0, v2

    if-lez v0, :cond_8

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 182
    :catchall_0
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v0

    goto/16 :goto_4

    .line 201
    :cond_8
    :goto_3
    nop

    .line 202
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    .end local v1    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_6

    .line 182
    .end local v22    # "IDList":[B
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .local v3, "IDList":[B
    .restart local v21    # "TerminalID":[B
    :catchall_1
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .restart local v22    # "IDList":[B
    goto/16 :goto_4

    .end local v20    # "Reserved2":[B
    .local v3, "IDList":[B
    .local v4, "Reserved2":[B
    .restart local v21    # "TerminalID":[B
    .local v22, "Reserved3":[B
    :catchall_2
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .local v4, "Reserved3":[B
    .restart local v20    # "Reserved2":[B
    .local v22, "IDList":[B
    goto/16 :goto_4

    .end local v19    # "Reserved1":[B
    .local v3, "IDList":[B
    .local v4, "Reserved1":[B
    .restart local v21    # "TerminalID":[B
    .local v22, "Reserved3":[B
    :catchall_3
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .local v4, "Reserved3":[B
    .restart local v19    # "Reserved1":[B
    .local v22, "IDList":[B
    goto :goto_4

    .end local v18    # "Hotkey":[B
    .local v3, "IDList":[B
    .local v4, "Hotkey":[B
    .restart local v21    # "TerminalID":[B
    .local v22, "Reserved3":[B
    :catchall_4
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .local v4, "Reserved3":[B
    .restart local v18    # "Hotkey":[B
    .local v22, "IDList":[B
    goto :goto_4

    .end local v23    # "ShowCommand":[B
    .local v3, "IDList":[B
    .local v4, "ShowCommand":[B
    .restart local v21    # "TerminalID":[B
    .local v22, "Reserved3":[B
    :catchall_5
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .local v4, "Reserved3":[B
    .local v22, "IDList":[B
    .restart local v23    # "ShowCommand":[B
    goto :goto_4

    .end local v26    # "IconIndex":[B
    .local v3, "IDList":[B
    .local v4, "IconIndex":[B
    .restart local v21    # "TerminalID":[B
    .local v22, "Reserved3":[B
    :catchall_6
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .local v4, "Reserved3":[B
    .local v22, "IDList":[B
    .restart local v26    # "IconIndex":[B
    goto :goto_4

    .end local v27    # "FileSize":[B
    .local v3, "IDList":[B
    .local v4, "FileSize":[B
    .restart local v21    # "TerminalID":[B
    .local v22, "Reserved3":[B
    :catchall_7
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .local v4, "Reserved3":[B
    .local v22, "IDList":[B
    .restart local v27    # "FileSize":[B
    goto :goto_4

    .end local v31    # "targetLeaf":[B
    .local v3, "IDList":[B
    .local v4, "targetLeaf":[B
    .restart local v21    # "TerminalID":[B
    .local v22, "Reserved3":[B
    :catchall_8
    move-exception v0

    move-object/from16 v31, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v2    # "StringData":[B
    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .local v4, "Reserved3":[B
    .local v17, "StringData":[B
    .local v22, "IDList":[B
    .restart local v31    # "targetLeaf":[B
    :goto_4
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v21, v1

    goto :goto_5

    :catchall_9
    move-exception v0

    move-object/from16 v21, v1

    move-object v1, v0

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v21, "os":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "TerminalID":[B
    .end local v4    # "Reserved3":[B
    .end local v5    # "itemData":[B
    .end local v6    # "HeaderSize":[B
    .end local v7    # "LinkCLSID":[B
    .end local v8    # "linkFlags":I
    .end local v9    # "LinkFlags":[B
    .end local v10    # "prefixOfTarget":[B
    .end local v11    # "FileAttributes":[B
    .end local v12    # "WriteTime":[B
    .end local v13    # "AccessTime":[B
    .end local v14    # "CreationTime":[B
    .end local v15    # "targetRoot":[B
    .end local v17    # "StringData":[B
    .end local v18    # "Hotkey":[B
    .end local v19    # "Reserved1":[B
    .end local v20    # "Reserved2":[B
    .end local v22    # "IDList":[B
    .end local v23    # "ShowCommand":[B
    .end local v24    # "CLSIDNetwork":[B
    .end local v25    # "CLSIDComputer":[B
    .end local v26    # "IconIndex":[B
    .end local v27    # "FileSize":[B
    .end local v28    # "endOfString":[B
    .end local v29    # "prefixRoot":[B
    .end local v30    # "IDListItems":[B
    .end local v31    # "targetLeaf":[B
    .end local p0    # "linkInfo":Lcom/winlator/win32/MSLink$LinkInfo;
    .end local p1    # "outputFile":Ljava/io/File;
    :goto_5
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 203
    .end local v21    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "TerminalID":[B
    .restart local v4    # "Reserved3":[B
    .restart local v5    # "itemData":[B
    .restart local v6    # "HeaderSize":[B
    .restart local v7    # "LinkCLSID":[B
    .restart local v8    # "linkFlags":I
    .restart local v9    # "LinkFlags":[B
    .restart local v10    # "prefixOfTarget":[B
    .restart local v11    # "FileAttributes":[B
    .restart local v12    # "WriteTime":[B
    .restart local v13    # "AccessTime":[B
    .restart local v14    # "CreationTime":[B
    .restart local v15    # "targetRoot":[B
    .restart local v17    # "StringData":[B
    .restart local v18    # "Hotkey":[B
    .restart local v19    # "Reserved1":[B
    .restart local v20    # "Reserved2":[B
    .restart local v22    # "IDList":[B
    .restart local v23    # "ShowCommand":[B
    .restart local v24    # "CLSIDNetwork":[B
    .restart local v25    # "CLSIDComputer":[B
    .restart local v26    # "IconIndex":[B
    .restart local v27    # "FileSize":[B
    .restart local v28    # "endOfString":[B
    .restart local v29    # "prefixRoot":[B
    .restart local v30    # "IDListItems":[B
    .restart local v31    # "targetLeaf":[B
    .restart local p0    # "linkInfo":Lcom/winlator/win32/MSLink$LinkInfo;
    .restart local p1    # "outputFile":Ljava/io/File;
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v17    # "StringData":[B
    .end local v31    # "targetLeaf":[B
    .restart local v2    # "StringData":[B
    .local v3, "IDList":[B
    .local v4, "targetLeaf":[B
    .local v21, "TerminalID":[B
    .local v22, "Reserved3":[B
    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v31, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    .end local v2    # "StringData":[B
    .end local v21    # "TerminalID":[B
    .local v3, "TerminalID":[B
    .local v4, "Reserved3":[B
    .restart local v17    # "StringData":[B
    .local v22, "IDList":[B
    .restart local v31    # "targetLeaf":[B
    :goto_6
    nop

    .line 204
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1

    :array_0
    .array-data 1
        0x4ct
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x31t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x32t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        -0x3dt
        0x1t
        -0x7ft
    .end array-data

    :array_b
    .array-data 1
        0x1ft
        0x58t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1ft
        0x50t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static extractLinkInfo(Ljava/io/File;)Lcom/winlator/win32/MSLink$LinkInfo;
    .locals 20
    .param p0, "linkFile"    # Ljava/io/File;

    .line 209
    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static/range {p0 .. p0}, Lcom/winlator/core/FileUtils;->read(Ljava/io/File;)[B

    move-result-object v4

    .line 210
    .local v4, "bytes":[B
    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 212
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 213
    .local v6, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    const/16 v8, 0x4c

    if-ne v7, v8, :cond_19

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v19, v4

    goto/16 :goto_9

    .line 215
    :cond_1
    const/16 v5, 0x14

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 216
    .local v5, "LinkFlags":I
    const/16 v7, 0x38

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    .line 217
    .local v7, "IconIndex":I
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    const-string v8, ""

    .line 220
    .local v8, "driveLetter":Ljava/lang/String;
    const-string v9, ""

    .line 221
    .local v9, "path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 222
    .local v10, "isDirectory":Z
    const/4 v11, 0x0

    .line 224
    .local v11, "linkInfo":Lcom/winlator/win32/MSLink$LinkInfo;
    and-int/lit8 v12, v5, 0x1

    const-string v13, "\\"

    if-eqz v12, :cond_9

    .line 225
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 226
    .local v12, "IDListSize":S
    new-array v14, v0, [B

    fill-array-data v14, :array_0

    .line 227
    .local v14, "prefixOfDirectory":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 229
    .local v0, "prefixOfArchive":[B
    :goto_0
    if-le v12, v2, :cond_8

    .line 230
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    .line 231
    .local v15, "ItemIDSize":S
    add-int/lit8 v1, v15, -0x2

    new-array v1, v1, [B

    .line 232
    .local v1, "ItemData":[B
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 234
    invoke-static {v14, v1}, Lcom/winlator/core/ArrayUtils;->startsWith([B[B)Z

    move-result v17

    const-string v18, ""

    const/16 v2, 0xc

    if-eqz v17, :cond_3

    .line 235
    array-length v3, v1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/StringUtils;->fromANSIString([B)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v19, v4

    move-object v4, v13

    goto :goto_1

    :cond_2
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    .end local v4    # "bytes":[B
    .local v19, "bytes":[B
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .end local v9    # "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    const/4 v2, 0x1

    .line 238
    .end local v10    # "isDirectory":Z
    .local v2, "isDirectory":Z
    move v10, v2

    move-object v9, v3

    const/4 v2, 0x0

    goto :goto_3

    .line 239
    .end local v2    # "isDirectory":Z
    .end local v3    # "path":Ljava/lang/String;
    .end local v19    # "bytes":[B
    .restart local v4    # "bytes":[B
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "isDirectory":Z
    :cond_3
    move-object/from16 v19, v4

    .end local v4    # "bytes":[B
    .restart local v19    # "bytes":[B
    invoke-static {v0, v1}, Lcom/winlator/core/ArrayUtils;->startsWith([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 240
    array-length v3, v1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/StringUtils;->fromANSIString([B)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v13

    goto :goto_2

    :cond_4
    move-object/from16 v4, v18

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .end local v9    # "path":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 243
    .end local v10    # "isDirectory":Z
    .local v2, "isDirectory":Z
    move v10, v2

    move-object v9, v3

    const/4 v2, 0x0

    goto :goto_3

    .line 244
    .end local v2    # "isDirectory":Z
    .end local v3    # "path":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "isDirectory":Z
    :cond_5
    const/4 v2, 0x0

    aget-byte v3, v1, v2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_6

    aget-byte v3, v1, v2

    const/16 v4, 0x23

    if-ne v3, v4, :cond_7

    .line 245
    :cond_6
    array-length v3, v1

    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/winlator/core/StringUtils;->fromANSIString([B)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .line 248
    :cond_7
    :goto_3
    sub-int v3, v12, v15

    int-to-short v12, v3

    .line 249
    .end local v1    # "ItemData":[B
    .end local v15    # "ItemIDSize":S
    move-object/from16 v4, v19

    const/4 v1, 0x1

    const/4 v2, 0x2

    goto/16 :goto_0

    .line 251
    .end local v19    # "bytes":[B
    .restart local v4    # "bytes":[B
    :cond_8
    move-object/from16 v19, v4

    const/4 v2, 0x0

    .end local v4    # "bytes":[B
    .restart local v19    # "bytes":[B
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    goto :goto_4

    .line 224
    .end local v0    # "prefixOfArchive":[B
    .end local v12    # "IDListSize":S
    .end local v14    # "prefixOfDirectory":[B
    .end local v19    # "bytes":[B
    .restart local v4    # "bytes":[B
    :cond_9
    move-object/from16 v19, v4

    const/4 v2, 0x0

    .line 254
    .end local v4    # "bytes":[B
    .restart local v19    # "bytes":[B
    :goto_4
    const/4 v0, 0x2

    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_d

    .line 255
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 257
    .local v0, "oldPosition":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 258
    .local v1, "LinkInfoSize":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 259
    .local v3, "LinkInfoHeaderSize":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 261
    .local v4, "LinkInfoFlags":I
    const/16 v12, 0x24

    if-ge v3, v12, :cond_c

    const/4 v12, 0x2

    and-int/2addr v12, v4

    if-nez v12, :cond_c

    .line 262
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 263
    .local v12, "VolumeIDOffset":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 264
    .local v14, "LocalBasePathOffset":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 265
    .local v15, "CommonNetworkRelativeLinkOffset":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 267
    .local v17, "CommonPathSuffixOffset":I
    const/16 v16, 0x1

    and-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_b

    .line 268
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v18

    add-int/lit8 v2, v18, 0x11

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    invoke-static {v6}, Lcom/winlator/win32/MSLink;->readNullTerminatedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "LocalBasePath":Ljava/lang/String;
    if-nez v11, :cond_a

    new-instance v18, Lcom/winlator/win32/MSLink$LinkInfo;

    invoke-direct/range {v18 .. v18}, Lcom/winlator/win32/MSLink$LinkInfo;-><init>()V

    move-object/from16 v11, v18

    .line 271
    :cond_a
    iput-object v2, v11, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    .line 274
    .end local v2    # "LocalBasePath":Ljava/lang/String;
    :cond_b
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    .line 275
    .end local v12    # "VolumeIDOffset":I
    .end local v14    # "LocalBasePathOffset":I
    .end local v15    # "CommonNetworkRelativeLinkOffset":I
    .end local v17    # "CommonPathSuffixOffset":I
    goto :goto_5

    .line 276
    :cond_c
    add-int v2, v0, v1

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 279
    .end local v0    # "oldPosition":I
    .end local v1    # "LinkInfoSize":I
    .end local v3    # "LinkInfoHeaderSize":I
    .end local v4    # "LinkInfoFlags":I
    :cond_d
    :goto_5
    const-string v0, "[A-Za-z]:\\\\?"

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 280
    invoke-virtual {v8, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 281
    :cond_e
    if-nez v11, :cond_f

    new-instance v0, Lcom/winlator/win32/MSLink$LinkInfo;

    invoke-direct {v0}, Lcom/winlator/win32/MSLink$LinkInfo;-><init>()V

    move-object v11, v0

    .line 282
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    .line 283
    iput-boolean v10, v11, Lcom/winlator/win32/MSLink$LinkInfo;->isDirectory:Z

    .line 284
    if-eqz v7, :cond_10

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    goto :goto_6

    :cond_10
    const/4 v1, 0x1

    const/4 v0, -0x1

    :goto_6
    iput v0, v11, Lcom/winlator/win32/MSLink$LinkInfo;->iconIndex:I

    goto :goto_7

    .line 279
    :cond_11
    const/4 v1, 0x1

    .line 287
    :goto_7
    and-int/lit16 v0, v5, 0x80

    if-eqz v0, :cond_12

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    :goto_8
    move v0, v1

    .line 289
    .local v0, "isUnicode":Z
    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_13

    .line 290
    invoke-static {v6, v0}, Lcom/winlator/win32/MSLink;->readStringData(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    .line 293
    :cond_13
    and-int/lit8 v1, v5, 0x8

    if-eqz v1, :cond_14

    .line 294
    invoke-static {v6, v0}, Lcom/winlator/win32/MSLink;->readStringData(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    .line 297
    :cond_14
    and-int/lit8 v1, v5, 0x10

    if-eqz v1, :cond_15

    .line 298
    invoke-static {v6, v0}, Lcom/winlator/win32/MSLink;->readStringData(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    .line 301
    :cond_15
    and-int/lit8 v1, v5, 0x20

    if-eqz v1, :cond_16

    .line 302
    invoke-static {v6, v0}, Lcom/winlator/win32/MSLink;->readStringData(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "arguments":Ljava/lang/String;
    if-eqz v11, :cond_16

    iput-object v1, v11, Lcom/winlator/win32/MSLink$LinkInfo;->arguments:Ljava/lang/String;

    .line 306
    .end local v1    # "arguments":Ljava/lang/String;
    :cond_16
    and-int/lit8 v1, v5, 0x40

    if-eqz v1, :cond_18

    .line 307
    invoke-static {v6, v0}, Lcom/winlator/win32/MSLink;->readStringData(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "iconLocation":Ljava/lang/String;
    if-eqz v11, :cond_18

    .line 309
    if-eqz v1, :cond_17

    const-string v2, "shell32.dll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v1, "C:/windows/system32/shell32.dll"

    .line 310
    :cond_17
    iput-object v1, v11, Lcom/winlator/win32/MSLink$LinkInfo;->iconLocation:Ljava/lang/String;

    .line 314
    .end local v1    # "iconLocation":Ljava/lang/String;
    :cond_18
    return-object v11

    .line 213
    .end local v0    # "isUnicode":Z
    .end local v5    # "LinkFlags":I
    .end local v7    # "IconIndex":I
    .end local v8    # "driveLetter":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "isDirectory":Z
    .end local v11    # "linkInfo":Lcom/winlator/win32/MSLink$LinkInfo;
    .end local v19    # "bytes":[B
    .local v4, "bytes":[B
    :cond_19
    move-object/from16 v19, v4

    .end local v4    # "bytes":[B
    .restart local v19    # "bytes":[B
    :goto_9
    return-object v5

    nop

    :array_0
    .array-data 1
        0x31t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x32t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static generateIDLIST([B)[B
    .locals 3
    .param p0, "bytes"    # [B

    .line 90
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p0

    add-int/2addr v2, v0

    int-to-short v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    filled-new-array {v1, p0}, [[B

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/ArrayUtils;->concat([[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static generateStringData(Ljava/lang/String;)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .line 79
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private static readNullTerminatedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 106
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 107
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 109
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    move v3, v2

    .local v3, "value":B
    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-byte v3, v0, v1

    move v1, v2

    goto :goto_0

    .line 110
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static readStringData(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "isUnicode"    # Z

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 96
    .local v0, "CountCharacters":S
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 98
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    mul-int/2addr v1, v0

    new-array v1, v1, [B

    .line 99
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 100
    new-instance v2, Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    :cond_2
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 101
    .local v2, "string":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 102
    .local v4, "indexOfNull":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    return-object v3
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 74
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static twoCharsToByte(CC)B
    .locals 2
    .param p0, "chr1"    # C
    .param p1, "chr2"    # C

    .line 48
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Lcom/winlator/win32/MSLink;->charToHexDigit(C)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Lcom/winlator/win32/MSLink;->charToHexDigit(C)I

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method
