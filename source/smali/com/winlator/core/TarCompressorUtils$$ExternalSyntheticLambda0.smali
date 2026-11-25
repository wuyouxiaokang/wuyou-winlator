.class public final synthetic Lcom/winlator/core/TarCompressorUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/TarCompressorUtils$OnExtractFileListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/core/TarCompressorUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final onExtractFile(Ljava/io/File;J)Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/core/TarCompressorUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2, p3}, Lcom/winlator/core/TarCompressorUtils;->$r8$lambda$PjRG24tzkwNzEtq4sSS9t5GTTyw(Ljava/util/concurrent/atomic/AtomicLong;Ljava/io/File;J)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
