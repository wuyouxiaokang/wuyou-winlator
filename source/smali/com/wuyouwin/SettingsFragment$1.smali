.class Lcom/wuyouwin/SettingsFragment$1;
.super Landroid/media/midi/MidiManager$DeviceCallback;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/SettingsFragment;->loadMIDIInputDeviceSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/SettingsFragment;

.field final synthetic val$sMIDIInputDevice:Landroid/widget/Spinner;

.field final synthetic val$selectedValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wuyouwin/SettingsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/SettingsFragment;

    .line 520
    iput-object p1, p0, Lcom/wuyouwin/SettingsFragment$1;->this$0:Lcom/wuyouwin/SettingsFragment;

    iput-object p2, p0, Lcom/wuyouwin/SettingsFragment$1;->val$sMIDIInputDevice:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/wuyouwin/SettingsFragment$1;->val$selectedValue:Ljava/lang/String;

    invoke-direct {p0}, Landroid/media/midi/MidiManager$DeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 3
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 523
    iget-object v0, p0, Lcom/wuyouwin/SettingsFragment$1;->this$0:Lcom/wuyouwin/SettingsFragment;

    iget-object v1, p0, Lcom/wuyouwin/SettingsFragment$1;->val$sMIDIInputDevice:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/wuyouwin/SettingsFragment$1;->val$selectedValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wuyouwin/SettingsFragment;->access$000(Lcom/wuyouwin/SettingsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 3
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 528
    iget-object v0, p0, Lcom/wuyouwin/SettingsFragment$1;->this$0:Lcom/wuyouwin/SettingsFragment;

    iget-object v1, p0, Lcom/wuyouwin/SettingsFragment$1;->val$sMIDIInputDevice:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/wuyouwin/SettingsFragment$1;->val$selectedValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wuyouwin/SettingsFragment;->access$000(Lcom/wuyouwin/SettingsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 529
    return-void
.end method
