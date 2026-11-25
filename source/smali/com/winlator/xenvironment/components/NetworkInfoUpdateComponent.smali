.class public Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;
.super Lcom/winlator/xenvironment/EnvironmentComponent;
.source "NetworkInfoUpdateComponent.java"


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/winlator/xenvironment/EnvironmentComponent;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;
    .param p1, "x1"    # Ljava/util/List;

    .line 16
    invoke-direct {p0, p1}, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->updateIFAddrsFile(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->updateEtcHostsFile(Ljava/lang/String;)V

    return-void
.end method

.method private updateEtcHostsFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 62
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "127.0.0.1"

    .line 63
    .local v0, "ip":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v2}, Lcom/winlator/xenvironment/XEnvironment;->getRootFS()Lcom/winlator/xenvironment/RootFS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/hosts"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tlocalhost\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 65
    return-void
.end method

.method private updateIFAddrsFile(Ljava/util/List;)V
    .locals 6

    .line 48
    .local p1, "ifAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/core/NetworkHelper$IFAddress;>;"
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v1}, Lcom/winlator/xenvironment/XEnvironment;->getRootFS()Lcom/winlator/xenvironment/RootFS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/xenvironment/RootFS;->getTmpDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ifaddrs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v0, "file":Ljava/io/File;
    const-string v1, ""

    .line 51
    .local v1, "content":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/core/NetworkHelper$IFAddress;

    .line 53
    .local v3, "ifAddress":Lcom/winlator/core/NetworkHelper$IFAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "\n"

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/winlator/core/NetworkHelper$IFAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .end local v3    # "ifAddress":Lcom/winlator/core/NetworkHelper$IFAddress;
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 56
    :cond_2
    new-instance v2, Lcom/winlator/core/NetworkHelper$IFAddress;

    invoke-direct {v2}, Lcom/winlator/core/NetworkHelper$IFAddress;-><init>()V

    invoke-virtual {v2}, Lcom/winlator/core/NetworkHelper$IFAddress;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    :goto_2
    invoke-static {v0, v1}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 59
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/winlator/core/NetworkHelper;

    invoke-direct {v1, v0}, Lcom/winlator/core/NetworkHelper;-><init>(Landroid/content/Context;)V

    .line 23
    .local v1, "networkHelper":Lcom/winlator/core/NetworkHelper;
    invoke-virtual {v1}, Lcom/winlator/core/NetworkHelper;->getIFAddresses()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->updateIFAddrsFile(Ljava/util/List;)V

    .line 24
    invoke-virtual {v1}, Lcom/winlator/core/NetworkHelper;->getIPv4Address()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->updateEtcHostsFile(Ljava/lang/String;)V

    .line 26
    new-instance v2, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent$1;

    invoke-direct {v2, p0, v1}, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent$1;-><init>(Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;Lcom/winlator/core/NetworkHelper;)V

    iput-object v2, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public stop()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    :cond_0
    return-void
.end method
