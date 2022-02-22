.class final Lcom/quicinc/cne/CMProfileTracker;
.super Ljava/lang/Object;
.source "CMProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;
    }
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "CORE"


# instance fields
.field private currLp:Landroid/net/LinkProperties;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mCne:Lcom/quicinc/cne/CNE;

.field private mContext:Landroid/content/Context;

.field private mLastConnectionStatus:I

.field private mLastReasonCode:I

.field private mNetRequest:Landroid/net/NetworkRequest;

.field private mStatus:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

.field private maxRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private minRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private profile:Lcom/quicinc/cne/CNE$CMProfile;

.field private wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CNE;Landroid/content/Context;Lcom/quicinc/cne/CNE$CMProfile;)V
    .locals 2
    .param p1, "cne"    # Lcom/quicinc/cne/CNE;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "profile"    # Lcom/quicinc/cne/CNE$CMProfile;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mLastConnectionStatus:I

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mLastReasonCode:I

    .line 53
    new-instance v0, Lcom/quicinc/cne/CMProfileTracker$1;

    invoke-direct {v0, p0}, Lcom/quicinc/cne/CMProfileTracker$1;-><init>(Lcom/quicinc/cne/CMProfileTracker;)V

    iput-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->minRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 85
    new-instance v0, Lcom/quicinc/cne/CMProfileTracker$2;

    invoke-direct {v0, p0}, Lcom/quicinc/cne/CMProfileTracker$2;-><init>(Lcom/quicinc/cne/CMProfileTracker;)V

    iput-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->maxRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 117
    new-instance v0, Lcom/quicinc/cne/CMProfileTracker$3;

    invoke-direct {v0, p0}, Lcom/quicinc/cne/CMProfileTracker$3;-><init>(Lcom/quicinc/cne/CMProfileTracker;)V

    iput-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 45
    iput-object p1, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    .line 46
    iput-object p2, p0, Lcom/quicinc/cne/CMProfileTracker;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 49
    iput-object p3, p0, Lcom/quicinc/cne/CMProfileTracker;->profile:Lcom/quicinc/cne/CNE$CMProfile;

    .line 50
    sget-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->CREATED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    iput-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mStatus:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE$CMProfile;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CMProfileTracker;

    .line 26
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->profile:Lcom/quicinc/cne/CNE$CMProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CNE;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CMProfileTracker;

    .line 26
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    return-object v0
.end method

.method static synthetic access$200(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CMProfileTracker;

    .line 26
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/quicinc/cne/CMProfileTracker;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CMProfileTracker;

    .line 26
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mStatus:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    return-object v0
.end method

.method static synthetic access$302(Lcom/quicinc/cne/CMProfileTracker;Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CMProfileTracker;
    .param p1, "x1"    # Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    .line 26
    iput-object p1, p0, Lcom/quicinc/cne/CMProfileTracker;->mStatus:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    return-object p1
.end method

.method static synthetic access$400(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CMProfileTracker;

    .line 26
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->maxRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/quicinc/cne/CMProfileTracker;ILandroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CMProfileTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/quicinc/cne/CMProfileTracker;->createRSSIRequest(ILandroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/quicinc/cne/CMProfileTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CMProfileTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/quicinc/cne/CMProfileTracker;->sendProfileStatus(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/quicinc/cne/CMProfileTracker;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CMProfileTracker;

    .line 26
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->minRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method private createRSSIRequest(ILandroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "cb"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 188
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a request with RSSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/CMProfileTracker;->profile:Lcom/quicinc/cne/CNE$CMProfile;

    .line 189
    invoke-virtual {v2}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 191
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 194
    .local v0, "rssiRequest":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 195
    return-void
.end method

.method private createWiFiRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 4
    .param p1, "cb"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 198
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a request for WiFi callback for profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/CMProfileTracker;->profile:Lcom/quicinc/cne/CNE$CMProfile;

    .line 199
    invoke-virtual {v2}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 201
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 203
    .local v0, "wifiRequest":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    iget-object v1, v1, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiCallback for profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/CMProfileTracker;->profile:Lcom/quicinc/cne/CNE$CMProfile;

    .line 204
    invoke-virtual {v3}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v1, p1, v2}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->trackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 206
    return-void
.end method

.method private sendProfileStatus(II)V
    .locals 3
    .param p1, "connectionStatus"    # I
    .param p2, "reasonCode"    # I

    .line 237
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mRssiWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mRssiWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 240
    :cond_0
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and reason code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iput p1, p0, Lcom/quicinc/cne/CMProfileTracker;->mLastConnectionStatus:I

    .line 243
    iput p2, p0, Lcom/quicinc/cne/CMProfileTracker;->mLastReasonCode:I

    .line 244
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->profile:Lcom/quicinc/cne/CNE$CMProfile;

    invoke-virtual {v1}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/quicinc/cne/CNE;->sendWlanStatusforProfile(Ljava/lang/String;II)V

    .line 247
    return-void
.end method


# virtual methods
.method public restart()V
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/quicinc/cne/CMProfileTracker;->stop()V

    .line 251
    invoke-virtual {p0}, Lcom/quicinc/cne/CMProfileTracker;->start()V

    .line 252
    return-void
.end method

.method declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 175
    :try_start_0
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start request for profile :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/CMProfileTracker;->profile:Lcom/quicinc/cne/CNE$CMProfile;

    .line 176
    invoke-virtual {v2}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->STARTED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    iput-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mStatus:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    .line 184
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CMProfileTracker;->createWiFiRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/quicinc/cne/CMProfileTracker;
    throw v0
.end method

.method declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 209
    :try_start_0
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop request for profile :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/CMProfileTracker;->profile:Lcom/quicinc/cne/CNE$CMProfile;

    .line 210
    invoke-virtual {v2}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->minRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->untrackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 213
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->minRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "CORE"

    const-string v2, "minRSSICallback already unregistered "

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->maxRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->untrackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 219
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->maxRSSICallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    goto :goto_1

    .line 220
    :catch_1
    move-exception v0

    .line 221
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "CORE"

    const-string v2, "maxRSSICallback already unregistered "

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCne:Lcom/quicinc/cne/CNE;

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->untrackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 225
    iget-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/quicinc/cne/CMProfileTracker;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    goto :goto_2

    .line 226
    :catch_2
    move-exception v0

    .line 233
    :goto_2
    :try_start_6
    sget-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->STOPPED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    iput-object v0, p0, Lcom/quicinc/cne/CMProfileTracker;->mStatus:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/quicinc/cne/CMProfileTracker;
    throw v0
.end method
