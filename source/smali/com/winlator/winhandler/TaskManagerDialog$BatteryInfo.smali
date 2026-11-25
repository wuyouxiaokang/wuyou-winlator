.class Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;
.super Ljava/lang/Object;
.source "TaskManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/winhandler/TaskManagerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryInfo"
.end annotation


# instance fields
.field private level:I

.field private temperature:I

.field private voltage:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/winhandler/TaskManagerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog$1;

    .line 50
    invoke-direct {p0}, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;)F
    .locals 1
    .param p0, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    .line 50
    iget v0, p0, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->voltage:F

    return v0
.end method

.method static synthetic access$202(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;F)F
    .locals 0
    .param p0, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;
    .param p1, "x1"    # F

    .line 50
    iput p1, p0, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->voltage:F

    return p1
.end method

.method static synthetic access$300(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    .line 50
    iget v0, p0, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->temperature:I

    return v0
.end method

.method static synthetic access$302(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->temperature:I

    return p1
.end method

.method static synthetic access$400(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    .line 50
    iget v0, p0, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->level:I

    return v0
.end method

.method static synthetic access$402(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->level:I

    return p1
.end method
