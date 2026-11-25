.class abstract synthetic Lcom/winlator/contentdialog/FileInfoDialog$1;
.super Ljava/lang/Object;
.source "FileInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/contentdialog/FileInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$winlator$container$FileInfo$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    invoke-static {}, Lcom/winlator/container/FileInfo$Type;->values()[Lcom/winlator/container/FileInfo$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/winlator/contentdialog/FileInfoDialog$1;->$SwitchMap$com$winlator$container$FileInfo$Type:[I

    :try_start_0
    sget-object v0, Lcom/winlator/contentdialog/FileInfoDialog$1;->$SwitchMap$com$winlator$container$FileInfo$Type:[I

    sget-object v1, Lcom/winlator/container/FileInfo$Type;->FILE:Lcom/winlator/container/FileInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/winlator/contentdialog/FileInfoDialog$1;->$SwitchMap$com$winlator$container$FileInfo$Type:[I

    sget-object v1, Lcom/winlator/container/FileInfo$Type;->DRIVE:Lcom/winlator/container/FileInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/winlator/contentdialog/FileInfoDialog$1;->$SwitchMap$com$winlator$container$FileInfo$Type:[I

    sget-object v1, Lcom/winlator/container/FileInfo$Type;->DIRECTORY:Lcom/winlator/container/FileInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
