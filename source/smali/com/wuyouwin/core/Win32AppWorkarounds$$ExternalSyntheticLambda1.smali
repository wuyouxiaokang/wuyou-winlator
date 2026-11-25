.class public final synthetic Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Win32AppWorkarounds$PreExecWorkaround;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/core/Win32AppWorkarounds;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/core/Win32AppWorkarounds;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/core/Win32AppWorkarounds;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/core/Win32AppWorkarounds;

    invoke-static {v0, p1}, Lcom/wuyouwin/core/Win32AppWorkarounds;->$r8$lambda$2Ypt2kVtaenwQcguiqv1w2pp4sk(Lcom/wuyouwin/core/Win32AppWorkarounds;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
