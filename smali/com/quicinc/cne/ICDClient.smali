.class public Lcom/quicinc/cne/ICDClient;
.super Ljava/lang/Object;
.source "ICDClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/ICDClient$icdHttp;,
        Lcom/quicinc/cne/ICDClient$IcdResult;
    }
.end annotation


# static fields
.field public static final FLAG_BQE_PROB_PRESENT:I = 0x8

.field public static final FLAG_BQE_QUOTA_PRESENT:I = 0x4

.field public static final FLAG_ICD_PROB_PRESENT:I = 0x2

.field public static final FLAG_ICD_QUOTA_PRESENT:I = 0x1

.field public static final FLAG_MBW_PRESENT:I = 0x10

.field public static final FLAG_TPUT_DL_PRESENT:I = 0x20

.field public static final FLAG_TPUT_SDEV_PRESENT:I = 0x40

.field static final ICD_REQ:I = 0x0

.field static final PARAMETER_REQ:I = 0x1

.field private static final SUB_TYPE:Ljava/lang/String; = "WQE:ICD"


# instance fields
.field private bqeProb:I

.field private bqeQuota:I

.field private bssid:Ljava/lang/String;

.field private bssidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bssidPassed:Ljava/lang/String;

.field private cneHandle:Lcom/quicinc/cne/CNE;

.field private conn:Ljava/net/HttpURLConnection;

.field private currentBSSID:Ljava/lang/String;

.field private dl:I

.field private family:I

.field private flags:I

.field private icdHttpReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

.field private icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

.field private icdProb:I

.field private icdQuota:I

.field private ipAddr:I

.field private mbw:I

.field private postingProb:I

.field private rspLock:Ljava/util/concurrent/locks/Lock;

.field private sconn:Ljavax/net/ssl/HttpsURLConnection;

.field private sdev:I

.field private seconds:I

.field private sentHttpRsp:Ljava/lang/Boolean;

.field private sentParamRsp:Ljava/lang/Boolean;

.field private tid:I

.field private timeout:Ljava/lang/Boolean;

.field private timer:Ljava/util/Timer;

.field private uri:Ljava/lang/String;

.field private url:Ljava/net/URL;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "handle"    # Lcom/quicinc/cne/CNE;
    .param p2, "wifi"    # Landroid/net/wifi/WifiManager;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "httpuri"    # Ljava/lang/String;
    .param p5, "bssidPassed"    # Ljava/lang/String;
    .param p6, "seconds"    # I
    .param p7, "tid"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->conn:Ljava/net/HttpURLConnection;

    .line 60
    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/quicinc/cne/ICDClient;->icdQuota:I

    .line 74
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->icdProb:I

    .line 75
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->bqeQuota:I

    .line 76
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->bqeProb:I

    .line 77
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->mbw:I

    .line 78
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->postingProb:I

    .line 79
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->dl:I

    .line 80
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->sdev:I

    .line 81
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->family:I

    .line 112
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/quicinc/cne/ICDClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    .line 113
    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->icdHttpReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 114
    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 115
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentParamRsp:Ljava/lang/Boolean;

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentHttpRsp:Ljava/lang/Boolean;

    .line 117
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 118
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->family:I

    .line 119
    iput p6, p0, Lcom/quicinc/cne/ICDClient;->seconds:I

    .line 120
    iput p7, p0, Lcom/quicinc/cne/ICDClient;->tid:I

    .line 121
    iput-object p2, p0, Lcom/quicinc/cne/ICDClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 122
    iput-object p3, p0, Lcom/quicinc/cne/ICDClient;->uri:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient;->setBssid()V

    .line 125
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->cneHandle:Lcom/quicinc/cne/CNE;

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/quicinc/cne/ICDClient$icdHttp;

    invoke-direct {v1, p0, p4}, Lcom/quicinc/cne/ICDClient$icdHttp;-><init>(Lcom/quicinc/cne/ICDClient;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    const-string v0, "WQE:ICD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICDClient() constructor created with URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " httpURI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bssidPassed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/quicinc/cne/ICDClient;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->timeout:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 48
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->timeout:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/quicinc/cne/ICDClient;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;
    .param p1, "x1"    # Ljava/util/Timer;

    .line 48
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/quicinc/cne/ICDClient;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentHttpRsp:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 48
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->sentHttpRsp:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/quicinc/cne/ICDClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget v0, p0, Lcom/quicinc/cne/ICDClient;->tid:I

    return v0
.end method

.method static synthetic access$1300(Lcom/quicinc/cne/ICDClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget v0, p0, Lcom/quicinc/cne/ICDClient;->family:I

    return v0
.end method

.method static synthetic access$1400(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->cneHandle:Lcom/quicinc/cne/CNE;

    return-object v0
.end method

.method static synthetic access$200(Lcom/quicinc/cne/ICDClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget v0, p0, Lcom/quicinc/cne/ICDClient;->seconds:I

    return v0
.end method

.method static synthetic access$400(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->icdHttpReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    return-object v0
.end method

.method static synthetic access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;
    .param p1, "x1"    # Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 48
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->icdHttpReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    return-object p1
.end method

.method static synthetic access$800(Lcom/quicinc/cne/ICDClient;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->url:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$802(Lcom/quicinc/cne/ICDClient;Ljava/net/URL;)Ljava/net/URL;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;
    .param p1, "x1"    # Ljava/net/URL;

    .line 48
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->url:Ljava/net/URL;

    return-object p1
.end method

.method static synthetic access$900(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;

    .line 48
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$902(Lcom/quicinc/cne/ICDClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;

    .line 48
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->conn:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private parseIcdParamClientRsp()V
    .locals 15

    .line 759
    const-string v0, "WQE:ICD"

    const-string v1, "parseIcdParamClientRsp()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 761
    const-string v0, "WQE:ICD"

    const-string v1, "parseIcdParamClientRsp() Locked"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentParamRsp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    const-string v0, "WQE:ICD"

    const-string v1, "ICD Parameter Response sent already, doing nothing"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    if-eqz v0, :cond_1

    .line 771
    const-string v0, "WQE:ICD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICDRequest failure.Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-virtual {v2}, Lcom/quicinc/cne/ICDClient$IcdResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 775
    :cond_1
    const/4 v0, 0x0

    .line 776
    .local v0, "resp":I
    const/4 v1, 0x0

    .line 778
    .local v1, "responseMessage":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    move v0, v2

    .line 779
    iget-object v2, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 782
    goto :goto_0

    .line 780
    :catch_0
    move-exception v2

    .line 781
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 784
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    const-string v2, "WQE:ICD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICDResponse http Status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    .line 788
    const-string v2, "WQE:ICD"

    const-string v3, "ICD Parameter Request successful"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    sget-object v2, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    iput-object v2, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 790
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient;->parseIcdParamJsonRsp()V

    .line 791
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient;->cneHandle:Lcom/quicinc/cne/CNE;

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-virtual {v2}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    iget v6, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    iget v7, p0, Lcom/quicinc/cne/ICDClient;->tid:I

    iget v8, p0, Lcom/quicinc/cne/ICDClient;->icdQuota:I

    iget v9, p0, Lcom/quicinc/cne/ICDClient;->icdProb:I

    iget v10, p0, Lcom/quicinc/cne/ICDClient;->bqeQuota:I

    iget v11, p0, Lcom/quicinc/cne/ICDClient;->bqeProb:I

    iget v12, p0, Lcom/quicinc/cne/ICDClient;->mbw:I

    iget v13, p0, Lcom/quicinc/cne/ICDClient;->dl:I

    iget v14, p0, Lcom/quicinc/cne/ICDClient;->sdev:I

    invoke-virtual/range {v3 .. v14}, Lcom/quicinc/cne/CNE;->sendICDResponse(ILjava/lang/String;IIIIIIIII)V

    goto :goto_1

    .line 798
    :cond_2
    const-string v2, "WQE:ICD"

    const-string v3, "ICD Parameter Request failed"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .end local v0    # "resp":I
    .end local v1    # "responseMessage":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentParamRsp:Ljava/lang/Boolean;

    .line 803
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 804
    const-string v0, "WQE:ICD"

    const-string v1, "parseIcdParamClientRsp() UnLocked"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method private parseIcdParamJsonRsp()V
    .locals 8

    .line 653
    const-string v0, "WQE:ICD"

    const-string v1, "parseIcdParamJsonRsp()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, "jsonString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v1, "jsonSB":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move-object v3, v2

    .line 659
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 660
    move-object v4, v2

    .line 662
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_0

    .line 663
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    .end local v4    # "line":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 676
    :goto_1
    goto :goto_2

    .line 674
    :catch_0
    move-exception v4

    .line 675
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 677
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 672
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 667
    :catch_1
    move-exception v4

    .line 668
    .local v4, "ex":Ljava/io/IOException;
    nop

    .line 670
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 673
    .end local v4    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 681
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 682
    const-string v4, "WQE:ICD"

    invoke-static {v4, v0}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/net/ParseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 683
    nop

    .line 686
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 687
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    const-string v5, "bssid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 689
    const-string v4, "WQE:ICD"

    const-string v5, "Bssids match, ICD PASS"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/net/ParseException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 705
    nop

    .line 706
    :try_start_6
    const-string v4, "mbw"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/quicinc/cne/ICDClient;->mbw:I

    .line 707
    iget v4, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 708
    const-string v4, "tput"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 709
    .local v4, "tput":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 711
    const-string v5, "dl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/quicinc/cne/ICDClient;->dl:I

    .line 712
    iget v5, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 713
    const-string v5, "sdev"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/quicinc/cne/ICDClient;->sdev:I

    .line 714
    iget v5, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 716
    :cond_1
    const-string v5, "prob"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 717
    .local v5, "prob":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 719
    const-string v6, "icd"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/quicinc/cne/ICDClient;->icdProb:I

    .line 720
    iget v6, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 721
    const-string v6, "bqe"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/quicinc/cne/ICDClient;->bqeProb:I

    .line 722
    iget v6, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 724
    :cond_2
    const-string v6, "quota"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 725
    .local v6, "quota":Lorg/json/JSONObject;
    if-eqz v6, :cond_3

    .line 727
    const-string v7, "icd"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/quicinc/cne/ICDClient;->icdQuota:I

    .line 728
    iget v7, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 729
    const-string v7, "bqe"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/quicinc/cne/ICDClient;->bqeQuota:I

    .line 730
    iget v7, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/quicinc/cne/ICDClient;->flags:I
    :try_end_6
    .catch Landroid/net/ParseException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 756
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "tput":Lorg/json/JSONObject;
    .end local v5    # "prob":Lorg/json/JSONObject;
    .end local v6    # "quota":Lorg/json/JSONObject;
    :cond_3
    nop

    .line 757
    return-void

    .line 693
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    :try_start_7
    const-string v4, "WQE:ICD"

    const-string v5, "Received a mismatched bssid from the server in JSON response."

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v4, "WQE:ICD"

    const-string v5, "Interpreting as ICD FAILURE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    sget-object v4, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    iput-object v4, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 696
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/net/ParseException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 699
    :catch_2
    move-exception v4

    .line 701
    .local v4, "e":Lorg/json/JSONException;
    :try_start_8
    const-string v5, "WQE:ICD"

    const-string v6, "Didn\'t receive a JSON Object/bssid not present, possible captive portal"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v5, "WQE:ICD"

    const-string v6, "Interpreting as ICD FAILURE"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    iput-object v5, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 704
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    throw v5
    :try_end_8
    .catch Landroid/net/ParseException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 753
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v2

    .line 755
    .local v2, "e":Ljava/lang/Exception;
    return-void

    .line 747
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 749
    .local v2, "e":Lorg/json/JSONException;
    const-string v4, "WQE:ICD"

    const-string v5, "Ignoring JSON Exception"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 751
    return-void

    .line 739
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v2

    .line 741
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "WQE:ICD"

    const-string v5, "IO Exception"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 743
    const-string v4, "WQE:ICD"

    const-string v5, "Interpreting as ICD TIMEOUT"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    sget-object v4, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_TIMEOUT:Lcom/quicinc/cne/ICDClient$IcdResult;

    iput-object v4, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 745
    return-void

    .line 733
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 735
    .local v2, "e":Landroid/net/ParseException;
    const-string v4, "WQE:ICD"

    const-string v5, "Ignoring Parse  Exception"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {v2}, Landroid/net/ParseException;->printStackTrace()V

    .line 737
    return-void

    .line 672
    .end local v2    # "e":Landroid/net/ParseException;
    :goto_3
    nop

    .line 673
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 676
    goto :goto_4

    .line 674
    :catch_7
    move-exception v4

    .line 675
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 676
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    throw v2
.end method

.method private setBssid()V
    .locals 8

    .line 537
    const-string v0, "WQE:ICD"

    const-string v1, "setBssid()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 540
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    .line 543
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    .line 544
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    iput v1, p0, Lcom/quicinc/cne/ICDClient;->ipAddr:I

    .line 545
    const-string v1, "WQE:ICD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " currentBSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v1, "WQE:ICD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passed BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and IPAddr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/quicinc/cne/ICDClient;->ipAddr:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_0
    const-string v1, "WQE:ICD"

    const-string v2, "wifiMgr RemoteException returned NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/quicinc/cne/ICDClient;->bssidList:Ljava/util/ArrayList;

    .line 554
    iget-object v1, p0, Lcom/quicinc/cne/ICDClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 555
    .local v1, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v1, :cond_1

    .line 556
    const-string v2, "WQE:ICD"

    const-string v3, "wifi scan result is null"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void

    .line 560
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 561
    .local v3, "result":Landroid/net/wifi/ScanResult;
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_2

    .line 565
    :cond_2
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient;->bssidList:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    goto :goto_1

    .line 562
    .restart local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_3
    :goto_2
    const-string v4, "WQE:ICD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@Received invalid scan result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    goto :goto_1

    .line 567
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    iget-object v2, p0, Lcom/quicinc/cne/ICDClient;->bssidList:Ljava/util/ArrayList;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 568
    return-void
.end method

.method private setIcdParamClientReq()Ljava/lang/Boolean;
    .locals 12

    .line 571
    const-string v0, "WQE:ICD"

    const-string v1, "setIcdParamClientReq()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    const-string v0, "WQE:ICD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure :currentBSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " passed BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "WQE:ICD"

    const-string v2, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    sget-object v0, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 586
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 589
    :cond_1
    const/4 v0, 0x0

    .line 590
    .local v0, "numBssidAdded":I
    const/4 v2, 0x0

    .line 591
    .local v2, "np":Ljava/lang/String;
    const/4 v3, 0x0

    .line 592
    .local v3, "nx":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 593
    .local v4, "tmp1":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 595
    .local v5, "len":I
    iget-object v6, p0, Lcom/quicinc/cne/ICDClient;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 596
    .local v7, "str":Ljava/lang/String;
    const-string v9, "WQE:ICD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentbssid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",nbssid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v9, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 598
    goto :goto_0

    .line 601
    :cond_2
    if-lt v0, v8, :cond_4

    const/4 v8, 0x4

    if-ge v0, v8, :cond_4

    .line 602
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    .line 603
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const/4 v8, 0x3

    if-eq v0, v8, :cond_3

    .line 605
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    add-int/lit8 v5, v5, 0x1

    .line 608
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 611
    :cond_4
    if-nez v0, :cond_5

    .line 612
    move-object v2, v7

    .line 613
    add-int/lit8 v0, v0, 0x1

    .line 616
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 617
    :cond_6
    invoke-virtual {v4, v1, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 620
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient;->uri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?bssid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v7, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, "UrlString":Ljava/lang/String;
    if-eqz v2, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&np="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 622
    :cond_7
    if-eqz v3, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&nx="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "UTF-8"

    invoke-static {v3, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 623
    :cond_8
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/quicinc/cne/ICDClient;->url:Ljava/net/URL;

    .line 624
    const-string v7, "WQE:ICD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "created url object with url = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/quicinc/cne/ICDClient;->url:Ljava/net/URL;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 631
    .end local v6    # "UrlString":Ljava/lang/String;
    nop

    .line 634
    :try_start_1
    iget-object v6, p0, Lcom/quicinc/cne/ICDClient;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v6, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    nop

    .line 641
    :try_start_2
    iget-object v6, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0

    .line 645
    nop

    .line 647
    iget-object v1, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v6, "Accept-Encoding"

    const-string v7, "gzip;q=0,deflate;q=0"

    invoke-virtual {v1, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v6, "Cache-Control"

    const-string v7, "no-cache"

    invoke-virtual {v1, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 642
    :catch_0
    move-exception v6

    .line 643
    .local v6, "ex":Ljava/net/ProtocolException;
    invoke-virtual {v6}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 644
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 635
    .end local v6    # "ex":Ljava/net/ProtocolException;
    :catch_1
    move-exception v6

    .line 636
    .local v6, "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 637
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 628
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 629
    .local v6, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 630
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 625
    .end local v6    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v6

    .line 626
    .local v6, "ex":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 627
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 575
    .end local v0    # "numBssidAdded":I
    .end local v2    # "np":Ljava/lang/String;
    .end local v3    # "nx":Ljava/lang/String;
    .end local v4    # "tmp1":Ljava/lang/StringBuilder;
    .end local v5    # "len":I
    .end local v6    # "ex":Ljava/net/MalformedURLException;
    :cond_9
    :goto_1
    const-string v0, "WQE:ICD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure :Bssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " currentBSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " passed BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "WQE:ICD"

    const-string v2, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    sget-object v0, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 578
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 808
    const-string v0, "WQE:ICD"

    const-string v1, "ICDClient thread started"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient;->setIcdParamClientReq()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient;->parseIcdParamClientRsp()V

    .line 813
    :cond_0
    return-void
.end method
