.class public final synthetic Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/wuyouwin/container/Shortcut;

    check-cast p2, Lcom/wuyouwin/container/Shortcut;

    invoke-static {p1, p2}, Lcom/wuyouwin/container/ContainerManager;->$r8$lambda$yY81JKzZOsEgEJPoJOLBAFYfbao(Lcom/wuyouwin/container/Shortcut;Lcom/wuyouwin/container/Shortcut;)I

    move-result p1

    return p1
.end method
