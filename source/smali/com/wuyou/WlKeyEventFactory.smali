.class public final Lcom/wuyou/WlKeyEventFactory;
.super Ljava/lang/Object;
.source "WlKeyEventFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMultiple(J[C)Landroid/view/KeyEvent;
    .locals 9
    .param p0, "time"    # J
    .param p2, "chars"    # [C

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move v8, v7

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    const-class v3, Landroid/view/KeyEvent;

    const-string v4, "mCharacters"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    return-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    return-object v0
.end method
