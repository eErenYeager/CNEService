.class public final Lcom/quicinc/cne/CNENetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CNENetworkCallback.java"


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "CORE"


# instance fields
.field private currLp:Landroid/net/LinkProperties;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mCne:Lcom/quicinc/cne/CNE;

.field private mContext:Landroid/content/Context;

.field private mNetRequest:Landroid/net/NetworkRequest;

.field private mNetType:I

.field private ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/content/Context;)V
    .locals 2
    .param p1, "cne"    # Lcom/quicinc/cne/CNE;
    .param p2, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCne:Lcom/quicinc/cne/CNE;

    .line 37
    iput-object p2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    .line 39
    new-instance v0, Lcom/quicinc/cne/CNE$CneRatInfo;

    iget-object v1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCne:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    .line 40
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "CORE"

    const-string v1, "Unable to allocate memory for CneRatInfo"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method private updateRatInfo(Landroid/net/LinkProperties;)V
    .locals 6
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 124
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    new-instance v1, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;->setTimeStamp(Ljava/lang/String;)V

    .line 125
    if-eqz p1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Iface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "linkAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 129
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 130
    .local v3, "addr":Ljava/net/InetAddress;
    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Address(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_0
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 139
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-eqz v4, :cond_1

    .line 140
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv6Address(Ljava/lang/String;)V

    .line 144
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    .end local v3    # "addr":Ljava/net/InetAddress;
    :cond_1
    :goto_1
    goto :goto_0

    .line 146
    .end local v0    # "linkAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_2
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCne:Lcom/quicinc/cne/CNE;

    iget-object v1, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    iget v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/CNE;->sendRatInfo(Lcom/quicinc/cne/CNE$CneRatInfo;I)V

    .line 147
    return-void
.end method


# virtual methods
.method public createNetworkRequest(I)V
    .locals 4
    .param p1, "netType"    # I

    .line 80
    iput p1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    .line 81
    const/4 v0, -0x1

    .line 82
    .local v0, "capability":I
    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 105
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown network capability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_0
    const-string v1, "CORE"

    const-string v2, "WWAN_EMERGENCY not supported yet"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    goto :goto_0

    .line 99
    :pswitch_1
    const/16 v0, 0xa

    .line 100
    goto :goto_0

    .line 96
    :pswitch_2
    const/16 v0, 0x8

    .line 97
    goto :goto_0

    .line 93
    :pswitch_3
    const/4 v0, 0x4

    .line 94
    goto :goto_0

    .line 90
    :pswitch_4
    const/4 v0, 0x1

    .line 91
    goto :goto_0

    .line 87
    :pswitch_5
    const/4 v0, 0x0

    .line 88
    goto :goto_0

    .line 84
    :cond_0
    const/16 v0, 0xc

    .line 85
    nop

    .line 108
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 109
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bring up network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 111
    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetRequest:Landroid/net/NetworkRequest;

    .line 114
    iget-object v1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 116
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public destroyNetworkRequest()V
    .locals 3

    .line 119
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tear down network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 121
    return-void
.end method

.method public getRatInfo()Lcom/quicinc/cne/CNE$CneRatInfo;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 47
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " net handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    .line 50
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetHandle(J)V

    .line 52
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkState(I)V

    .line 53
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNENetworkCallback;->updateRatInfo(Landroid/net/LinkProperties;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 72
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkPropertiesChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    .line 74
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNENetworkCallback;->updateRatInfo(Landroid/net/LinkProperties;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 61
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    .line 63
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetHandle(J)V

    .line 65
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkState(I)V

    .line 66
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNENetworkCallback;->updateRatInfo(Landroid/net/LinkProperties;)V

    .line 68
    :cond_0
    return-void
.end method
