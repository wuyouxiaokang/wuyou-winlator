.class public final Lcom/wuyou/WlKeyboardPrompt$$ShowKb;
.super Ljava/lang/Object;
.source "WlKeyboardPrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Lcom/winlator/XServerDisplayActivity;


# direct methods
.method public constructor <init>(Lcom/winlator/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyou/WlKeyboardPrompt$$ShowKb;->activity:Lcom/winlator/XServerDisplayActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/wuyou/WlKeyboardPrompt$$ShowKb;->activity:Lcom/winlator/XServerDisplayActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/winlator/XServerDisplayActivity;->wlShowKeyboard()V

    return-void
.end method
