.class public final Lcom/wuyou/WlKeyboardPrompt$$Cancel;
.super Ljava/lang/Object;
.source "WlKeyboardPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/wuyou/WlKeyboardPrompt;->wlShowing:Z

    return-void
.end method
