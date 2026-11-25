.class public Lcom/wuyouwin/contentdialog/AboutDialog;
.super Lcom/wuyouwin/contentdialog/ContentDialog;
.source "AboutDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    const/4 v0, 0x0

    const v1, 0x7f0c001c

    invoke-direct {p0, p1, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 16
    const v1, 0x7f09006a

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 21
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    const v2, 0x7f0900f7

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 22
    .local v2, "tvWebpage":Landroid/widget/TextView;
    const-string v3, "<a href=\"https://www.winlator.org\">winlator.org</a>"

    invoke-static {v3, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 25
    const v3, 0x7f0900e5

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1001a1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const-string v3, "<br />"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/CharSequence;

    const-string v5, "GLIBC Patches by (<a href=\"https://github.com/termux-pacman/glibc-packages\">Termux Pacman</a>)"

    aput-object v5, v4, v0

    const-string v5, "Wine (<a href=\"https://www.winehq.org\">winehq.org</a>)"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Box86/Box64 by <a href=\"https://github.com/ptitSeb\">ptitseb</a>"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string v5, "Mesa (Turnip/Zink/VirGL) (<a href=\"https://www.mesa3d.org\">mesa3d.org</a>)"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string v5, "DXVK (<a href=\"https://github.com/doitsujin/dxvk\">github.com/doitsujin/dxvk</a>)"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const-string v5, "VKD3D (<a href=\"https://gitlab.winehq.org/wine/vkd3d\">gitlab.winehq.org/wine/vkd3d</a>)"

    const/4 v6, 0x5

    aput-object v5, v4, v6

    const-string v5, "CNC DDraw (<a href=\"https://github.com/FunkyFr3sh/cnc-ddraw\">github.com/FunkyFr3sh/cnc-ddraw</a>)"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "creditsAndThirdPartyAppsHTML":Ljava/lang/String;
    const v4, 0x7f0900e8

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 38
    .local v4, "tvCreditsAndThirdPartyApps":Landroid/widget/TextView;
    invoke-static {v3, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "tvWebpage":Landroid/widget/TextView;
    .end local v3    # "creditsAndThirdPartyAppsHTML":Ljava/lang/String;
    .end local v4    # "tvCreditsAndThirdPartyApps":Landroid/widget/TextView;
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 42
    :goto_1
    return-void
.end method
