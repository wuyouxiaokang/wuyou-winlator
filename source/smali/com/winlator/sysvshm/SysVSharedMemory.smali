.class public Lcom/winlator/sysvshm/SysVSharedMemory;
.super Ljava/lang/Object;
.source "SysVSharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    }
.end annotation


# instance fields
.field private maxSHMemoryId:I

.field private final shmemories:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->maxSHMemoryId:I

    return-void
.end method

.method private static native ashmemCreateRegion(IJ)I
.end method

.method public static native createMemoryFd(Ljava/lang/String;I)I
.end method

.method public static native mapSHMSegment(IJIZ)Ljava/nio/ByteBuffer;
.end method

.method public static native unmapSHMSegment(Ljava/nio/ByteBuffer;J)V
.end method


# virtual methods
.method public attach(I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "shmid"    # I

    .line 65
    iget-object v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;

    .line 67
    .local v1, "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    if-eqz v1, :cond_1

    .line 68
    invoke-static {v1}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$300(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$000(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)I

    move-result v2

    invoke-static {v1}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$200(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/winlator/sysvshm/SysVSharedMemory;->mapSHMSegment(IJIZ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$302(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 72
    .end local v1    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 69
    .restart local v1    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$300(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 71
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 72
    .end local v1    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete(I)V
    .locals 4
    .param p1, "shmid"    # I

    .line 46
    iget-object v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;

    .line 48
    .local v1, "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    if-eqz v1, :cond_1

    .line 49
    invoke-static {v1}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$000(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 50
    invoke-static {v1}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$000(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)I

    move-result v2

    invoke-static {v2}, Lcom/winlator/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 51
    invoke-static {v1, v3}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$002(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;I)I

    goto :goto_0

    .line 55
    .end local v1    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 53
    .restart local v1    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    .end local v1    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :cond_1
    monitor-exit v0

    .line 56
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteAll()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    nop

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/winlator/sysvshm/SysVSharedMemory;->delete(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 62
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public detach(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;

    .line 79
    .local v2, "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    invoke-static {v2}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$300(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 80
    invoke-static {v2}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$300(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 81
    invoke-static {v2}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$300(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v2}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$200(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/winlator/sysvshm/SysVSharedMemory;->unmapSHMSegment(Ljava/nio/ByteBuffer;J)V

    .line 82
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$302(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 87
    .end local v1    # "i":I
    .end local v2    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 79
    .restart local v1    # "i":I
    .restart local v2    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :cond_0
    nop

    .line 77
    .end local v2    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(J)I
    .locals 6
    .param p1, "size"    # J

    .line 31
    iget-object v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 33
    .local v1, "index":I
    invoke-static {v1, p1, p2}, Lcom/winlator/sysvshm/SysVSharedMemory;->ashmemCreateRegion(IJ)I

    move-result v2

    .line 34
    .local v2, "fd":I
    if-gez v2, :cond_0

    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 42
    .end local v1    # "index":I
    .end local v2    # "fd":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 36
    .restart local v1    # "index":I
    .restart local v2    # "fd":I
    :cond_0
    new-instance v3, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;-><init>(Lcom/winlator/sysvshm/SysVSharedMemory$1;)V

    .line 37
    .local v3, "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    iget v4, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->maxSHMemoryId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->maxSHMemoryId:I

    .line 38
    .local v4, "id":I
    invoke-static {v3, v2}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$002(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;I)I

    .line 39
    invoke-static {v3, p1, p2}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$202(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;J)J

    .line 40
    iget-object v5, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    monitor-exit v0

    return v4

    .line 42
    .end local v1    # "index":I
    .end local v2    # "fd":I
    .end local v3    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    .end local v4    # "id":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFd(I)I
    .locals 3
    .param p1, "shmid"    # I

    .line 24
    iget-object v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/winlator/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;

    .line 26
    .local v1, "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->access$000(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)I

    move-result v2

    goto :goto_0

    .line 27
    .end local v1    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 26
    .restart local v1    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :cond_0
    const/4 v2, -0x1

    :goto_0
    monitor-exit v0

    return v2

    .line 27
    .end local v1    # "shmemory":Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
