.class public final Lcom/wuyou/WlSnapBinder;
.super Ljava/lang/Object;
.source "WlSnapBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindDialog(Landroid/app/Dialog;Landroid/content/SharedPreferences;)V
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    :try_start_0
    const v0, 0x7f0902d9

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "wl_snap_to_touch"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v3, Lcom/wuyou/WlSnapToggle;

    invoke-direct {v3, p1}, Lcom/wuyou/WlSnapToggle;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method
