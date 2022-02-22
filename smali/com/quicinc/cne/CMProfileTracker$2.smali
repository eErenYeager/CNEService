.class Lcom/quicinc/cne/CMProfileTracker$2;
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

    .line 85
    iput-object p1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .line 88
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    monitor-enter v0

    .line 89
    :try_start_0
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onLost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v1}, Lcom/quicinc/cne/CMProfileTracker;->access$100(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE;

    move-result-object v1

    iget-object v1, v1, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    invoke-virtual {v1, p0}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->untrackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 94
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v1}, Lcom/quicinc/cne/CMProfileTracker;->access$200(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "CORE"

    const-string v3, "maxRSSICallback already unregistered "

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v1}, Lcom/quicinc/cne/CMProfileTracker;->access$300(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    move-result-object v1

    sget-object v2, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v1}, Lcom/quicinc/cne/CMProfileTracker;->access$300(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    move-result-object v1

    sget-object v2, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->INCONCLUSIVE:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v1}, Lcom/quicinc/cne/CMProfileTracker;->access$300(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    move-result-object v1

    sget-object v2, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v1}, Lcom/quicinc/cne/CMProfileTracker;->access$100(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE;

    move-result-object v1

    iget-object v1, v1, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    iget-object v2, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v2}, Lcom/quicinc/cne/CMProfileTracker;->access$700(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minRSSICallback for profile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    .line 107
    invoke-static {v4}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->trackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    iget-object v2, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v2}, Lcom/quicinc/cne/CMProfileTracker;->access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/quicinc/cne/CNE$CMProfile;->getLowRSSI()I

    move-result v2

    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    invoke-static {v3}, Lcom/quicinc/cne/CMProfileTracker;->access$700(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/quicinc/cne/CMProfileTracker;->access$500(Lcom/quicinc/cne/CMProfileTracker;ILandroid/net/ConnectivityManager$NetworkCallback;)V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    const/4 v2, 0x4

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Lcom/quicinc/cne/CMProfileTracker;->access$600(Lcom/quicinc/cne/CMProfileTracker;II)V

    .line 112
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker$2;->this$0:Lcom/quicinc/cne/CMProfileTracker;

    sget-object v2, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->NOT_MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    invoke-static {v1, v2}, Lcom/quicinc/cne/CMProfileTracker;->access$302(Lcom/quicinc/cne/CMProfileTracker;Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
