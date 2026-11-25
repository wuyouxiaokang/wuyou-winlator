.class public Lcom/winlator/widget/LogView;
.super Landroid/view/View;
.source "LogView.java"


# instance fields
.field private final defaultTextSize:F

.field private isActionDown:Z

.field private final lastPoint:Landroid/graphics/PointF;

.field private final lines:Ljava/util/ArrayList;

.field private final lock:Ljava/lang/Object;

.field private final minScrollThumbSize:F

.field private final paint:Landroid/graphics/Paint;

.field private final printStream:Ljava/io/PrintStream;

.field private final rowHeight:F

.field private final scrollPosition:Landroid/graphics/PointF;

.field private final scrollSize:Landroid/graphics/PointF;

.field private scrollingHorizontally:Z

.field private scrollingVertically:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/widget/LogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/winlator/widget/LogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    .line 37
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/winlator/widget/LogView;->rowHeight:F

    .line 38
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/winlator/widget/LogView;->defaultTextSize:F

    .line 39
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/winlator/widget/LogView;->minScrollThumbSize:F

    .line 40
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/winlator/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    .line 41
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    .line 42
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/widget/LogView;->isActionDown:Z

    .line 44
    iput-boolean v0, p0, Lcom/winlator/widget/LogView;->scrollingHorizontally:Z

    .line 45
    iput-boolean v0, p0, Lcom/winlator/widget/LogView;->scrollingVertically:Z

    .line 46
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/winlator/widget/LogView;->lock:Ljava/lang/Object;

    .line 64
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/winlator/widget/LogView;->getLogFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "log_file"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "logPath":Ljava/lang/String;
    const-string v3, "save_logs_to_file"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    .local v0, "saveToFile":Z
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "logFile":Ljava/io/File;
    invoke-static {v3}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 71
    if-eqz v0, :cond_0

    .line 72
    const/4 v4, 0x0

    .line 74
    .local v4, "printStream":Ljava/io/PrintStream;
    :try_start_0
    new-instance v5, Ljava/io/PrintStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v8, 0x10000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 76
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    .line 77
    :goto_1
    iput-object v4, p0, Lcom/winlator/widget/LogView;->printStream:Ljava/io/PrintStream;

    .line 78
    .end local v4    # "printStream":Ljava/io/PrintStream;
    goto :goto_2

    .line 79
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/winlator/widget/LogView;->printStream:Ljava/io/PrintStream;

    .line 80
    :goto_2
    return-void
.end method

.method private computeScrollSize()V
    .locals 7

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 192
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 193
    .local v1, "height":I
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 195
    :cond_1
    const/4 v2, 0x0

    .line 196
    .local v2, "maxWidth":F
    iget-object v3, p0, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/winlator/widget/LogView;->defaultTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v5, p0, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    .end local v3    # "i":I
    .end local v4    # "count":I
    :cond_2
    iget-object v3, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 199
    iget-object v3, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v4, p0, Lcom/winlator/widget/LogView;->rowHeight:F

    iget-object v5, p0, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 200
    iget-object v3, p0, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/winlator/widget/LogView;->getScrollMaxTop()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 201
    return-void

    .line 193
    .end local v2    # "maxWidth":F
    :goto_1
    return-void
.end method

.method private drawScrollThumbs(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 142
    invoke-virtual {p0}, Lcom/winlator/widget/LogView;->getScrollThumbX()F

    move-result v8

    .line 143
    .local v8, "scrollThumbX":F
    invoke-virtual {p0}, Lcom/winlator/widget/LogView;->getScrollThumbY()F

    move-result v9

    .line 144
    .local v9, "scrollThumbY":F
    invoke-virtual {p0}, Lcom/winlator/widget/LogView;->getScrollThumbWidth()F

    move-result v10

    .line 145
    .local v10, "scrollThumbWidth":F
    invoke-virtual {p0}, Lcom/winlator/widget/LogView;->getScrollThumbHeight()F

    move-result v11

    .line 147
    .local v11, "scrollThumbHeight":F
    iget-object v0, p0, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget v0, p0, Lcom/winlator/widget/LogView;->minScrollThumbSize:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v12, v0, v1

    .line 150
    .local v12, "radius":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/winlator/widget/LogView;->minScrollThumbSize:F

    sub-float v2, v0, v1

    add-float v3, v8, v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v7, p0, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v5, v12

    move v6, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/winlator/widget/LogView;->minScrollThumbSize:F

    sub-float v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-float v4, v9, v11

    iget-object v7, p0, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method public static getLogFile()Ljava/io/File;
    .locals 3

    .line 229
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Winlator"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 231
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "logs.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/winlator/widget/LogView;->printStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/winlator/widget/LogView;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 213
    iget-object v0, p0, Lcom/winlator/widget/LogView;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/winlator/widget/LogView;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    .line 222
    .end local v1    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 219
    .restart local v1    # "content":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "logLine":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-direct {p0}, Lcom/winlator/widget/LogView;->computeScrollSize()V

    .line 222
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "logLine":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 226
    :goto_0
    return-void

    .line 222
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/winlator/widget/LogView;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 208
    return-void

    .line 206
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exportToFile()V
    .locals 8

    .line 235
    invoke-static {}, Lcom/winlator/widget/LogView;->getLogFile()Ljava/io/File;

    move-result-object v0

    .line 236
    .local v0, "logFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "logPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 238
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    iget-object v3, p0, Lcom/winlator/widget/LogView;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    :try_start_2
    iget-object v4, p0, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "line":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .end local v5    # "line":Ljava/lang/String;
    goto :goto_0

    .line 241
    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    :try_start_3
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 245
    .local v4, "context":Landroid/content/Context;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f1000e4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 246
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "context":Landroid/content/Context;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 247
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_1

    .line 238
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 241
    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "logFile":Ljava/io/File;
    .end local v1    # "logPath":Ljava/lang/String;
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 238
    .restart local v0    # "logFile":Ljava/io/File;
    .restart local v1    # "logPath":Ljava/lang/String;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "logFile":Ljava/io/File;
    .end local v1    # "logPath":Ljava/lang/String;
    :goto_4
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 248
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "logFile":Ljava/io/File;
    .restart local v1    # "logPath":Ljava/lang/String;
    :goto_5
    return-void
.end method

.method public getScrollMaxLeft()F
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getScrollMaxTop()F
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getScrollThumbHeight()F
    .locals 3

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 184
    .local v0, "height":F
    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/winlator/widget/LogView;->getScrollMaxTop()F

    move-result v1

    iget-object v2, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    iget v2, p0, Lcom/winlator/widget/LogView;->minScrollThumbSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 187
    :cond_0
    return v2
.end method

.method public getScrollThumbWidth()F
    .locals 3

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 176
    .local v0, "width":F
    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/winlator/widget/LogView;->getScrollMaxLeft()F

    move-result v1

    iget-object v2, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    iget v2, p0, Lcom/winlator/widget/LogView;->minScrollThumbSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 179
    :cond_0
    return v2
.end method

.method public getScrollThumbX()F
    .locals 3

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 164
    .local v0, "width":F
    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float v2, v0, v2

    mul-float/2addr v1, v2

    return v1

    .line 165
    :cond_0
    const v1, -0x800001

    return v1
.end method

.method public getScrollThumbY()F
    .locals 3

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 170
    .local v0, "height":F
    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/winlator/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float v2, v0, v2

    mul-float/2addr v1, v2

    return v1

    .line 171
    :cond_0
    const v1, -0x800001

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 94
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 96
    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 98
    .local v10, "height":I
    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    :cond_0
    goto/16 :goto_5

    .line 100
    :cond_1
    iget-object v11, v1, Lcom/winlator/widget/LogView;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 101
    :try_start_0
    iget-object v0, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    iget-object v2, v1, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    iget-object v2, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    const v3, 0x7f0400d5

    invoke-static {v0, v3}, Lcom/winlator/core/AppUtils;->getThemeColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100131

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "text":Ljava/lang/String;
    int-to-float v3, v9

    iget-object v4, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v12

    .line 109
    .local v3, "centerX":F
    int-to-float v4, v10

    iget-object v5, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v12

    iget-object v5, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    .line 110
    .local v4, "centerY":F
    iget-object v5, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 111
    monitor-exit v11

    return-void

    .line 138
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "centerX":F
    .end local v4    # "centerY":F
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 114
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v2, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/winlator/widget/LogView;->defaultTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    iget-object v2, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v2

    move v13, v2

    .line 117
    .local v13, "textHeight":F
    iget-object v2, v1, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    .line 118
    .local v2, "rowY":F
    const v3, 0x7f0400d0

    invoke-static {v0, v3}, Lcom/winlator/core/AppUtils;->getThemeColor(Landroid/content/Context;I)I

    move-result v3

    move v14, v3

    .line 119
    .local v14, "colorPrimarySurface":I
    const v3, 0x7f0400d4

    invoke-static {v0, v3}, Lcom/winlator/core/AppUtils;->getThemeColor(Landroid/content/Context;I)I

    move-result v3

    move v15, v3

    .line 120
    .local v15, "colorSecondarySurface":I
    const v3, 0x7f0400d1

    invoke-static {v0, v3}, Lcom/winlator/core/AppUtils;->getThemeColor(Landroid/content/Context;I)I

    move-result v3

    move v7, v3

    .line 122
    .local v7, "colorPrimaryText":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, v1, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v4

    move/from16 v16, v2

    move v5, v3

    .end local v2    # "rowY":F
    .end local v3    # "i":I
    .local v5, "i":I
    .local v6, "count":I
    .local v16, "rowY":F
    :goto_0
    if-ge v5, v6, :cond_6

    .line 123
    iget v2, v1, Lcom/winlator/widget/LogView;->rowHeight:F

    add-float v2, v16, v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    int-to-float v2, v10

    cmpl-float v2, v16, v2

    if-ltz v2, :cond_3

    move/from16 v19, v6

    move v4, v12

    move v12, v7

    goto :goto_2

    .line 128
    :cond_3
    iget-object v2, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    rem-int/lit8 v3, v5, 0x2

    if-eqz v3, :cond_4

    move v3, v14

    goto :goto_1

    :cond_4
    move v3, v15

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v2, v1, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v3, v2

    int-to-float v4, v9

    iget v2, v1, Lcom/winlator/widget/LogView;->rowHeight:F

    add-float v17, v16, v2

    iget-object v2, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move/from16 v19, v4

    move/from16 v4, v16

    move/from16 v20, v5

    .end local v5    # "i":I
    .local v20, "i":I
    move/from16 v5, v19

    move/from16 v19, v6

    .end local v6    # "count":I
    .local v19, "count":I
    move/from16 v6, v17

    move v12, v7

    .end local v7    # "colorPrimaryText":I
    .local v12, "colorPrimaryText":I
    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 131
    iget-object v2, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v2, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float v2, v16, v2

    iget v3, v1, Lcom/winlator/widget/LogView;->rowHeight:F

    sub-float/2addr v3, v13

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 133
    .local v2, "centerY":F
    iget-object v3, v1, Lcom/winlator/widget/LogView;->lines:Ljava/util/ArrayList;

    move/from16 v5, v20

    .end local v20    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v1, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    neg-float v6, v6

    iget-object v7, v1, Lcom/winlator/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v6, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    iget v3, v1, Lcom/winlator/widget/LogView;->rowHeight:F

    add-float v16, v16, v3

    goto :goto_3

    .line 123
    .end local v2    # "centerY":F
    .end local v12    # "colorPrimaryText":I
    .end local v19    # "count":I
    .restart local v6    # "count":I
    .restart local v7    # "colorPrimaryText":I
    :cond_5
    move/from16 v19, v6

    move v4, v12

    move v12, v7

    .line 124
    .end local v6    # "count":I
    .end local v7    # "colorPrimaryText":I
    .restart local v12    # "colorPrimaryText":I
    .restart local v19    # "count":I
    :goto_2
    iget v2, v1, Lcom/winlator/widget/LogView;->rowHeight:F

    add-float v16, v16, v2

    .line 125
    nop

    .line 122
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v7, v12

    move/from16 v6, v19

    move v12, v4

    goto :goto_0

    .end local v12    # "colorPrimaryText":I
    .end local v19    # "count":I
    .restart local v6    # "count":I
    .restart local v7    # "colorPrimaryText":I
    :cond_6
    move/from16 v19, v6

    move v12, v7

    .line 137
    .end local v5    # "i":I
    .end local v6    # "count":I
    .end local v7    # "colorPrimaryText":I
    .restart local v12    # "colorPrimaryText":I
    invoke-direct/range {p0 .. p1}, Lcom/winlator/widget/LogView;->drawScrollThumbs(Landroid/graphics/Canvas;)V

    .line 138
    .end local v0    # "context":Landroid/content/Context;
    .end local v12    # "colorPrimaryText":I
    .end local v13    # "textHeight":F
    .end local v14    # "colorPrimarySurface":I
    .end local v15    # "colorSecondarySurface":I
    .end local v16    # "rowY":F
    monitor-exit v11

    .line 139
    return-void

    .line 138
    :goto_4
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 98
    :goto_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 89
    invoke-direct {p0}, Lcom/winlator/widget/LogView;->computeScrollSize()V

    .line 90
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 260
    :pswitch_0
    iget-boolean v0, p0, Lcom/winlator/widget/LogView;->isActionDown:Z

    if-eqz v0, :cond_4

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/winlator/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 262
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/winlator/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    .line 264
    .local v1, "dy":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iput-boolean v2, p0, Lcom/winlator/widget/LogView;->scrollingHorizontally:Z

    .line 265
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iput-boolean v2, p0, Lcom/winlator/widget/LogView;->scrollingVertically:Z

    .line 267
    :cond_1
    iget-boolean v3, p0, Lcom/winlator/widget/LogView;->scrollingHorizontally:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/winlator/widget/LogView;->getScrollMaxLeft()F

    move-result v6

    invoke-static {v5, v4, v6}, Lcom/winlator/math/Mathf;->clamp(FFF)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 269
    iget-object v3, p0, Lcom/winlator/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 273
    :cond_2
    iget-boolean v3, p0, Lcom/winlator/widget/LogView;->scrollingVertically:Z

    if-eqz v3, :cond_3

    .line 274
    iget-object v3, p0, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/winlator/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v1

    invoke-virtual {p0}, Lcom/winlator/widget/LogView;->getScrollMaxTop()F

    move-result v6

    invoke-static {v5, v4, v6}, Lcom/winlator/math/Mathf;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 275
    iget-object v3, p0, Lcom/winlator/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 278
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :cond_3
    goto :goto_0

    .line 281
    :pswitch_1
    iput-boolean v1, p0, Lcom/winlator/widget/LogView;->isActionDown:Z

    goto :goto_0

    .line 254
    :pswitch_2
    iget-object v0, p0, Lcom/winlator/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 255
    iput-boolean v2, p0, Lcom/winlator/widget/LogView;->isActionDown:Z

    .line 256
    iput-boolean v1, p0, Lcom/winlator/widget/LogView;->scrollingHorizontally:Z

    .line 257
    iput-boolean v1, p0, Lcom/winlator/widget/LogView;->scrollingVertically:Z

    .line 258
    nop

    .line 285
    :cond_4
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
