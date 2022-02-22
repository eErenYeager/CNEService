.class Lcom/quicinc/cne/CNE$CneWwanInfo;
.super Lcom/quicinc/cne/CNE$CneRatInfo;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CneWwanInfo"
.end annotation


# instance fields
.field mccMnc:Ljava/lang/String;

.field roaming:I

.field signalStrength:I

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 2
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .line 721
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    .line 722
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 723
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->signalStrength:I

    .line 724
    iput v0, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->roaming:I

    .line 725
    const-string v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->mccMnc:Ljava/lang/String;

    .line 726
    iput v0, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkType:I

    .line 727
    return-void
.end method

.method static synthetic access$2300(Lcom/quicinc/cne/CNE$CneWwanInfo;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CneWwanInfo;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 716
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneWwanInfo;->setWwanInfo(Landroid/content/Intent;)V

    return-void
.end method

.method private resetWwanInfo()V
    .locals 1

    .line 730
    invoke-super {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->resetRatInfo()V

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->signalStrength:I

    .line 732
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->mccMnc:Ljava/lang/String;

    .line 733
    return-void
.end method

.method private setWwanInfo(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .line 736
    if-nez p1, :cond_0

    .line 737
    return-void

    .line 740
    :cond_0
    :try_start_0
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "state":Ljava/lang/String;
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v0}, Lcom/quicinc/cne/CNE;->access$1000(Lcom/quicinc/cne/CNE;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkState:I

    .line 743
    iget v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkState:I

    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    const-string v3, "DISCONNECTED"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$1000(Lcom/quicinc/cne/CNE;Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkState:I

    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    const-string v3, "UNKNOWN"

    .line 744
    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$1000(Lcom/quicinc/cne/CNE;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    goto/16 :goto_5

    .line 749
    :cond_1
    const-string v1, "linkProperties"

    .line 750
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 751
    .local v1, "lp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_8

    .line 752
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    .line 753
    .local v2, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 754
    .local v4, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 755
    .local v5, "addr":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    .line 756
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_7

    .line 757
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 758
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV4:Ljava/lang/String;

    goto/16 :goto_4

    .line 761
    :cond_2
    instance-of v6, v5, Ljava/net/Inet6Address;

    if-eqz v6, :cond_7

    .line 762
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_3

    .line 763
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->ifNameV6:Ljava/lang/String;

    .line 764
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV6:Ljava/lang/String;

    .line 766
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .line 767
    .local v7, "link":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "clat4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 768
    nop

    .line 769
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v8

    .line 770
    .local v8, "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 771
    .local v10, "stackedLinkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    .line 772
    .local v11, "address":Ljava/net/InetAddress;
    instance-of v12, v11, Ljava/net/Inet4Address;

    if-eqz v12, :cond_4

    .line 773
    invoke-virtual {v11}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v12

    if-nez v12, :cond_4

    .line 774
    invoke-virtual {v11}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-nez v12, :cond_4

    .line 775
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 776
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV4:Ljava/lang/String;

    .line 779
    .end local v10    # "stackedLinkAddress":Landroid/net/LinkAddress;
    .end local v11    # "address":Ljava/net/InetAddress;
    :cond_4
    goto :goto_2

    .line 780
    .end local v8    # "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_5
    goto :goto_3

    .line 783
    :cond_6
    const-string v8, "CORE"

    const-string v9, "no clat4 interface present for ipv6 address"

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->access$1100(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .end local v7    # "link":Landroid/net/LinkProperties;
    :goto_3
    goto :goto_1

    .line 788
    .end local v4    # "linkAddress":Landroid/net/LinkAddress;
    .end local v5    # "addr":Ljava/net/InetAddress;
    :cond_7
    :goto_4
    goto/16 :goto_0

    .line 791
    .end local v2    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_8
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$100(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 792
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$100(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    iput v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->roaming:I

    .line 793
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    iget v3, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkType:I

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$1200(Lcom/quicinc/cne/CNE;I)I

    move-result v2

    iput v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->signalStrength:I

    .line 794
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$100(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->mccMnc:Ljava/lang/String;

    .line 795
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$100(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    iput v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->subType:I

    .line 799
    .end local v0    # "state":Ljava/lang/String;
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_9
    goto :goto_6

    .line 746
    .restart local v0    # "state":Ljava/lang/String;
    :cond_a
    :goto_5
    invoke-direct {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->resetWwanInfo()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    return-void

    .line 797
    .end local v0    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 798
    .local v0, "nexp":Ljava/lang/NullPointerException;
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWwanInfo(): Null Pointer Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .end local v0    # "nexp":Ljava/lang/NullPointerException;
    :goto_6
    return-void
.end method
