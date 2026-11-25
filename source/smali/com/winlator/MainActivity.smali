# ============================================================================
# 已修改 (MODIFIED) - 无忧win虚拟机 / Wuyou Winlator Mod
# 修改者: wuyouxiaokang  <3266636647@qq.com>
# 修改日期: 2026-11-25
# 本项目: https://github.com/wuyouxiaokang/wuyou-winlator
#
# 本文件源自 Winlator (https://github.com/brunodev85/winlator)
# 原始版权: Copyright (c) BrunoSX / brunodev85
# 原始许可证: GNU Lesser General Public License v2.1 (见 LICENSE)
#
# 修改内容: 见仓库 CHANGES.md 中对应条目。主要涉及虚拟键盘接入、中文适配、
#           UI 增强等，均以 LGPL-2.1 同样条款开放。
# ============================================================================
.class public Lcom/winlator/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field private currentFragment:Landroidx/fragment/app/Fragment;

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private editInputControls:Z

.field private openFileCallback:Lcom/winlator/core/Callback;

.field private preferences:Landroid/content/SharedPreferences;

.field public final preloaderDialog:Lcom/winlator/core/PreloaderDialog;

.field private selectedProfileId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/winlator/core/PreloaderDialog;

    invoke-direct {v0, p0}, Lcom/winlator/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/winlator/MainActivity;->preloaderDialog:Lcom/winlator/core/PreloaderDialog;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/MainActivity;->editInputControls:Z

    return-void
.end method

.method private requestAppPermissions()Z
    .locals 3

    .line 148
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez v1, :cond_0

    .line 149
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "permissions":[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 153
    return v1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .line 94
    invoke-static {p1}, Lcom/winlator/core/LocaleHelper;->setSystemLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/winlator/MainActivity;->openFileCallback:Lcom/winlator/core/Callback;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/winlator/MainActivity;->openFileCallback:Lcom/winlator/core/Callback;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/MainActivity;->openFileCallback:Lcom/winlator/core/Callback;

    .line 117
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lcom/winlator/BaseFileManagerFragment;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/winlator/BaseFileManagerFragment;

    .line 133
    .local v0, "fileManagerFragment":Lcom/winlator/BaseFileManagerFragment;
    invoke-virtual {v0}, Lcom/winlator/BaseFileManagerFragment;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 134
    .end local v0    # "fileManagerFragment":Lcom/winlator/BaseFileManagerFragment;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lcom/winlator/ContainersFragment;

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 140
    :cond_2
    :goto_0
    new-instance v0, Lcom/winlator/ContainersFragment;

    invoke-direct {v0}, Lcom/winlator/ContainersFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/winlator/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 141
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 121
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lcom/winlator/BaseFileManagerFragment;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/winlator/BaseFileManagerFragment;

    invoke-virtual {v0}, Lcom/winlator/BaseFileManagerFragment;->onOrientationChanged()V

    .line 126
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-static {p0}, Lcom/wuyou/WlCrash;->install(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Lcom/winlator/core/AppUtils;->setActivityTheme(Landroid/app/Activity;)V

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/wuyou/WlAbout;->maybeShow(Landroid/app/Activity;)V

    .line 56
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/winlator/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 57
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 58
    .local v0, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    invoke-virtual {v0, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 60
    const v1, 0x7f0900fb

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 61
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 62
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 67
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "edit_input_controls"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/winlator/MainActivity;->editInputControls:Z

    .line 68
    iget-boolean v3, p0, Lcom/winlator/MainActivity;->editInputControls:Z

    if-eqz v3, :cond_0

    .line 69
    const-string v3, "selected_profile_id"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/winlator/MainActivity;->selectedProfileId:I

    .line 70
    const v3, 0x7f080091

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 71
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0901e6

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/winlator/MainActivity;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    .line 72
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    goto :goto_1

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/winlator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "show_shortcuts_first"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 76
    .local v3, "showShortcutsFirst":Z
    const-string v5, "selected_menu_item_id"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 77
    .local v5, "selectedMenuItemId":I
    if-lez v5, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const v6, 0x7f0901f5

    goto :goto_0

    :cond_2
    const v6, 0x7f0901da

    .line 79
    .local v6, "menuItemId":I
    :goto_0
    const v7, 0x7f080095

    invoke-virtual {v1, v7}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 80
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/winlator/MainActivity;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    .line 81
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    .line 82
    invoke-direct {p0}, Lcom/winlator/MainActivity;->requestAppPermissions()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p0}, Lcom/winlator/xenvironment/RootFSInstaller;->installIfNeeded(Lcom/winlator/MainActivity;)V

    .line 84
    :cond_3
    const-string v7, "container_id"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 85
    .local v4, "containerId":I
    const-string v7, "start_path"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "startPath":Ljava/lang/String;
    if-lez v4, :cond_4

    if-eqz v7, :cond_4

    .line 87
    new-instance v8, Lcom/winlator/ContainerFileManagerFragment;

    invoke-direct {v8, v4, v7}, Lcom/winlator/ContainerFileManagerFragment;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/winlator/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 90
    .end local v3    # "showShortcutsFirst":Z
    .end local v4    # "containerId":I
    .end local v5    # "selectedMenuItemId":I
    .end local v6    # "menuItemId":I
    .end local v7    # "startPath":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 184
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 188
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const-string v3, "show_shortcuts_first"

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 190
    :sswitch_0
    iget-object v1, p0, Lcom/winlator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    new-instance v1, Lcom/winlator/ShortcutsFragment;

    invoke-direct {v1}, Lcom/winlator/ShortcutsFragment;-><init>()V

    invoke-virtual {p0, v1}, Lcom/winlator/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 192
    goto :goto_0

    .line 201
    :sswitch_1
    new-instance v1, Lcom/winlator/SettingsFragment;

    invoke-direct {v1}, Lcom/winlator/SettingsFragment;-><init>()V

    invoke-virtual {p0, v1}, Lcom/winlator/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 202
    goto :goto_0

    .line 198
    :sswitch_2
    new-instance v1, Lcom/winlator/InputControlsFragment;

    iget v3, p0, Lcom/winlator/MainActivity;->selectedProfileId:I

    invoke-direct {v1, v3}, Lcom/winlator/InputControlsFragment;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/winlator/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 199
    goto :goto_0

    .line 194
    :sswitch_3
    iget-object v1, p0, Lcom/winlator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    new-instance v1, Lcom/winlator/ContainersFragment;

    invoke-direct {v1}, Lcom/winlator/ContainersFragment;-><init>()V

    invoke-virtual {p0, v1}, Lcom/winlator/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 196
    goto :goto_0

    .line 204
    :sswitch_4
    new-instance v1, Lcom/winlator/contentdialog/AboutDialog;

    invoke-direct {v1, p0}, Lcom/winlator/contentdialog/AboutDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 207
    :goto_0
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901d5 -> :sswitch_4
        0x7f0901da -> :sswitch_3
        0x7f0901e6 -> :sswitch_2
        0x7f0901f4 -> :sswitch_1
        0x7f0901f5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 159
    .local v0, "itemId":I
    const v1, 0x7f0901d7

    if-eq v0, v1, :cond_0

    const v1, 0x7f0901e4

    if-eq v0, v1, :cond_0

    const v1, 0x7f0901f9

    if-eq v0, v1, :cond_0

    const v1, 0x7f0901ec

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_1

    .line 166
    :cond_1
    iget-boolean v1, p0, Lcom/winlator/MainActivity;->editInputControls:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 167
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v1, Lcom/winlator/BaseFileManagerFragment;

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    check-cast v1, Lcom/winlator/BaseFileManagerFragment;

    .line 173
    .local v1, "fileManagerFragment":Lcom/winlator/BaseFileManagerFragment;
    invoke-virtual {v1}, Lcom/winlator/BaseFileManagerFragment;->onOptionsMenuClicked()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 175
    .end local v1    # "fileManagerFragment":Lcom/winlator/BaseFileManagerFragment;
    :cond_3
    iget-object v1, p0, Lcom/winlator/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 177
    :goto_0
    return v2

    .line 163
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 100
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 102
    invoke-static {p0}, Lcom/winlator/xenvironment/RootFSInstaller;->installIfNeeded(Lcom/winlator/MainActivity;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setOpenFileCallback(Lcom/winlator/core/Callback;)V
    .locals 0

    .line 144
    .local p1, "openFileCallback":Lcom/winlator/core/Callback;, "Lcom/winlator/core/Callback<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/winlator/MainActivity;->openFileCallback:Lcom/winlator/core/Callback;

    .line 145
    return-void
.end method

.method public showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 212
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f010020

    const v3, 0x7f010021

    invoke-virtual {v1, v2, v3, v3, v3}, Landroidx/fragment/app/FragmentTransaction;->setWinlatorAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 213
    const v2, 0x7f09005e

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 216
    iget-object v1, p0, Lcom/winlator/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 217
    iput-object p1, p0, Lcom/winlator/MainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 218
    return-void
.end method
