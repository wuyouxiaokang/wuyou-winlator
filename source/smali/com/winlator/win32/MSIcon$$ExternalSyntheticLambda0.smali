.class public final synthetic Lcom/winlator/win32/MSIcon$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/winlator/win32/MSIcon$IconDirEntry;

    check-cast p2, Lcom/winlator/win32/MSIcon$IconDirEntry;

    invoke-static {p1, p2}, Lcom/winlator/win32/MSIcon;->$r8$lambda$Ads-1kpHO4uC50u7OV3c6jCkEmI(Lcom/winlator/win32/MSIcon$IconDirEntry;Lcom/winlator/win32/MSIcon$IconDirEntry;)I

    move-result p1

    return p1
.end method
