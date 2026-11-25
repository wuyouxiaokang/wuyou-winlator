.class Lcom/winlator/ContainerDetailFragment$1;
.super Ljava/lang/Object;
.source "ContainerDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/ContainerDetailFragment;->createWineConfigurationTab(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/ContainerDetailFragment;

.field final synthetic val$cpvDesktopBackgroundColor:Lcom/winlator/widget/ColorPickerView;

.field final synthetic val$ipvDesktopBackgroundImage:Lcom/winlator/widget/ImagePickerView;


# direct methods
.method constructor <init>(Lcom/winlator/ContainerDetailFragment;Lcom/winlator/widget/ImagePickerView;Lcom/winlator/widget/ColorPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/ContainerDetailFragment;

    .line 309
    iput-object p1, p0, Lcom/winlator/ContainerDetailFragment$1;->this$0:Lcom/winlator/ContainerDetailFragment;

    iput-object p2, p0, Lcom/winlator/ContainerDetailFragment$1;->val$ipvDesktopBackgroundImage:Lcom/winlator/widget/ImagePickerView;

    iput-object p3, p0, Lcom/winlator/ContainerDetailFragment$1;->val$cpvDesktopBackgroundColor:Lcom/winlator/widget/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 312
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/winlator/core/WineThemeManager$BackgroundType;->values()[Lcom/winlator/core/WineThemeManager$BackgroundType;

    move-result-object v0

    aget-object v0, v0, p3

    .line 313
    .local v0, "type":Lcom/winlator/core/WineThemeManager$BackgroundType;
    iget-object v1, p0, Lcom/winlator/ContainerDetailFragment$1;->val$ipvDesktopBackgroundImage:Lcom/winlator/widget/ImagePickerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/winlator/ContainerDetailFragment$1;->val$cpvDesktopBackgroundColor:Lcom/winlator/widget/ColorPickerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    sget-object v1, Lcom/winlator/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/winlator/core/WineThemeManager$BackgroundType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/winlator/ContainerDetailFragment$1;->val$ipvDesktopBackgroundImage:Lcom/winlator/widget/ImagePickerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 319
    :cond_0
    sget-object v1, Lcom/winlator/core/WineThemeManager$BackgroundType;->COLOR:Lcom/winlator/core/WineThemeManager$BackgroundType;

    if-ne v0, v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/winlator/ContainerDetailFragment$1;->val$cpvDesktopBackgroundColor:Lcom/winlator/widget/ColorPickerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_1
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 325
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
