.class public final synthetic Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda4;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onValueChangeListener(Lcom/wuyouwin/widget/SeekBar;F)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment$$ExternalSyntheticLambda4;->f$0:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lcom/wuyouwin/InputControlsFragment;->$r8$lambda$8g6HfcZICQFU27cLCGCbXhtmJCg(Landroid/content/SharedPreferences;Lcom/wuyouwin/widget/SeekBar;F)V

    return-void
.end method
