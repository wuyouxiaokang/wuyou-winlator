.class public final synthetic Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/core/GeneralComponents$Type;

.field public final synthetic f$1:Lcom/wuyouwin/MainActivity;

.field public final synthetic f$2:Landroid/widget/Spinner;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/core/GeneralComponents$Type;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda6;->f$0:Lcom/wuyouwin/core/GeneralComponents$Type;

    iput-object p2, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda6;->f$1:Lcom/wuyouwin/MainActivity;

    iput-object p3, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda6;->f$2:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda6;->f$0:Lcom/wuyouwin/core/GeneralComponents$Type;

    iget-object v1, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda6;->f$1:Lcom/wuyouwin/MainActivity;

    iget-object v2, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda6;->f$2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/wuyouwin/core/GeneralComponents$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wuyouwin/core/GeneralComponents;->$r8$lambda$7G1E4AxdinWHWVEyRhxM2RgibAM(Lcom/wuyouwin/core/GeneralComponents$Type;Lcom/wuyouwin/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
