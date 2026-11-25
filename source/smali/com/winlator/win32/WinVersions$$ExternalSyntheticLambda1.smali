.class public final synthetic Lcom/winlator/win32/WinVersions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Spinner;

.field public final synthetic f$1:B


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Spinner;B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/win32/WinVersions$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Spinner;

    iput-byte p2, p0, Lcom/winlator/win32/WinVersions$$ExternalSyntheticLambda1;->f$1:B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/win32/WinVersions$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Spinner;

    iget-byte v1, p0, Lcom/winlator/win32/WinVersions$$ExternalSyntheticLambda1;->f$1:B

    invoke-static {v0, v1}, Lcom/winlator/win32/WinVersions;->$r8$lambda$1AdIsDn9rIKqun1AGZEzvyD-Law(Landroid/widget/Spinner;B)V

    return-void
.end method
