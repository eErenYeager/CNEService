.class Lcom/quicinc/cne/CNE$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .line 1669
    iput-object p1, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;

    .line 1672
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0, p1}, Lcom/quicinc/cne/CNE;->access$3502(Lcom/quicinc/cne/CNE;Landroid/net/Network;)Landroid/net/Network;

    .line 1674
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    move-result v0

    .line 1675
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 1676
    const-string v1, "CORE"

    const-string v2, "onAvailable: bind the process to WIFI"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    :cond_0
    iget-object v1, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->access$3600(Lcom/quicinc/cne/CNE;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1679
    .local v1, "lp":Landroid/net/LinkProperties;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1680
    const-string v3, "CORE"

    const-string v4, "Lp is null"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v3, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v3}, Lcom/quicinc/cne/CNE;->access$3700(Lcom/quicinc/cne/CNE;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1682
    :try_start_0
    iget-object v4, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v5, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v5, v2}, Lcom/quicinc/cne/CNE;->access$3902(Lcom/quicinc/cne/CNE;Z)Z

    move-result v2

    invoke-static {v4, v2}, Lcom/quicinc/cne/CNE;->access$3802(Lcom/quicinc/cne/CNE;Z)Z

    .line 1683
    monitor-exit v3

    .line 1684
    return-void

    .line 1683
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1686
    :cond_1
    iget-object v3, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v3, v1}, Lcom/quicinc/cne/CNE;->access$4000(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V

    .line 1687
    iget-object v3, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->access$4102(Lcom/quicinc/cne/CNE;Z)Z

    .line 1688
    iget-object v3, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v3}, Lcom/quicinc/cne/CNE;->access$3600(Lcom/quicinc/cne/CNE;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 1689
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    const/4 v5, 0x0

    .line 1690
    .local v5, "isValidated":Z
    if-eqz v3, :cond_2

    .line 1691
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    .line 1693
    :cond_2
    iget-object v6, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v7, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v7}, Lcom/quicinc/cne/CNE;->access$4100(Lcom/quicinc/cne/CNE;)Z

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v8}, Lcom/quicinc/cne/CNE;->access$4200(Lcom/quicinc/cne/CNE;)I

    move-result v8

    invoke-virtual {v6, v7, v8, v5}, Lcom/quicinc/cne/CNE;->notifyWlanConnectivityUp(ZIZ)Z

    .line 1694
    iget-object v6, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6, v1}, Lcom/quicinc/cne/CNE;->access$4300(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V

    .line 1695
    iget-object v6, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->access$4400(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/net/LinkProperties;)V

    .line 1696
    iget-object v6, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setNetHandle(J)V

    .line 1697
    iget-object v6, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setAndroidValidated(Z)V

    .line 1698
    iget-object v6, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6}, Lcom/quicinc/cne/CNE;->access$2000(Lcom/quicinc/cne/CNE;)V

    .line 1700
    iget-object v6, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6}, Lcom/quicinc/cne/CNE;->access$4500(Lcom/quicinc/cne/CNE;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1702
    const-string v6, "CORE"

    const-string v7, "Broadcast wqe state change: 1"

    invoke-static {v6, v7}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object v6, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6, v4}, Lcom/quicinc/cne/CNE;->access$4600(Lcom/quicinc/cne/CNE;I)V

    .line 1704
    iget-object v4, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->access$3700(Lcom/quicinc/cne/CNE;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1705
    :try_start_1
    iget-object v6, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6, v2}, Lcom/quicinc/cne/CNE;->access$4502(Lcom/quicinc/cne/CNE;Z)Z

    .line 1706
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1708
    :cond_3
    :goto_0
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1753
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getAndroidValidated()Z

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_0

    .line 1754
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setAndroidValidated(Z)V

    .line 1756
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$2000(Lcom/quicinc/cne/CNE;)V

    goto :goto_0

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getAndroidValidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1758
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1759
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setAndroidValidated(Z)V

    .line 1760
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$2000(Lcom/quicinc/cne/CNE;)V

    .line 1762
    :cond_1
    :goto_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 1728
    if-nez p2, :cond_0

    .line 1729
    const-string v0, "CORE"

    const-string v1, "Lp is null"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$3700(Lcom/quicinc/cne/CNE;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1731
    :try_start_0
    iget-object v1, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v2, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$3902(Lcom/quicinc/cne/CNE;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$3802(Lcom/quicinc/cne/CNE;Z)Z

    .line 1732
    monitor-exit v0

    .line 1733
    return-void

    .line 1732
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0, p2}, Lcom/quicinc/cne/CNE;->access$4000(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V

    .line 1736
    const/4 v0, 0x0

    .line 1737
    .local v0, "isValidated":Z
    iget-object v1, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->access$3600(Lcom/quicinc/cne/CNE;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1738
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_1

    .line 1739
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 1741
    :cond_1
    iget-object v2, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$4800(Lcom/quicinc/cne/CNE;)Landroid/net/LinkProperties;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2, p2}, Lcom/quicinc/cne/CNE;->access$4900(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1742
    :cond_2
    iget-object v2, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v3, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v3}, Lcom/quicinc/cne/CNE;->access$4100(Lcom/quicinc/cne/CNE;)Z

    move-result v3

    iget-object v4, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->access$4200(Lcom/quicinc/cne/CNE;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/quicinc/cne/CNE;->notifyWlanConnectivityUp(ZIZ)Z

    .line 1744
    iget-object v2, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2, p2}, Lcom/quicinc/cne/CNE;->access$4300(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V

    .line 1745
    iget-object v2, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/quicinc/cne/CNE$CneWifiInfo;->access$4400(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/net/LinkProperties;)V

    .line 1746
    iget-object v2, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$2000(Lcom/quicinc/cne/CNE;)V

    .line 1748
    :cond_3
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 1712
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 1714
    const-string v0, "CORE"

    const-string v1, "onLost: unbind the process to WIFI"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$3700(Lcom/quicinc/cne/CNE;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1716
    :try_start_0
    iget-object v1, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v2, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$3902(Lcom/quicinc/cne/CNE;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$3802(Lcom/quicinc/cne/CNE;Z)Z

    .line 1717
    iget-object v1, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v3}, Lcom/quicinc/cne/CNE;->access$4702(Lcom/quicinc/cne/CNE;I)I

    .line 1718
    iget-object v1, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v3}, Lcom/quicinc/cne/CNE;->access$4102(Lcom/quicinc/cne/CNE;Z)Z

    .line 1719
    iget-object v1, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v3}, Lcom/quicinc/cne/CNE;->access$4502(Lcom/quicinc/cne/CNE;Z)Z

    .line 1720
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setNetHandle(J)V

    .line 1722
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setAndroidValidated(Z)V

    .line 1723
    iget-object v0, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$2000(Lcom/quicinc/cne/CNE;)V

    .line 1724
    return-void

    .line 1720
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
