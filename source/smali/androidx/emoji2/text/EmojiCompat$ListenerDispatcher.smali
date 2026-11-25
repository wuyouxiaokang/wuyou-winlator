.class Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;
.super Ljava/lang/Object;
.source "EmojiCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDispatcher"
.end annotation


# instance fields
.field private final mInitCallbacks:Ljava/util/List;

.field private final mLoadState:I

.field private final mThrowable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompat$InitCallback;I)V
    .locals 2
    .param p1, "initCallback"    # Landroidx/emoji2/text/EmojiCompat$InitCallback;
    .param p2, "loadState"    # I

    .line 1374
    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    filled-new-array {v0}, [Landroidx/emoji2/text/EmojiCompat$InitCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    .line 1376
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;I)V
    .locals 1
    .param p2, "loadState"    # I

    .line 1380
    .local p1, "initCallbacks":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/emoji2/text/EmojiCompat$InitCallback;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    .line 1381
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;ILjava/lang/Throwable;)V
    .locals 1
    .param p2, "loadState"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 1385
    .local p1, "initCallbacks":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/emoji2/text/EmojiCompat$InitCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1386
    const-string v0, "initCallbacks cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    .line 1388
    iput p2, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mLoadState:I

    .line 1389
    iput-object p3, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mThrowable:Ljava/lang/Throwable;

    .line 1390
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1394
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1395
    .local v0, "size":I
    iget v1, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mLoadState:I

    packed-switch v1, :pswitch_data_0

    .line 1403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1404
    iget-object v2, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    iget-object v3, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mThrowable:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onFailed(Ljava/lang/Throwable;)V

    .line 1403
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    .end local v1    # "i":I
    :pswitch_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1398
    iget-object v2, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {v2}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onInitialized()V

    .line 1397
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 1400
    .end local v1    # "i":I
    nop

    .line 1408
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
