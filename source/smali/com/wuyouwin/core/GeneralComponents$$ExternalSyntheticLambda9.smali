.class public final synthetic Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onExtractFile(Ljava/io/File;J)Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/wuyouwin/core/GeneralComponents;->$r8$lambda$TkqwpCVXpZMJVqU5Py-QC09yMc0(Ljava/lang/String;Ljava/io/File;J)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
