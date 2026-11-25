.class Lcom/wuyouwin/contentdialog/ScreenEffectDialog$1;
.super Ljava/lang/Object;
.source "ScreenEffectDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/contentdialog/ScreenEffectDialog;-><init>(Lcom/wuyouwin/XServerDisplayActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/contentdialog/ScreenEffectDialog;


# direct methods
.method constructor <init>(Lcom/wuyouwin/contentdialog/ScreenEffectDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/contentdialog/ScreenEffectDialog;

    .line 63
    iput-object p1, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$1;->this$0:Lcom/wuyouwin/contentdialog/ScreenEffectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$1;->this$0:Lcom/wuyouwin/contentdialog/ScreenEffectDialog;

    invoke-static {v0}, Lcom/wuyouwin/contentdialog/ScreenEffectDialog;->access$000(Lcom/wuyouwin/contentdialog/ScreenEffectDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    .local v0, "selectedProfile":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/wuyouwin/contentdialog/ScreenEffectDialog$1;->this$0:Lcom/wuyouwin/contentdialog/ScreenEffectDialog;

    invoke-static {v1, v0}, Lcom/wuyouwin/contentdialog/ScreenEffectDialog;->access$100(Lcom/wuyouwin/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V

    .line 68
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 71
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
