.class Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;
.super Ljava/lang/Object;
.source "ContainerFileManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/ContainerFileManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadIconTask"
.end annotation


# instance fields
.field private canceled:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fragment:Lcom/winlator/ContainerFileManagerFragment;

.field private final imageViewWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$TKsVQNt9CD4X2eeHGxEazbOiOzs(Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->lambda$loadAsync$0(Ljava/lang/Object;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zwy44dk7Bm72SAjMyhHs5Om6x34(Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;Lcom/winlator/container/FileInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->lambda$loadAsync$1(Lcom/winlator/container/FileInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/winlator/ContainerFileManagerFragment;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "fragment"    # Lcom/winlator/ContainerFileManagerFragment;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->executor:Ljava/util/concurrent/Executor;

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->canceled:Z

    .line 218
    iput-object p1, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->fragment:Lcom/winlator/ContainerFileManagerFragment;

    .line 219
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->imageViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/ContainerFileManagerFragment;Landroid/widget/ImageView;Lcom/winlator/ContainerFileManagerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/winlator/ContainerFileManagerFragment;
    .param p2, "x1"    # Landroid/widget/ImageView;
    .param p3, "x2"    # Lcom/winlator/ContainerFileManagerFragment$1;

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;-><init>(Lcom/winlator/ContainerFileManagerFragment;Landroid/widget/ImageView;)V

    return-void
.end method

.method private synthetic lambda$loadAsync$0(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/Object;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .line 228
    iget-boolean v0, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 230
    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 232
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :goto_0
    return-void
.end method

.method private synthetic lambda$loadAsync$1(Lcom/winlator/container/FileInfo;)V
    .locals 3
    .param p1, "file"    # Lcom/winlator/container/FileInfo;

    .line 224
    iget-object v0, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->fragment:Lcom/winlator/ContainerFileManagerFragment;

    invoke-virtual {v0, p1}, Lcom/winlator/ContainerFileManagerFragment;->getIconForFile(Lcom/winlator/container/FileInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "icon":Ljava/lang/Object;
    iget-object v1, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->imageViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 226
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->canceled:Z

    if-nez v2, :cond_0

    .line 227
    new-instance v2, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;Ljava/lang/Object;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->canceled:Z

    .line 240
    return-void
.end method

.method public loadAsync(Lcom/winlator/container/FileInfo;)V
    .locals 2
    .param p1, "file"    # Lcom/winlator/container/FileInfo;

    .line 223
    iget-object v0, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;Lcom/winlator/container/FileInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method
