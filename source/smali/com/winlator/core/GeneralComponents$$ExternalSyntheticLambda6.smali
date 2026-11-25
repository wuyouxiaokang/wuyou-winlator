.class public final synthetic Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/winlator/core/GeneralComponents$Type;

.field public final synthetic f$1:Lcom/winlator/MainActivity;

.field public final synthetic f$2:Landroid/widget/Spinner;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/core/GeneralComponents$Type;Lcom/winlator/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda6;->f$0:Lcom/winlator/core/GeneralComponents$Type;

    iput-object p2, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda6;->f$1:Lcom/winlator/MainActivity;

    iput-object p3, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda6;->f$2:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda6;->f$0:Lcom/winlator/core/GeneralComponents$Type;

    iget-object v1, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda6;->f$1:Lcom/winlator/MainActivity;

    iget-object v2, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda6;->f$2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/winlator/core/GeneralComponents;->$r8$lambda$7G1E4AxdinWHWVEyRhxM2RgibAM(Lcom/winlator/core/GeneralComponents$Type;Lcom/winlator/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
