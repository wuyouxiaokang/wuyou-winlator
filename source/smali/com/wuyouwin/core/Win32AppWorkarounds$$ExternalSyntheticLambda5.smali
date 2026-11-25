.class public final synthetic Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Win32AppWorkarounds$ScreenSizeWorkaround;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/xserver/ScreenInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/xserver/ScreenInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda5;->f$0:Lcom/wuyouwin/xserver/ScreenInfo;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda5;->f$0:Lcom/wuyouwin/xserver/ScreenInfo;

    invoke-static {v0}, Lcom/wuyouwin/core/Win32AppWorkarounds;->$r8$lambda$9dr1Ck91q3-6pxwJMiv3FvT7diY(Lcom/wuyouwin/xserver/ScreenInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
