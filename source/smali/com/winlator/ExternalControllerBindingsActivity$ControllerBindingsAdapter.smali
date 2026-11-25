.class Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExternalControllerBindingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/ExternalControllerBindingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerBindingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/ExternalControllerBindingsActivity;


# direct methods
.method public static synthetic $r8$lambda$UBSDgrOq9zcXOgUiehFirYpViC4(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/winlator/inputcontrols/ExternalControllerBinding;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->lambda$onBindViewHolder$0(Lcom/winlator/inputcontrols/ExternalControllerBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ozN61Ho1vuU7ZJDWPzseMpKQWi4(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->lambda$loadBindingSpinner$1(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V

    return-void
.end method

.method private constructor <init>(Lcom/winlator/ExternalControllerBindingsActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/ExternalControllerBindingsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/ExternalControllerBindingsActivity;Lcom/winlator/ExternalControllerBindingsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/winlator/ExternalControllerBindingsActivity;
    .param p2, "x1"    # Lcom/winlator/ExternalControllerBindingsActivity$1;

    .line 165
    invoke-direct {p0, p1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;-><init>(Lcom/winlator/ExternalControllerBindingsActivity;)V

    return-void
.end method

.method private static synthetic lambda$loadBindingSpinner$1(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V
    .locals 4
    .param p0, "holder"    # Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p1, "$this"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/winlator/inputcontrols/ExternalControllerBinding;

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "bindingEntries":[Ljava/lang/String;
    invoke-static {p0}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    invoke-static {}, Lcom/winlator/inputcontrols/Binding;->gamepadBindingLabels()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-static {}, Lcom/winlator/inputcontrols/Binding;->mouseBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 215
    goto :goto_0

    .line 211
    :pswitch_2
    invoke-static {}, Lcom/winlator/inputcontrols/Binding;->keyboardBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 212
    nop

    .line 221
    :goto_0
    invoke-static {p0}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$700(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 222
    invoke-static {p0}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$700(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {p2}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/inputcontrols/Binding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/inputcontrols/Binding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 223
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/winlator/inputcontrols/ExternalControllerBinding;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/winlator/inputcontrols/ExternalControllerBinding;
    .param p2, "view"    # Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/ExternalControllerBindingsActivity;->access$200(Lcom/winlator/ExternalControllerBindingsActivity;)Lcom/winlator/inputcontrols/ExternalController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/winlator/inputcontrols/ExternalController;->removeControllerBinding(Lcom/winlator/inputcontrols/ExternalControllerBinding;)V

    .line 193
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/ExternalControllerBindingsActivity;->access$600(Lcom/winlator/ExternalControllerBindingsActivity;)Lcom/winlator/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/ControlsProfile;->save()V

    .line 194
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 195
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/ExternalControllerBindingsActivity;->access$800(Lcom/winlator/ExternalControllerBindingsActivity;)V

    .line 196
    return-void
.end method

.method private loadBindingSpinner(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V
    .locals 6
    .param p1, "holder"    # Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p2, "item"    # Lcom/winlator/inputcontrols/ExternalControllerBinding;

    .line 205
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/ExternalControllerBindingsActivity;

    .line 207
    .local v0, "$this":Landroid/content/Context;
    new-instance v1, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0, p2}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V

    .line 225
    .local v1, "update":Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    new-instance v3, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;-><init>(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 235
    invoke-virtual {p2}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/inputcontrols/Binding;

    move-result-object v2

    .line 236
    .local v2, "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    invoke-virtual {v2}, Lcom/winlator/inputcontrols/Binding;->isKeyboard()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 237
    invoke-static {p1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v2}, Lcom/winlator/inputcontrols/Binding;->isMouse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    invoke-static {p1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v2}, Lcom/winlator/inputcontrols/Binding;->isGamepad()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    invoke-static {p1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 246
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$700(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    new-instance v4, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;-><init>(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 272
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 273
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/ExternalControllerBindingsActivity;->access$200(Lcom/winlator/ExternalControllerBindingsActivity;)Lcom/winlator/inputcontrols/ExternalController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/ExternalController;->getControllerBindingCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 165
    check-cast p1, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->onBindViewHolder(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 188
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/ExternalControllerBindingsActivity;->access$200(Lcom/winlator/ExternalControllerBindingsActivity;)Lcom/winlator/inputcontrols/ExternalController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/winlator/inputcontrols/ExternalController;->getControllerBindingAt(I)Lcom/winlator/inputcontrols/ExternalControllerBinding;

    move-result-object v0

    .line 189
    .local v0, "item":Lcom/winlator/inputcontrols/ExternalControllerBinding;
    invoke-static {p1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$300(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->loadBindingSpinner(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V

    .line 191
    invoke-static {p1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$400(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 183
    new-instance v0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0047

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;-><init>(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;Lcom/winlator/ExternalControllerBindingsActivity$1;)V

    return-object v0
.end method
