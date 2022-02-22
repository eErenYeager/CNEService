.class Lcom/quicinc/cne/CMProfileTracker$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CMProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CMProfileTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CMProfileTracker;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CMProfileTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CMProfileTracker;

    .line 117
    iput-object p1, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;

    .line 120
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v1}, Lcom/quicinc/cne/CMProfileTracker;->access$200(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 122
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v2

    .line 123
    .local v2, "currRSSI":I
    const-string v3, "CORE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v5}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " wifiCallback::onAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " currRSSI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$100(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v3, v3, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    invoke-virtual {v3, p0}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->untrackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 129
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$200(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CORE"

    const-string v5, "wifiCallback already unregistered "

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$300(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    move-result-object v3

    sget-object v4, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->STARTED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    if-eq v3, v4, :cond_0

    .line 135
    const-string v3, "CORE"

    const-string v4, "wifiCallback called already"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    monitor-exit v0

    return-void

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/quicinc/cne/CNE$CMProfile;->getHighRSSI()I

    move-result v3

    const/4 v4, 0x4

    if-le v2, v3, :cond_1

    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    .line 139
    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/quicinc/cne/CNE$CMProfile;->getLowRSSI()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    sget-object v5, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->INCONCLUSIVE:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    invoke-static {v3, v5}, Lcom/quicinc/cne/CMProfileTracker;->access$302(Lcom/quicinc/cne/CMProfileTracker;Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    .line 141
    const-string v3, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v6}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sending intermediate status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3, v4, v6}, Lcom/quicinc/cne/CMProfileTracker;->access$600(Lcom/quicinc/cne/CMProfileTracker;II)V

    .line 147
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$100(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v3, v3, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    iget-object v4, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v4}, Lcom/quicinc/cne/CMProfileTracker;->access$700(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minRSSICallback for profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    .line 148
    invoke-static {v6}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual {v3, v4, v5}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->trackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    iget-object v4, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v4}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/CNE$CMProfile;->getLowRSSI()I

    move-result v4

    iget-object v5, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v5}, Lcom/quicinc/cne/CMProfileTracker;->access$700(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/quicinc/cne/CMProfileTracker;->access$500(Lcom/quicinc/cne/CMProfileTracker;ILandroid/net/ConnectivityManager$NetworkCallback;)V

    .line 150
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$100(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v3, v3, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    iget-object v4, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v4}, Lcom/quicinc/cne/CMProfileTracker;->access$400(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxRSSICallback for profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    .line 151
    invoke-static {v6}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {v3, v4, v5}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->trackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    iget-object v4, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v4}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/CNE$CMProfile;->getHighRSSI()I

    move-result v4

    iget-object v5, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v5}, Lcom/quicinc/cne/CMProfileTracker;->access$400(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/quicinc/cne/CMProfileTracker;->access$500(Lcom/quicinc/cne/CMProfileTracker;ILandroid/net/ConnectivityManager$NetworkCallback;)V

    goto/16 :goto_1

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/quicinc/cne/CNE$CMProfile;->getLowRSSI()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$100(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v3, v3, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    iget-object v4, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v4}, Lcom/quicinc/cne/CMProfileTracker;->access$400(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxRSSICallback for profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    .line 156
    invoke-static {v6}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v3, v4, v5}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->trackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    iget-object v4, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v4}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/CNE$CMProfile;->getHighRSSI()I

    move-result v4

    iget-object v5, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v5}, Lcom/quicinc/cne/CMProfileTracker;->access$400(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/quicinc/cne/CMProfileTracker;->access$500(Lcom/quicinc/cne/CMProfileTracker;ILandroid/net/ConnectivityManager$NetworkCallback;)V

    .line 158
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    const/4 v4, 0x1

    invoke-static {v3, v4, v4}, Lcom/quicinc/cne/CMProfileTracker;->access$600(Lcom/quicinc/cne/CMProfileTracker;II)V

    .line 160
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    sget-object v4, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    invoke-static {v3, v4}, Lcom/quicinc/cne/CMProfileTracker;->access$302(Lcom/quicinc/cne/CMProfileTracker;Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    goto :goto_1

    .line 161
    :cond_2
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/quicinc/cne/CNE$CMProfile;->getHighRSSI()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$100(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v3, v3, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    iget-object v5, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v5}, Lcom/quicinc/cne/CMProfileTracker;->access$700(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minRSSICallback for profile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    .line 163
    invoke-static {v7}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-virtual {v3, v5, v6}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->trackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    iget-object v5, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v5}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/CNE$CMProfile;->getLowRSSI()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v6}, Lcom/quicinc/cne/CMProfileTracker;->access$700(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/quicinc/cne/CMProfileTracker;->access$500(Lcom/quicinc/cne/CMProfileTracker;ILandroid/net/ConnectivityManager$NetworkCallback;)V

    .line 165
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    const/16 v5, 0xa

    invoke-static {v3, v4, v5}, Lcom/quicinc/cne/CMProfileTracker;->access$600(Lcom/quicinc/cne/CMProfileTracker;II)V

    .line 167
    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$3;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    sget-object v4, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->NOT_MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    invoke-static {v3, v4}, Lcom/quicinc/cne/CMProfileTracker;->access$302(Lcom/quicinc/cne/CMProfileTracker;Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    .line 170
    .end local v1    # "nc":Landroid/net/NetworkCapabilities;
    .end local v2    # "currRSSI":I
    :cond_3
    :goto_1
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
