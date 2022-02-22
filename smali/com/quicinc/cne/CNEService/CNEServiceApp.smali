.class public Lcom/quicinc/cne/CNEService/CNEServiceApp;
.super Landroid/app/Application;
.source "CNEServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CNE_STARTED:Ljava/lang/String; = "action.cne.started"

.field private static final EVENT_HALF_CHANNEL_SETUP:I = 0x2773

.field private static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final TAG:Ljava/lang/String; = "CNEServiceApp"


# instance fields
.field private mCneInstance:Lcom/quicinc/cne/CNE;

.field private mHandler:Landroid/os/Handler;

.field private mQcsChannel:Lcom/android/internal/util/AsyncChannel;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mCneInstance:Lcom/quicinc/cne/CNE;

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cneservice_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mThread:Landroid/os/HandlerThread;

    .line 88
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;

    iget-object v1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;-><init>(Lcom/quicinc/cne/CNEService/CNEServiceApp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNEService/CNEServiceApp;

    .line 30
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNEService/CNEServiceApp;

    .line 30
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mQcsChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/quicinc/cne/CNEService/CNEServiceApp;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNEService/CNEServiceApp;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .line 30
    iput-object p1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mQcsChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$200(Lcom/quicinc/cne/CNEService/CNEServiceApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNEService/CNEServiceApp;

    .line 30
    invoke-direct {p0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->testAsyncChannel()V

    return-void
.end method

.method private broadcastCNEStarted()V
    .locals 4

    .line 100
    const-string v0, "CNEServiceApp"

    const-string v1, "broadcast cne started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.cne.started"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "messenger"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 105
    return-void
.end method

.method private needStartCne()Z
    .locals 2

    .line 108
    const-string v0, "persist.cne.feature"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, "val":I
    if-nez v0, :cond_0

    .line 110
    return v1

    .line 112
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private startCne()V
    .locals 2

    .line 116
    const-string v0, "CNEServiceApp"

    const-string v1, "start cne"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Lcom/quicinc/cne/CNE;

    iget-object v1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/quicinc/cne/CNE;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mCneInstance:Lcom/quicinc/cne/CNE;

    .line 119
    :try_start_0
    const-string v0, "cneservice"

    iget-object v1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mCneInstance:Lcom/quicinc/cne/CNE;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    nop

    .line 124
    invoke-direct {p0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->broadcastCNEStarted()V

    .line 125
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    return-void
.end method

.method private testAsyncChannel()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    const v1, 0x1869f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mQcsChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 83
    const-string v1, "CNEServiceApp"

    const-string v2, "test channel, sent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 94
    const-string v0, "cneservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->needStartCne()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->startCne()V

    .line 97
    :cond_0
    return-void
.end method
