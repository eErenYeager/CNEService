.class Lcom/quicinc/cne/CNE$CneWifiInfo;
.super Lcom/quicinc/cne/CNE$CneRatInfo;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CneWifiInfo"
.end annotation


# instance fields
.field bssid:Ljava/lang/String;

.field dnsInfo:[Ljava/lang/String;

.field freqBand:Lcom/quicinc/cne/CNE$FreqBand;

.field rssi:I

.field softApState:I

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 4
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .line 507
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    .line 508
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 509
    const/16 v0, 0xb

    iput v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->softApState:I

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    .line 511
    const-string v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    .line 512
    const-string v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    .line 513
    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    .line 514
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    .line 515
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 516
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    const-string v3, "0.0.0.0"

    aput-object v3, v2, v0

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkType:I

    .line 519
    const/16 v0, 0x65

    iput v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->subType:I

    .line 520
    return-void
.end method

.method static synthetic access$1900(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CneWifiInfo;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 500
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setWifiInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CneWifiInfo;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 500
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method private maybeUpdateAddrInfo(Ljava/net/InetAddress;Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 572
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ifNameV4:Ljava/lang/String;

    .line 575
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_0

    .line 577
    :cond_0
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ifNameV6:Ljava/lang/String;

    .line 580
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV6:Ljava/lang/String;

    .line 583
    :cond_1
    :goto_0
    return-void
.end method

.method private resetWifiInfo()V
    .locals 3

    .line 523
    invoke-super {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->resetRatInfo()V

    .line 524
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    .line 525
    const-string v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    .line 526
    const-string v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    .line 527
    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    .line 528
    nop

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    const-string v2, "0.0.0.0"

    aput-object v2, v1, v0

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    .end local v0    # "i":I
    :cond_0
    const-string v0, "CORE"

    const-string v1, "Wifi Info Reset"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method private setWifiInfo(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 665
    if-nez p1, :cond_0

    .line 666
    const-string v0, "CORE"

    const-string v1, "set wifi info given null intent"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void

    .line 670
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    const-string v1, "newRssi"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateRSSI(I)V

    goto/16 :goto_1

    .line 673
    :cond_1
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    const-string v1, "linkProperties"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 676
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 677
    .end local v1    # "lp":Landroid/net/LinkProperties;
    goto/16 :goto_1

    :cond_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 678
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 679
    .local v1, "ni":Landroid/net/NetworkInfo;
    invoke-direct {p0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateNetworkInfo(Landroid/net/NetworkInfo;)Z

    move-result v2

    .line 680
    .local v2, "reset":Z
    if-eqz v2, :cond_3

    .line 681
    const-string v3, "CORE"

    const-string v4, "WifiInfo was reset, abandoning update"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_3
    iget-object v3, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v3}, Lcom/quicinc/cne/CNE;->access$700(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 684
    .local v3, "wi":Landroid/net/wifi/WifiInfo;
    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 690
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    .end local v2    # "reset":Z
    .end local v3    # "wi":Landroid/net/wifi/WifiInfo;
    :goto_0
    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .end local v0    # "action":Ljava/lang/String;
    goto :goto_1

    .line 703
    .restart local v0    # "action":Ljava/lang/String;
    :cond_5
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to set wifi info with unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$800(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "action":Ljava/lang/String;
    goto :goto_1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiInfo(): caught unexpected exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 707
    :catch_1
    move-exception v0

    .line 708
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiInfo(): array out of bound exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_1

    .line 705
    :catch_2
    move-exception v0

    .line 706
    .local v0, "nexp":Ljava/lang/NullPointerException;
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiInfo(): Null Pointer Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .end local v0    # "nexp":Ljava/lang/NullPointerException;
    :goto_1
    nop

    .line 713
    :goto_2
    return-void
.end method

.method private updateBSSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    .line 623
    if-eqz p1, :cond_0

    .line 624
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    goto :goto_0

    .line 626
    :cond_0
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    .line 628
    :goto_0
    return-void
.end method

.method private updateDnsInfo(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 535
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-nez p1, :cond_0

    .line 536
    const-string v0, "CORE"

    const-string v1, "update dns info given null Collection"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 539
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 540
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    const-string v2, "0.0.0.0"

    aput-object v2, v1, v0

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 545
    .restart local v0    # "i":I
    const/4 v2, 0x0

    .line 546
    .local v2, "v4AddrCnt":I
    const/4 v3, 0x0

    .line 547
    .local v3, "v6AddrCnt":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 548
    .local v5, "addr":Ljava/net/InetAddress;
    if-lt v0, v1, :cond_2

    .line 549
    const-string v1, "CORE"

    const-string v4, "getDns: Max dns addrs reached"

    invoke-static {v1, v4}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    goto :goto_3

    .line 552
    :cond_2
    instance-of v6, v5, Ljava/net/Inet6Address;

    const/4 v7, 0x2

    if-eqz v6, :cond_4

    .line 553
    if-lt v3, v7, :cond_3

    .line 554
    const-string v6, "CORE"

    const-string v7, "getDns: Max IPV6 dns addrs reached"

    invoke-static {v6, v7}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    goto :goto_1

    .line 557
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 559
    :cond_4
    if-lt v2, v7, :cond_5

    .line 560
    const-string v6, "CORE"

    const-string v7, "getDns: Max IPV4 dns addrs reached"

    invoke-static {v6, v7}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    goto :goto_1

    .line 563
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 565
    :goto_2
    iget-object v6, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 566
    add-int/lit8 v0, v0, 0x1

    .line 567
    .end local v5    # "addr":Ljava/net/InetAddress;
    goto :goto_1

    .line 569
    .end local v0    # "i":I
    .end local v2    # "v4AddrCnt":I
    .end local v3    # "v6AddrCnt":I
    :cond_6
    :goto_3
    return-void
.end method

.method private updateFreqBand(Landroid/net/wifi/WifiInfo;)V
    .locals 3
    .param p1, "wi"    # Landroid/net/wifi/WifiInfo;

    .line 639
    if-nez p1, :cond_0

    .line 640
    const-string v0, "CORE"

    const-string v1, "update frequency band given null wi"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    .line 643
    .local v0, "old":Lcom/quicinc/cne/CNE$FreqBand;
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_5GHz:Lcom/quicinc/cne/CNE$FreqBand;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    :goto_0
    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    .line 644
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    if-eq v0, v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/CNE;->frequencyBandChanged(Lcom/quicinc/cne/CNE$FreqBand;)V

    .line 647
    .end local v0    # "old":Lcom/quicinc/cne/CNE$FreqBand;
    :cond_2
    :goto_1
    return-void
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 586
    if-nez p1, :cond_0

    .line 587
    const-string v0, "CORE"

    const-string v1, "update link properties given null lp"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 589
    :cond_0
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating link properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    .line 591
    .local v0, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 592
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 593
    .local v3, "addr":Ljava/net/InetAddress;
    invoke-direct {p0, v3, p1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->maybeUpdateAddrInfo(Ljava/net/InetAddress;Landroid/net/LinkProperties;)V

    .line 594
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    .end local v3    # "addr":Ljava/net/InetAddress;
    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateDnsInfo(Ljava/util/Collection;)V

    .line 597
    .end local v0    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :goto_1
    return-void
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)Z
    .locals 4
    .param p1, "ni"    # Landroid/net/NetworkInfo;

    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "ret_val":Z
    if-nez p1, :cond_0

    .line 609
    const-string v1, "CORE"

    const-string v2, "update network info given null ni"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_0
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating network info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$400(Lcom/quicinc/cne/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v1

    iput v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    .line 613
    iget v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$400(Lcom/quicinc/cne/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 614
    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$400(Lcom/quicinc/cne/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 615
    :cond_1
    invoke-direct {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->resetWifiInfo()V

    .line 616
    const/4 v0, 0x1

    .line 619
    :cond_2
    :goto_0
    return v0
.end method

.method private updateRSSI(I)V
    .locals 3
    .param p1, "in"    # I

    .line 600
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating RSSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    if-eqz p1, :cond_0

    .line 602
    iput p1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    .line 604
    :cond_0
    return-void
.end method

.method private updateSSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    .line 631
    if-nez p1, :cond_0

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 634
    :cond_0
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    .line 636
    :goto_0
    return-void
.end method

.method private updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 3
    .param p1, "wi"    # Landroid/net/wifi/WifiInfo;

    .line 650
    if-nez p1, :cond_0

    .line 654
    const-string v0, "CORE"

    const-string v1, "update wifi info given null wi"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_0
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating wifi info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateBSSID(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateSSID(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateRSSI(I)V

    .line 660
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateFreqBand(Landroid/net/wifi/WifiInfo;)V

    .line 662
    :goto_0
    return-void
.end method
