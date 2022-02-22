.class Lcom/quicinc/cne/CNE$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 938
    iput-object p1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 940
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$1400(Lcom/quicinc/cne/CNE;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 946
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 947
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 948
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 949
    const-string v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got CONNECTIVITY_ACTION intent for network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v2, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    .line 951
    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$1500(Lcom/quicinc/cne/CNE;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 952
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 953
    .local v3, "activeNi":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 954
    const-string v4, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activeNetwork type is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 956
    const-string v4, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got CONNECTIVITY_ACTION on default nw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v4, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->access$1600(Lcom/quicinc/cne/CNE;)Z

    .line 962
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "activeNi":Landroid/net/NetworkInfo;
    :cond_1
    goto/16 :goto_2

    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 963
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$1700(Lcom/quicinc/cne/CNE;Z)V

    .line 964
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$1802(Lcom/quicinc/cne/CNE;Z)Z

    goto/16 :goto_2

    .line 966
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 967
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v3}, Lcom/quicinc/cne/CNE;->access$1700(Lcom/quicinc/cne/CNE;Z)V

    .line 968
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v3}, Lcom/quicinc/cne/CNE;->access$1802(Lcom/quicinc/cne/CNE;Z)Z

    goto/16 :goto_2

    .line 970
    :cond_4
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 971
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    .line 982
    :cond_5
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 983
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    .line 997
    :cond_6
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 998
    const-string v1, "apnType"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 999
    .local v1, "apnType":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 1000
    const-string v2, "CORE"

    const-string v3, "CNE error getting apnType"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$2100(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    return-void

    .line 1003
    :cond_7
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1004
    iget-object v2, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$2200(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/quicinc/cne/CNE$CneWwanInfo;->access$2300(Lcom/quicinc/cne/CNE$CneWwanInfo;Landroid/content/Intent;)V

    .line 1006
    iget-object v2, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$2400(Lcom/quicinc/cne/CNE;)V

    .line 1007
    iget-object v2, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v4, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->access$2200(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v4

    iget v4, v4, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkState:I

    iget-object v5, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    .line 1008
    invoke-static {v5}, Lcom/quicinc/cne/CNE;->access$2200(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV4:Ljava/lang/String;

    iget-object v6, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6}, Lcom/quicinc/cne/CNE;->access$2200(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV6:Ljava/lang/String;

    .line 1007
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/quicinc/cne/CNE;->notifyRatConnectStatus(IILjava/lang/String;Ljava/lang/String;)Z

    .line 1010
    .end local v1    # "apnType":Ljava/lang/String;
    :cond_8
    goto/16 :goto_2

    .line 1011
    :cond_9
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1012
    const-string v1, "CORE"

    const-string v2, "CNE received WIFI_AP_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v1, "wifi_state"

    const/16 v2, 0xb

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1014
    .local v1, "wifiApState":I
    const-string v3, "previous_wifi_state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1015
    .local v2, "prevApState":I
    if-eq v1, v2, :cond_a

    .line 1016
    iget-object v3, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v3, v1, v2}, Lcom/quicinc/cne/CNE;->access$2500(Lcom/quicinc/cne/CNE;II)V

    .line 1018
    .end local v1    # "wifiApState":I
    .end local v2    # "prevApState":I
    :cond_a
    goto/16 :goto_2

    :cond_b
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1019
    const-string v1, "CORE"

    const-string v3, "CNE received WIFI_P2P_STATE_CHANGED_ACTION"

    invoke-static {v1, v3}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1021
    .local v1, "wifip2pstate":I
    iget-object v2, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2, v1}, Lcom/quicinc/cne/CNE;->access$2600(Lcom/quicinc/cne/CNE;I)V

    .line 1022
    .end local v1    # "wifip2pstate":I
    goto/16 :goto_2

    .line 1026
    :cond_c
    const-string v1, "com.quicinc.cne.TEST_SEND_RAT_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1027
    const-string v1, "CORE"

    const-string v3, "Trigger send rat info test"

    invoke-static {v1, v3}, Lcom/quicinc/cne/CNE;->access$2700(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    new-instance v1, Lcom/quicinc/cne/CNE$CneRatInfo;

    iget-object v3, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {v1, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 1029
    .local v1, "r":Lcom/quicinc/cne/CNE$CneRatInfo;
    const-wide v3, 0x6400facadeL

    invoke-virtual {v1, v3, v4}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetHandle(J)V

    .line 1030
    invoke-virtual {v1, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkState(I)V

    .line 1031
    const-string v2, "rmnet_data0"

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Iface(Ljava/lang/String;)V

    .line 1032
    const-string v2, "100.101.102.103"

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Address(Ljava/lang/String;)V

    .line 1033
    const-string v2, "2001:0db8:85a3:0000:0000:8a2e:0370:7334"

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv6Address(Ljava/lang/String;)V

    .line 1034
    iget-object v2, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/quicinc/cne/CNE;->sendRatInfo(Lcom/quicinc/cne/CNE$CneRatInfo;I)V

    .line 1035
    .end local v1    # "r":Lcom/quicinc/cne/CNE$CneRatInfo;
    goto/16 :goto_2

    .line 1037
    :cond_d
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CNE received unexpected action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 984
    :cond_e
    :goto_0
    const-string v1, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CNE received action Network/Wifi State Changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->access$700(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 986
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/quicinc/cne/CNE$CneWifiInfo;->access$1900(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/content/Intent;)V

    .line 988
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->access$2000(Lcom/quicinc/cne/CNE;)V

    .line 989
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v3, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    .line 990
    invoke-static {v3}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v3

    iget v3, v3, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    iget-object v4, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    .line 991
    invoke-static {v4}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV4:Ljava/lang/String;

    iget-object v5, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    .line 992
    invoke-static {v5}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV6:Ljava/lang/String;

    .line 989
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/quicinc/cne/CNE;->notifyRatConnectStatus(IILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 995
    :cond_f
    const-string v1, "CORE"

    const-string v2, "CNE received action Network State Changed, null WifiManager"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 972
    :cond_10
    :goto_1
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CNE received action RSSI/Link Changed events: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->access$700(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 975
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/quicinc/cne/CNE$CneWifiInfo;->access$1900(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/content/Intent;)V

    .line 977
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->access$2000(Lcom/quicinc/cne/CNE;)V

    goto :goto_2

    .line 979
    :cond_11
    const-string v1, "CORE"

    const-string v2, "CNE received action RSSI/Link Changed events, null WifiManager"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :goto_2
    return-void
.end method
