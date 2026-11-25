.class Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;
.super Ljava/lang/Object;
.source "BaseFileManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/BaseFileManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Clipboard"
.end annotation


# instance fields
.field final cutMode:Z

.field final files:[Ljava/io/File;

.field targetDir:Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/io/File;Z)V
    .locals 0
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "cutMode"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;->files:[Ljava/io/File;

    .line 58
    iput-boolean p2, p0, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;->cutMode:Z

    .line 59
    return-void
.end method
