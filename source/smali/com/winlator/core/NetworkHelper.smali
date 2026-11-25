.class public Lcom/winlator/core/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/core/NetworkHelper$IFAddress;
    }
.end annotation


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/winlator/core/NetworkHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 39
    return-void
.end method

.method public static formatNetmask(I)Ljava/lang/String;
    .locals 1
    .param p0, "prefixLength"    # I

    .line 89
    sparse-switch p0, :sswitch_data_0

    .line 95
    const-string v0, ""

    return-object v0

    .line 94
    :sswitch_0
    const-string v0, "ffff:ffff:ffff:ffff::"

    return-object v0

    .line 93
    :sswitch_1
    const-string v0, "255.255.255.255"

    return-object v0

    .line 92
    :sswitch_2
    const-string v0, "255.255.255.0"

    return-object v0

    .line 91
    :sswitch_3
    const-string v0, "255.255.0.0"

    return-object v0

    .line 90
    :sswitch_4
    const-string v0, "255.0.0.0"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x18 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getIFAddresses()Ljava/util/List;
    .locals 10

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/core/NetworkHelper$IFAddress;>;"
    iget-object v1, p0, Lcom/winlator/core/NetworkHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 59
    .local v1, "activeNetwork":Landroid/net/Network;
    if-nez v1, :cond_0

    return-object v0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/winlator/core/NetworkHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 62
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    if-nez v2, :cond_1

    return-object v0

    .line 64
    :cond_1
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    .line 65
    .local v3, "linkAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 66
    .local v5, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 67
    .local v6, "address":Ljava/net/InetAddress;
    instance-of v7, v6, Ljava/net/Inet4Address;

    if-nez v7, :cond_2

    instance-of v7, v6, Ljava/net/Inet6Address;

    if-nez v7, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    new-instance v7, Lcom/winlator/core/NetworkHelper$IFAddress;

    invoke-direct {v7}, Lcom/winlator/core/NetworkHelper$IFAddress;-><init>()V

    .line 70
    .local v7, "ifAddress":Lcom/winlator/core/NetworkHelper$IFAddress;
    instance-of v8, v6, Ljava/net/Inet6Address;

    if-eqz v8, :cond_3

    .line 71
    sget v8, Landroid/system/OsConstants;->AF_INET6:I

    iput v8, v7, Lcom/winlator/core/NetworkHelper$IFAddress;->family:I

    .line 72
    move-object v8, v6

    check-cast v8, Ljava/net/Inet6Address;

    invoke-virtual {v8}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v8

    iput v8, v7, Lcom/winlator/core/NetworkHelper$IFAddress;->scopeId:I

    .line 75
    :cond_3
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/winlator/core/NetworkHelper$IFAddress;->address:Ljava/lang/String;

    .line 76
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v8

    invoke-static {v8}, Lcom/winlator/core/NetworkHelper;->formatNetmask(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/winlator/core/NetworkHelper$IFAddress;->netmask:Ljava/lang/String;

    .line 77
    sget v8, Landroid/system/OsConstants;->IFF_UP:I

    sget v9, Landroid/system/OsConstants;->IFF_RUNNING:I

    or-int/2addr v8, v9

    iput v8, v7, Lcom/winlator/core/NetworkHelper$IFAddress;->flags:I

    .line 79
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v5    # "linkAddress":Landroid/net/LinkAddress;
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v7    # "ifAddress":Lcom/winlator/core/NetworkHelper$IFAddress;
    goto :goto_0

    .line 81
    :cond_4
    return-object v0
.end method

.method public getIPv4Address()Ljava/lang/String;
    .locals 8

    .line 42
    invoke-virtual {p0}, Lcom/winlator/core/NetworkHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/winlator/core/NetworkHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 45
    .local v0, "activeNetwork":Landroid/net/Network;
    iget-object v2, p0, Lcom/winlator/core/NetworkHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 46
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    if-nez v2, :cond_1

    return-object v1

    .line 48
    :cond_1
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    .line 49
    .local v3, "linkAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 50
    .local v5, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 51
    .local v6, "address":Ljava/net/InetAddress;
    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 52
    .end local v5    # "linkAddress":Landroid/net/LinkAddress;
    .end local v6    # "address":Ljava/net/InetAddress;
    :cond_2
    goto :goto_0

    .line 53
    :cond_3
    return-object v1
.end method

.method public isConnected()Z
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/winlator/core/NetworkHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 101
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 103
    .local v2, "type":I
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/16 v4, 0x9

    if-eq v2, v4, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method
