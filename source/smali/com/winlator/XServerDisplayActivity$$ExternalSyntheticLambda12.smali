.class public final synthetic Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/TarCompressorUtils$OnExtractFileListener;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>([Z[Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda12;->f$0:[Z

    iput-object p2, p0, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda12;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final onExtractFile(Ljava/io/File;J)Ljava/io/File;
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda12;->f$0:[Z

    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda12;->f$1:[Z

    invoke-static {v0, v1, p1, p2, p3}, Lcom/winlator/XServerDisplayActivity;->$r8$lambda$RYGA-C_15AUrldPnHocR4c_cLhU([Z[ZLjava/io/File;J)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
