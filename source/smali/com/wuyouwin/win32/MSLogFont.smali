.class public Lcom/wuyouwin/win32/MSLogFont;
.super Ljava/lang/Object;
.source "MSLogFont.java"


# instance fields
.field private charSet:B

.field private clipPrecision:B

.field private escapement:I

.field private faceName:Ljava/lang/String;

.field private height:I

.field private italic:B

.field private orientation:I

.field private outPrecision:B

.field private pitchAndFamily:B

.field private quality:B

.field private strikeOut:B

.field private underline:B

.field private weight:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, -0xb

    iput v0, p0, Lcom/wuyouwin/win32/MSLogFont;->height:I

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/win32/MSLogFont;->width:I

    .line 9
    iput v0, p0, Lcom/wuyouwin/win32/MSLogFont;->escapement:I

    .line 10
    iput v0, p0, Lcom/wuyouwin/win32/MSLogFont;->orientation:I

    .line 11
    const/16 v1, 0x190

    iput v1, p0, Lcom/wuyouwin/win32/MSLogFont;->weight:I

    .line 12
    iput-byte v0, p0, Lcom/wuyouwin/win32/MSLogFont;->italic:B

    .line 13
    iput-byte v0, p0, Lcom/wuyouwin/win32/MSLogFont;->underline:B

    .line 14
    iput-byte v0, p0, Lcom/wuyouwin/win32/MSLogFont;->strikeOut:B

    .line 15
    iput-byte v0, p0, Lcom/wuyouwin/win32/MSLogFont;->charSet:B

    .line 16
    iput-byte v0, p0, Lcom/wuyouwin/win32/MSLogFont;->outPrecision:B

    .line 17
    iput-byte v0, p0, Lcom/wuyouwin/win32/MSLogFont;->clipPrecision:B

    .line 18
    iput-byte v0, p0, Lcom/wuyouwin/win32/MSLogFont;->quality:B

    .line 19
    const/16 v0, 0x22

    iput-byte v0, p0, Lcom/wuyouwin/win32/MSLogFont;->pitchAndFamily:B

    .line 20
    const-string v0, "Tahoma"

    iput-object v0, p0, Lcom/wuyouwin/win32/MSLogFont;->faceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromByteArray([B)Lcom/wuyouwin/win32/MSLogFont;
    .locals 3
    .param p1, "byteArray"    # [B

    .line 169
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x5c

    if-ge v0, v1, :cond_1

    :cond_0
    goto :goto_2

    .line 170
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/wuyouwin/win32/MSLogFont;->height:I

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/wuyouwin/win32/MSLogFont;->width:I

    .line 173
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/wuyouwin/win32/MSLogFont;->escapement:I

    .line 174
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/wuyouwin/win32/MSLogFont;->orientation:I

    .line 175
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/wuyouwin/win32/MSLogFont;->weight:I

    .line 176
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->italic:B

    .line 177
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->underline:B

    .line 178
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->strikeOut:B

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->charSet:B

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->outPrecision:B

    .line 181
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->clipPrecision:B

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->quality:B

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->pitchAndFamily:B

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-lez v2, :cond_3

    .line 187
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    .line 188
    .local v2, "chr":C
    if-nez v2, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .end local v2    # "chr":C
    goto :goto_0

    .line 191
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wuyouwin/win32/MSLogFont;->faceName:Ljava/lang/String;

    .line 192
    return-object p0

    .line 169
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-object p0
.end method

.method public getFaceName()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/wuyouwin/win32/MSLogFont;->faceName:Ljava/lang/String;

    return-object v0
.end method

.method public setFaceName(Ljava/lang/String;)Lcom/wuyouwin/win32/MSLogFont;
    .locals 0
    .param p1, "faceName"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/wuyouwin/win32/MSLogFont;->faceName:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setWeight(I)Lcom/wuyouwin/win32/MSLogFont;
    .locals 0
    .param p1, "weight"    # I

    .line 63
    iput p1, p0, Lcom/wuyouwin/win32/MSLogFont;->weight:I

    .line 64
    return-object p0
.end method

.method public toByteArray()[B
    .locals 3

    .line 149
    const/16 v0, 0x5c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    .local v0, "data":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/wuyouwin/win32/MSLogFont;->height:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    iget v1, p0, Lcom/wuyouwin/win32/MSLogFont;->width:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    iget v1, p0, Lcom/wuyouwin/win32/MSLogFont;->escapement:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    iget v1, p0, Lcom/wuyouwin/win32/MSLogFont;->orientation:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 154
    iget v1, p0, Lcom/wuyouwin/win32/MSLogFont;->weight:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    iget-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->italic:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    iget-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->underline:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->strikeOut:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    iget-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->charSet:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    iget-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->outPrecision:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 160
    iget-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->clipPrecision:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    iget-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->quality:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    iget-byte v1, p0, Lcom/wuyouwin/win32/MSLogFont;->pitchAndFamily:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wuyouwin/win32/MSLogFont;->faceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/wuyouwin/win32/MSLogFont;->faceName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
