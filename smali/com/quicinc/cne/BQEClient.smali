.class public Lcom/quicinc/cne/BQEClient;
.super Ljava/lang/Object;
.source "BQEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/BQEClient$BqeResult;
    }
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "WQE:BQE"

.field private static inProgress:Ljava/lang/Boolean;


# instance fields
.field private baseUrlString:Ljava/lang/String;

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

.field private bssidURL:Ljava/net/URL;

.field private cneHandle:Lcom/quicinc/cne/CNE;

.field private conn:Ljava/net/HttpURLConnection;

.field private currentBSSID:Ljava/lang/String;

.field private filesize:Ljava/lang/String;

.field private getRequestUrl:Ljava/lang/String;

.field private ipAddr:I

.field private postMsg:Ljava/lang/String;

.field private postingThread:Ljava/lang/Boolean;

.field private result:Lcom/quicinc/cne/BQEClient$BqeResult;

.field private rspLock:Ljava/util/concurrent/locks/Lock;

.field private rtt:I

.field private rttEnd:J

.field private rttStart:J

.field private sconn:Ljavax/net/ssl/HttpsURLConnection;

.field private sentRsp:Ljava/lang/Boolean;

.field private serverInetAddr:Ljava/net/InetAddress;

.field private tMs:I

.field private tSec:I

.field private tput:I

.field private ts:I

.field private url:Ljava/net/URL;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "handle"    # Lcom/quicinc/cne/CNE;
    .param p2, "wifi"    # Landroid/net/wifi/WifiManager;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "bssidPassed"    # Ljava/lang/String;
    .param p5, "filesize"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    .line 44
    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    .line 88
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/quicinc/cne/BQEClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    .line 89
    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 90
    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->getRequestUrl:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/quicinc/cne/BQEClient;->sentRsp:Ljava/lang/Boolean;

    .line 92
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/quicinc/cne/BQEClient;->inProgress:Ljava/lang/Boolean;

    .line 93
    iput v0, p0, Lcom/quicinc/cne/BQEClient;->rtt:I

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/quicinc/cne/BQEClient;->rttStart:J

    .line 95
    iput-wide v1, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    .line 96
    iput v0, p0, Lcom/quicinc/cne/BQEClient;->tSec:I

    .line 97
    iput v0, p0, Lcom/quicinc/cne/BQEClient;->tMs:I

    .line 98
    iput-object p2, p0, Lcom/quicinc/cne/BQEClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    .line 100
    iput-object p3, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/quicinc/cne/BQEClient;->filesize:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->setBssid()V

    .line 104
    iput-object p1, p0, Lcom/quicinc/cne/BQEClient;->cneHandle:Lcom/quicinc/cne/CNE;

    .line 105
    const-string v0, "WQE:BQE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BQEClient() constructor created with GET URI ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and bssidPassed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "handle"    # Lcom/quicinc/cne/CNE;
    .param p2, "wifi"    # Landroid/net/wifi/WifiManager;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "getRequestUrl"    # Ljava/lang/String;
    .param p5, "bssidPassed"    # Ljava/lang/String;
    .param p6, "tput"    # Ljava/lang/String;
    .param p7, "ts"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    .line 44
    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    .line 112
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/quicinc/cne/BQEClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    .line 113
    iput-object p4, p0, Lcom/quicinc/cne/BQEClient;->getRequestUrl:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->sentRsp:Ljava/lang/Boolean;

    .line 116
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/quicinc/cne/BQEClient;->ts:I

    .line 117
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/quicinc/cne/BQEClient;->tput:I

    .line 118
    iput-object p2, p0, Lcom/quicinc/cne/BQEClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    .line 120
    iput-object p3, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->setBssid()V

    .line 123
    iput-object p1, p0, Lcom/quicinc/cne/BQEClient;->cneHandle:Lcom/quicinc/cne/CNE;

    .line 124
    const-string v0, "WQE:BQE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BQEClient() constructor created with POST URI ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and bssidPassed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private consumeBQERspData()V
    .locals 6

    .line 383
    const-string v0, "WQE:BQE"

    const-string v1, "consumeBQERspData()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v0, "jsonSB":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move-object v2, v1

    .line 388
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    goto :goto_0

    .line 391
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 393
    :goto_0
    nop

    .line 395
    .local v1, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_1

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 404
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 405
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 410
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 409
    :cond_2
    :goto_2
    goto :goto_3

    .line 403
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 399
    :catch_1
    move-exception v1

    .line 400
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    .end local v1    # "ex":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 405
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 412
    :goto_3
    const/4 v1, 0x0

    .line 413
    .local v1, "jsonString":Ljava/lang/String;
    const-string v3, "WQE:BQE"

    const-string v4, "Done Consuming the BQE data"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/quicinc/cne/BQEClient;->inProgress:Ljava/lang/Boolean;

    .line 415
    invoke-static {}, Lcom/quicinc/cne/BQEClient;->stop()V

    .line 416
    return-void

    .line 403
    .end local v1    # "jsonString":Ljava/lang/String;
    :goto_4
    nop

    .line 404
    if-eqz v2, :cond_3

    .line 405
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 407
    :catch_2
    move-exception v3

    .line 408
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 409
    :cond_3
    :goto_5
    throw v1
.end method

.method private parseBQEClientRsp()V
    .locals 7

    .line 423
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 424
    const-string v0, "WQE:BQE"

    const-string v1, "parseBQEClientRsp() Locked"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->sentRsp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "WQE:BQE"

    const-string v1, "Response sent already, doing nothing"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    if-eqz v0, :cond_1

    .line 433
    const-string v0, "WQE:BQE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BQERequest failure.Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v2}, Lcom/quicinc/cne/BQEClient$BqeResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_2

    .line 438
    :cond_1
    const/4 v0, 0x0

    .line 439
    .local v0, "statusCode":I
    const/4 v1, 0x0

    .line 441
    .local v1, "reasonPhrase":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 442
    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    move v0, v2

    .line 443
    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    .line 446
    new-instance v2, Ljava/lang/Long;

    iget-wide v3, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    iget-wide v5, p0, Lcom/quicinc/cne/BQEClient;->rttStart:J

    sub-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, p0, Lcom/quicinc/cne/BQEClient;->rtt:I

    .line 447
    new-instance v2, Ljava/lang/Long;

    iget-wide v3, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, p0, Lcom/quicinc/cne/BQEClient;->tSec:I

    .line 448
    new-instance v2, Ljava/lang/Long;

    iget-wide v3, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    rem-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, p0, Lcom/quicinc/cne/BQEClient;->tMs:I

    .line 449
    const-string v2, "WQE:BQE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rttStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/quicinc/cne/BQEClient;->rttStart:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " rttEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " tSec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/quicinc/cne/BQEClient;->tSec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tMs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/quicinc/cne/BQEClient;->tMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    move v0, v2

    .line 452
    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 457
    :goto_0
    goto :goto_1

    .line 454
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 456
    const/4 v0, -0x1

    .line 459
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    const-string v2, "WQE:BQE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BQEResponse http Status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    .line 462
    const-string v2, "WQE:BQE"

    const-string v3, "BQERequest successful"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_CONTINUE:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 464
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    .line 465
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->consumeBQERspData()V

    goto/16 :goto_2

    .line 467
    :cond_3
    const/16 v2, 0x12e

    if-ne v0, v2, :cond_4

    .line 469
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 470
    const-string v2, "WQE:BQE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BQERequest failure.Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v4}, Lcom/quicinc/cne/BQEClient$BqeResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_2

    .line 473
    :cond_4
    const/16 v2, 0x190

    if-ne v0, v2, :cond_5

    .line 475
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 476
    const-string v2, "WQE:BQE"

    const-string v3, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_2

    .line 479
    :cond_5
    const/16 v2, 0x194

    if-ne v0, v2, :cond_6

    .line 481
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 482
    const-string v2, "WQE:BQE"

    const-string v3, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_2

    .line 485
    :cond_6
    const/16 v2, 0x195

    if-ne v0, v2, :cond_7

    .line 487
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 488
    const-string v2, "WQE:BQE"

    const-string v3, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_2

    .line 491
    :cond_7
    const/16 v2, 0x196

    if-ne v0, v2, :cond_8

    .line 493
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 494
    const-string v2, "WQE:BQE"

    const-string v3, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_2

    .line 497
    :cond_8
    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_9

    .line 499
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 500
    const-string v2, "WQE:BQE"

    const-string v3, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_2

    .line 503
    :cond_9
    const/16 v2, 0x1f5

    if-ne v0, v2, :cond_a

    .line 505
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 506
    const-string v2, "WQE:BQE"

    const-string v3, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto :goto_2

    .line 509
    :cond_a
    const/16 v2, 0x1f7

    if-ne v0, v2, :cond_b

    .line 511
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 512
    const-string v2, "WQE:BQE"

    const-string v3, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto :goto_2

    .line 515
    :cond_b
    const/16 v2, 0x1f9

    if-ne v0, v2, :cond_c

    .line 517
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 518
    const-string v2, "WQE:BQE"

    const-string v3, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto :goto_2

    .line 521
    :cond_c
    const/16 v2, 0x64

    if-ge v0, v2, :cond_d

    if-ltz v0, :cond_d

    .line 523
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 524
    const-string v2, "WQE:BQE"

    const-string v3, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto :goto_2

    .line 529
    :cond_d
    sget-object v2, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 530
    const-string v2, "WQE:BQE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BQERequest failure.Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v4}, Lcom/quicinc/cne/BQEClient$BqeResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    .line 535
    .end local v0    # "statusCode":I
    .end local v1    # "reasonPhrase":Ljava/lang/String;
    :goto_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->sentRsp:Ljava/lang/Boolean;

    .line 536
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 537
    const-string v0, "WQE:BQE"

    const-string v1, "parseBQEClientRsp() UnLocked"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method private sendBQEClientReq()Ljava/lang/Boolean;
    .locals 3

    .line 348
    const-string v0, "WQE:BQE"

    const-string v1, "sendBQEClientReq()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 358
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    .line 360
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 361
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->postMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 362
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    nop

    .line 371
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 369
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 366
    :catch_1
    move-exception v1

    .line 367
    .local v1, "ex":Ljava/lang/NullPointerException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    if-eqz v0, :cond_0

    .line 371
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 363
    :catch_2
    move-exception v1

    .line 364
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 370
    .end local v1    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 371
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 373
    :catch_3
    move-exception v1

    .line 374
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 376
    .end local v1    # "ex":Ljava/io/IOException;
    goto :goto_4

    .line 375
    :cond_0
    :goto_1
    goto :goto_4

    .line 369
    :goto_2
    nop

    .line 370
    if-eqz v0, :cond_1

    .line 371
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 373
    :catch_4
    move-exception v2

    .line 374
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "ex":Ljava/io/IOException;
    nop

    .line 375
    :cond_1
    :goto_3
    throw v1

    .line 379
    .end local v0    # "os":Ljava/io/OutputStream;
    :cond_2
    :goto_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private sendBQEResponse()V
    .locals 5

    .line 419
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->cneHandle:Lcom/quicinc/cne/CNE;

    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v1}, Lcom/quicinc/cne/BQEClient$BqeResult;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE;->sendBQEResponse(I)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->cneHandle:Lcom/quicinc/cne/CNE;

    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v1}, Lcom/quicinc/cne/BQEClient$BqeResult;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/quicinc/cne/BQEClient;->rtt:I

    iget v3, p0, Lcom/quicinc/cne/BQEClient;->tSec:I

    iget v4, p0, Lcom/quicinc/cne/BQEClient;->tMs:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/quicinc/cne/CNE;->sendBQEResponse(IIII)V

    .line 421
    :goto_0
    return-void
.end method

.method private setBQEClientReq()Ljava/lang/Boolean;
    .locals 14

    .line 166
    const-string v0, "WQE:BQE"

    const-string v1, "setBQEClientReq()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 176
    const-string v0, "WQE:BQE"

    const-string v2, "Failure :base url==NULL"

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 178
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    const-string v0, "WQE:BQE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure :currentBSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " passed BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 184
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 186
    :cond_2
    const/4 v0, 0x0

    .line 187
    .local v0, "np":Ljava/lang/String;
    const/4 v2, 0x0

    .line 189
    .local v2, "xp":Ljava/lang/String;
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v3, :cond_b

    .line 191
    const-string v3, "WQE:BQE"

    const-string v6, "Set non-Posting Request"

    invoke-static {v3, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, "numBssidAdded":I
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 194
    .local v6, "tmp1":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 195
    .local v7, "len":I
    iget-object v8, p0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 196
    .local v9, "str":Ljava/lang/String;
    const-string v10, "WQE:BQE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@@@currentbssid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",nbssid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v10, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 198
    goto :goto_0

    .line 201
    :cond_3
    if-lt v3, v5, :cond_5

    if-ge v3, v4, :cond_5

    .line 202
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v7, v10

    .line 203
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const/4 v10, 0x3

    if-eq v3, v10, :cond_4

    .line 205
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v7, v7, 0x1

    .line 208
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 211
    :cond_5
    if-nez v3, :cond_6

    .line 212
    move-object v0, v9

    .line 213
    add-int/lit8 v3, v3, 0x1

    .line 216
    .end local v9    # "str":Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 218
    :cond_7
    invoke-virtual {v6, v1, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "?bssid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, "UrlString":Ljava/lang/String;
    iget-object v9, p0, Lcom/quicinc/cne/BQEClient;->filesize:Ljava/lang/String;

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/quicinc/cne/BQEClient;->filesize:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 223
    :cond_8
    if-eqz v0, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&np="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "UTF-8"

    invoke-static {v0, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 224
    :cond_9
    if-eqz v2, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&xp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "UTF-8"

    invoke-static {v2, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 225
    :cond_a
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/quicinc/cne/BQEClient;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v8    # "UrlString":Ljava/lang/String;
    goto :goto_1

    .line 229
    :catch_0
    move-exception v4

    .line 230
    .local v4, "ex":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 231
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 226
    .end local v4    # "ex":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    .line 227
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 228
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 235
    .end local v3    # "numBssidAdded":I
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "tmp1":Ljava/lang/StringBuilder;
    .end local v7    # "len":I
    :cond_b
    :goto_1
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 238
    const-string v3, "WQE:BQE"

    const-string v6, "Set Posting Request"

    invoke-static {v3, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v3, 0x0

    .line 243
    .local v3, "getServerIP":Ljava/lang/String;
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .local v6, "rspitems":Lorg/json/JSONObject;
    const-string v7, "bssid"

    iget-object v8, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v7, "tput"

    iget v8, p0, Lcom/quicinc/cne/BQEClient;->tput:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    const-string v7, "ts"

    iget v8, p0, Lcom/quicinc/cne/BQEClient;->ts:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 248
    const-string v7, "edgeIP"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :cond_c
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 252
    .local v7, "ngbhs":Lorg/json/JSONArray;
    const/4 v8, 0x1

    .line 253
    .local v8, "numBssidAdded":I
    iget-object v9, p0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 254
    .local v10, "str":Ljava/lang/String;
    const-string v11, "WQE:BQE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PostFindings-currentbssid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",nbssid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v11, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 256
    goto :goto_2

    .line 259
    :cond_d
    if-lt v8, v5, :cond_e

    if-ge v8, v4, :cond_e

    .line 260
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 261
    add-int/lit8 v8, v8, 0x1

    .line 263
    .end local v10    # "str":Ljava/lang/String;
    :cond_e
    goto :goto_2

    .line 264
    :cond_f
    const-string v4, "ngbh.bssids"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 267
    .local v4, "rsparray":Lorg/json/JSONArray;
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 270
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .local v9, "rsp":Lorg/json/JSONObject;
    const-string v10, "acs"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/quicinc/cne/BQEClient;->postMsg:Ljava/lang/String;

    .line 274
    const-string v10, "WQE:BQE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PostFinding="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/quicinc/cne/BQEClient;->postMsg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 280
    .end local v4    # "rsparray":Lorg/json/JSONArray;
    .end local v6    # "rspitems":Lorg/json/JSONObject;
    .end local v7    # "ngbhs":Lorg/json/JSONArray;
    .end local v8    # "numBssidAdded":I
    .end local v9    # "rsp":Lorg/json/JSONObject;
    goto :goto_3

    .line 277
    :catch_2
    move-exception v4

    .line 279
    .local v4, "ue":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 283
    .end local v4    # "ue":Lorg/json/JSONException;
    :goto_3
    :try_start_2
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/quicinc/cne/BQEClient;->url:Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6

    .line 291
    nop

    .line 294
    :try_start_3
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v4, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    .line 301
    nop

    .line 304
    :try_start_4
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v6, "POST"

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3

    .line 308
    nop

    .line 310
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v4, 0x1388

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 311
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 313
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 314
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->postMsg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 316
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Accept-Encoding"

    const-string v6, "gzip;q=0,deflate;q=0"

    invoke-virtual {v1, v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Cache-Control"

    const-string v6, "no-cache"

    invoke-virtual {v1, v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Content-Type"

    const-string v6, "application/json;charset=utf-8"

    invoke-virtual {v1, v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "X-Requested-With"

    const-string v6, "XMLHttpRequest"

    invoke-virtual {v1, v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v3    # "getServerIP":Ljava/lang/String;
    goto :goto_4

    .line 305
    .restart local v3    # "getServerIP":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 306
    .local v4, "ex":Ljava/net/ProtocolException;
    invoke-virtual {v4}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 307
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 298
    .end local v4    # "ex":Ljava/net/ProtocolException;
    :catch_4
    move-exception v4

    .line 299
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string v5, "WQE:BQE"

    const-string v6, "Cannot open connection on NULL url, skipping post"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 295
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v4

    .line 296
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 297
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 288
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 289
    .local v4, "ex":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 290
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 284
    .end local v4    # "ex":Ljava/net/MalformedURLException;
    :catch_7
    move-exception v4

    .line 285
    .local v4, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 286
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 326
    .end local v3    # "getServerIP":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :cond_10
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/quicinc/cne/BQEClient;->rttStart:J

    .line 327
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 331
    nop

    .line 334
    :try_start_6
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_8

    .line 338
    nop

    .line 340
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip;q=0,deflate;q=0"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    const-string v3, "Cache-Control"

    const-string v4, "no-cache"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 335
    :catch_8
    move-exception v3

    .line 336
    .local v3, "ex":Ljava/net/ProtocolException;
    invoke-virtual {v3}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 337
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 328
    .end local v3    # "ex":Ljava/net/ProtocolException;
    :catch_9
    move-exception v3

    .line 329
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 330
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 170
    .end local v0    # "np":Ljava/lang/String;
    .end local v2    # "xp":Ljava/lang/String;
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_11
    :goto_5
    const-string v0, "WQE:BQE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure :Bssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " currentBSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " passed BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setBssid()V
    .locals 8

    .line 137
    const-string v0, "WQE:BQE"

    const-string v1, "setBssid()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 139
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    .line 142
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    iput v1, p0, Lcom/quicinc/cne/BQEClient;->ipAddr:I

    .line 144
    const-string v1, "WQE:BQE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " currentBSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "WQE:BQE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passed BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and IPAddr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/quicinc/cne/BQEClient;->ipAddr:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    const-string v1, "WQE:BQE"

    const-string v2, "wifiMgr RemoteException returned NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 156
    .local v3, "result":Landroid/net/wifi/ScanResult;
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_2

    .line 160
    :cond_1
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    goto :goto_1

    .line 157
    .restart local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    :goto_2
    const-string v4, "WQE:BQE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@Received invalid scan result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    goto :goto_1

    .line 162
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_3
    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    return-void
.end method

.method public static stop()V
    .locals 2

    .line 128
    sget-object v0, Lcom/quicinc/cne/BQEClient;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    const-string v0, "WQE:BQE"

    const-string v1, "BQE active probing is already stopped"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    const-string v0, "WQE:BQE"

    const-string v1, "BQE active probing is now stopped"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 543
    const-string v0, "WQE:BQE"

    const-string v1, "BQEClient thread started"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->setBQEClientReq()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEClientReq()Ljava/lang/Boolean;

    .line 547
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->parseBQEClientRsp()V

    .line 549
    :cond_0
    return-void
.end method
