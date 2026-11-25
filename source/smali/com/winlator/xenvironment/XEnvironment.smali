.class public Lcom/winlator/xenvironment/XEnvironment;
.super Ljava/lang/Object;
.source "XEnvironment.java"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final components:Ljava/util/ArrayList;

.field private final context:Landroid/content/Context;

.field private final rootFS:Lcom/winlator/xenvironment/RootFS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/winlator/xenvironment/RootFS;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootFS"    # Lcom/winlator/xenvironment/RootFS;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/xenvironment/XEnvironment;->components:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Lcom/winlator/xenvironment/XEnvironment;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/winlator/xenvironment/XEnvironment;->rootFS:Lcom/winlator/xenvironment/RootFS;

    .line 19
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V
    .locals 1
    .param p1, "environmentComponent"    # Lcom/winlator/xenvironment/EnvironmentComponent;

    .line 30
    iput-object p0, p1, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    .line 31
    iget-object v0, p0, Lcom/winlator/xenvironment/XEnvironment;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public getComponent(Ljava/lang/Class;)Lcom/winlator/xenvironment/EnvironmentComponent;
    .locals 3

    .line 35
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/winlator/xenvironment/XEnvironment;->components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xenvironment/EnvironmentComponent;

    .line 36
    .local v1, "component":Lcom/winlator/xenvironment/EnvironmentComponent;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 37
    .end local v1    # "component":Lcom/winlator/xenvironment/EnvironmentComponent;
    :cond_0
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/winlator/xenvironment/XEnvironment;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getRootFS()Lcom/winlator/xenvironment/RootFS;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/winlator/xenvironment/XEnvironment;->rootFS:Lcom/winlator/xenvironment/RootFS;

    return-object v0
.end method

.method public getTmpDir()Ljava/io/File;
    .locals 3

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/xenvironment/XEnvironment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v0, "tmpDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    const/16 v1, 0x1f9

    invoke-static {v0, v1}, Lcom/winlator/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 52
    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/winlator/xenvironment/XEnvironment;->components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/winlator/xenvironment/XEnvironment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xenvironment/EnvironmentComponent;

    .local v1, "environmentComponent":Lcom/winlator/xenvironment/EnvironmentComponent;
    invoke-virtual {v1}, Lcom/winlator/xenvironment/EnvironmentComponent;->onPause()V

    .end local v1    # "environmentComponent":Lcom/winlator/xenvironment/EnvironmentComponent;
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/winlator/xenvironment/XEnvironment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xenvironment/EnvironmentComponent;

    .local v1, "environmentComponent":Lcom/winlator/xenvironment/EnvironmentComponent;
    invoke-virtual {v1}, Lcom/winlator/xenvironment/EnvironmentComponent;->onResume()V

    .end local v1    # "environmentComponent":Lcom/winlator/xenvironment/EnvironmentComponent;
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public startEnvironmentComponents()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/winlator/xenvironment/XEnvironment;->getTmpDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 57
    invoke-virtual {p0}, Lcom/winlator/xenvironment/XEnvironment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xenvironment/EnvironmentComponent;

    .local v1, "environmentComponent":Lcom/winlator/xenvironment/EnvironmentComponent;
    invoke-virtual {v1}, Lcom/winlator/xenvironment/EnvironmentComponent;->start()V

    .end local v1    # "environmentComponent":Lcom/winlator/xenvironment/EnvironmentComponent;
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public stopEnvironmentComponents()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/winlator/xenvironment/XEnvironment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xenvironment/EnvironmentComponent;

    .local v1, "environmentComponent":Lcom/winlator/xenvironment/EnvironmentComponent;
    invoke-virtual {v1}, Lcom/winlator/xenvironment/EnvironmentComponent;->stop()V

    .end local v1    # "environmentComponent":Lcom/winlator/xenvironment/EnvironmentComponent;
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method
