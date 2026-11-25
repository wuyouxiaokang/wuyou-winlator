.class Lcom/winlator/core/AppUtils$1;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/core/AppUtils;->setupTabLayout(Landroid/view/View;ILcom/winlator/core/Callback;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tabSelectedCallback:Lcom/winlator/core/Callback;


# direct methods
.method constructor <init>(Lcom/winlator/core/Callback;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/winlator/core/AppUtils$1;->val$tabSelectedCallback:Lcom/winlator/core/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 328
    iget-object v0, p0, Lcom/winlator/core/AppUtils$1;->val$tabSelectedCallback:Lcom/winlator/core/Callback;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 320
    iget-object v0, p0, Lcom/winlator/core/AppUtils$1;->val$tabSelectedCallback:Lcom/winlator/core/Callback;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 324
    return-void
.end method
