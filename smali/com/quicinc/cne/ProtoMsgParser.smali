.class public Lcom/quicinc/cne/ProtoMsgParser;
.super Ljava/lang/Object;
.source "ProtoMsgParser.java"


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "PB_MSG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static NetworkTypetoCneRatType(I)I
    .locals 1
    .param p0, "x"    # I

    .line 609
    packed-switch p0, :pswitch_data_0

    .line 617
    const/16 v0, 0xff

    return v0

    .line 615
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 613
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 611
    :pswitch_2
    const/16 v0, 0xfe

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createInitRequest()Lcom/quicinc/cne/CNERequest;
    .locals 1

    .line 535
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    return-object v0
.end method

.method public static createNatKaRequest(I)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "result"    # I

    .line 539
    new-instance v0, Lcom/quicinc/cne/Native$NatKeepAliveResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;-><init>()V

    .line 541
    .local v0, "natKeepAliveResult":Lcom/quicinc/cne/Native$NatKeepAliveResult;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->setRetcode(I)Lcom/quicinc/cne/Native$NatKeepAliveResult;

    .line 542
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> natKeepAliveResultcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->getRetcode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->toByteArray()[B

    move-result-object v1

    .line 545
    .local v1, "data":[B
    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(IIII)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "result"    # I
    .param p1, "rtt"    # I
    .param p2, "tSec"    # I
    .param p3, "tMs"    # I

    .line 510
    new-instance v0, Lcom/quicinc/cne/Native$JrttResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$JrttResult;-><init>()V

    .line 511
    .local v0, "jrttResult":Lcom/quicinc/cne/Native$JrttResult;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$JrttResult;->setResult(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 512
    invoke-virtual {v0, p1}, Lcom/quicinc/cne/Native$JrttResult;->setJrttMillis(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 513
    invoke-virtual {v0, p2}, Lcom/quicinc/cne/Native$JrttResult;->setGetTsSeconds(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 514
    invoke-virtual {v0, p3}, Lcom/quicinc/cne/Native$JrttResult;->setGetTsMillis(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 515
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> notifyJRTTResult result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$JrttResult;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " BQE params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$JrttResult;->getJrttMillis()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsSeconds()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsMillis()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$JrttResult;->toByteArray()[B

    move-result-object v1

    .line 521
    .local v1, "data":[B
    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(IILjava/lang/String;Ljava/lang/String;)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "type"    # I
    .param p1, "status"    # I
    .param p2, "ipV4Addr"    # Ljava/lang/String;
    .param p3, "ipV6Addr"    # Ljava/lang/String;

    .line 304
    new-instance v0, Lcom/quicinc/cne/Native$RatStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatStatus;-><init>()V

    .line 305
    .local v0, "ratStatus":Lcom/quicinc/cne/Native$RatStatus;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatStatus;->setRat(I)Lcom/quicinc/cne/Native$RatStatus;

    .line 306
    invoke-virtual {v0, p1}, Lcom/quicinc/cne/Native$RatStatus;->setRatStatus(I)Lcom/quicinc/cne/Native$RatStatus;

    .line 307
    invoke-virtual {v0, p2}, Lcom/quicinc/cne/Native$RatStatus;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;

    .line 308
    invoke-virtual {v0, p3}, Lcom/quicinc/cne/Native$RatStatus;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;

    .line 309
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> notifyRatConnectStatus ratType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatStatus;->getRat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatStatus;->getRatStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ipV4Addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ipV6Addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddrV6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatStatus;->toByteArray()[B

    move-result-object v1

    .line 315
    .local v1, "data":[B
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(ILjava/lang/String;II)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "result"    # I
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "tid"    # I
    .param p3, "family"    # I

    .line 462
    new-instance v0, Lcom/quicinc/cne/Native$IcdHttpResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;-><init>()V

    .line 463
    .local v0, "icdHttpResult":Lcom/quicinc/cne/Native$IcdHttpResult;
    invoke-virtual {v0, p1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 464
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->setResult(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 465
    invoke-virtual {v0, p2}, Lcom/quicinc/cne/Native$IcdHttpResult;->setTid(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 466
    invoke-virtual {v0, p3}, Lcom/quicinc/cne/Native$IcdHttpResult;->setFamily(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 467
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> notifyIcdHttpResult bssid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "tid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "family= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getFamily()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;->toByteArray()[B

    move-result-object v1

    .line 474
    .local v1, "data":[B
    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(ILjava/lang/String;IIIIIIIII)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "result"    # I
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "tid"    # I
    .param p4, "icdQuota"    # I
    .param p5, "icdProb"    # I
    .param p6, "bqeQuota"    # I
    .param p7, "bqeProb"    # I
    .param p8, "mbw"    # I
    .param p9, "dl"    # I
    .param p10, "sdev"    # I

    .line 480
    new-instance v0, Lcom/quicinc/cne/Native$IcdResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdResult;-><init>()V

    .line 481
    .local v0, "icdResult":Lcom/quicinc/cne/Native$IcdResult;
    invoke-virtual {v0, p1}, Lcom/quicinc/cne/Native$IcdResult;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdResult;

    .line 482
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdResult;->setResult(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 483
    invoke-virtual {v0, p2}, Lcom/quicinc/cne/Native$IcdResult;->setFlags(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 484
    invoke-virtual {v0, p3}, Lcom/quicinc/cne/Native$IcdResult;->setTid(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 485
    invoke-virtual {v0, p4}, Lcom/quicinc/cne/Native$IcdResult;->setIcdQuota(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 486
    invoke-virtual {v0, p5}, Lcom/quicinc/cne/Native$IcdResult;->setIcdProb(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 487
    invoke-virtual {v0, p6}, Lcom/quicinc/cne/Native$IcdResult;->setBqeQuota(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 488
    invoke-virtual {v0, p7}, Lcom/quicinc/cne/Native$IcdResult;->setBqeProb(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 489
    invoke-virtual {v0, p8}, Lcom/quicinc/cne/Native$IcdResult;->setMbw(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 490
    invoke-virtual {v0, p9}, Lcom/quicinc/cne/Native$IcdResult;->setTputDl(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 491
    invoke-virtual {v0, p10}, Lcom/quicinc/cne/Native$IcdResult;->setTputSdev(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 492
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> notifyICDResult bssid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "flags= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "tid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "icdQuota= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdQuota()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "icdprob= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdProb()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "bqeQuota= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeQuota()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "bqeProb= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeProb()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mbw= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getMbw()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "tputdl= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getTputDl()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "tputSdev= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->getTputSdev()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$IcdResult;->toByteArray()[B

    move-result-object v1

    .line 506
    .local v1, "data":[B
    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(IZ)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "familyType"    # I
    .param p1, "isAndroidValidated"    # Z

    .line 328
    new-instance v0, Lcom/quicinc/cne/Native$WlanFamType;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanFamType;-><init>()V

    .line 329
    .local v0, "wlanFam":Lcom/quicinc/cne/Native$WlanFamType;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanFamType;->setFamily(I)Lcom/quicinc/cne/Native$WlanFamType;

    .line 330
    invoke-virtual {v0, p1}, Lcom/quicinc/cne/Native$WlanFamType;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$WlanFamType;

    .line 331
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> notifyWlanConnectivityUp familyType =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanFamType;->getFamily()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , isAndroidValidated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanFamType;->getIsAndroidValidated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanFamType;->toByteArray()[B

    move-result-object v1

    .line 335
    .local v1, "data":[B
    const/16 v2, 0xc

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(Lcom/quicinc/cne/CNE$CneRatInfo;I)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "info"    # Lcom/quicinc/cne/CNE$CneRatInfo;
    .param p1, "netType"    # I

    .line 549
    new-instance v0, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 550
    .local v0, "ratInfo":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {v0, p1}, Lcom/quicinc/cne/Native$RatInfo;->setNetType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 551
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getSubType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setSubType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 552
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getNetworkState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 553
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getIPv4Address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 554
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getIPv6Address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 555
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getIPv4Iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 556
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getIPv6Iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 557
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 558
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getAndroidValidated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;

    .line 559
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getNetHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/Native$RatInfo;->setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;

    .line 560
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "nhdlstr":Ljava/lang/String;
    const-string v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****encoding**** -->  netType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getNetType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subtype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ipV4Addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ifNameV4="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ipV6Addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ifNameV6="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " timeStamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isandroidvalidated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->getIsAndroidValidated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " net handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$RatInfo;->toByteArray()[B

    move-result-object v2

    .line 573
    .local v2, "data":[B
    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v3

    return-object v3
.end method

.method public static createRequest(Lcom/quicinc/cne/CNE$CneWifiInfo;)Lcom/quicinc/cne/CNERequest;
    .locals 8
    .param p0, "_cneWifiInfo"    # Lcom/quicinc/cne/CNE$CneWifiInfo;

    .line 359
    new-instance v0, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 361
    .local v0, "ratInfo":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setNetType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 362
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getSubType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setSubType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 363
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getNetworkState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 364
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv4Address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 365
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv6Address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 366
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv4Iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 367
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv6Iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 368
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 369
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getAndroidValidated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;

    .line 370
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getNetHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/Native$RatInfo;->setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;

    .line 372
    new-instance v1, Lcom/quicinc/cne/Native$WlanInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$WlanInfo;-><init>()V

    .line 373
    .local v1, "cneWlanInfo":Lcom/quicinc/cne/Native$WlanInfo;
    invoke-virtual {v1, v0}, Lcom/quicinc/cne/Native$WlanInfo;->setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 374
    iget v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->softApState:I

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setSoftApStatus(I)Lcom/quicinc/cne/Native$WlanInfo;

    .line 375
    iget v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setRssi(I)Lcom/quicinc/cne/Native$WlanInfo;

    .line 376
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    invoke-virtual {v2}, Lcom/quicinc/cne/CNE$FreqBand;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setFreqBand(I)Lcom/quicinc/cne/Native$WlanInfo;

    .line 377
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setSsid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 378
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 379
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 380
    iget-object v3, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/quicinc/cne/Native$WlanInfo;->addDnsInfo(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getDnsInfoList()Ljava/util/List;

    move-result-object v2

    .line 385
    .local v2, "dnsInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/String;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 386
    .local v3, "dnsAddrs":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 387
    .local v5, "dnsStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .end local v5    # "dnsStr":Ljava/lang/String;
    goto :goto_1

    .line 390
    :cond_1
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "nhdlstr":Ljava/lang/String;
    const-string v5, "PB_MSG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendWifiStatus - subType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " networkState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " softApState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getSoftApStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRssi()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " freqBand = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ssid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bssid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getBssid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ipV4Addr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ifNameV4="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ipAddrV6="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ifNameV6="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " timeStamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " net handle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isAndroidValidated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quicinc/cne/Native$RatInfo;->getIsAndroidValidated()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " DNS addrs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 392
    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanInfo;->toByteArray()[B

    move-result-object v5

    .line 409
    .local v5, "data":[B
    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v6

    return-object v6
.end method

.method public static createRequest(Lcom/quicinc/cne/CNE$CneWwanInfo;)Lcom/quicinc/cne/CNERequest;
    .locals 6
    .param p0, "_cneWwanInfo"    # Lcom/quicinc/cne/CNE$CneWwanInfo;

    .line 413
    new-instance v0, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 414
    .local v0, "ratInfo":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setNetType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 415
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getSubType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setSubType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 416
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getNetworkState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 417
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getIPv4Address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 418
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getIPv6Address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 419
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getIPv4Iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 420
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getIPv6Iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 421
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 422
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getAndroidValidated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;

    .line 423
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getNetHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/Native$RatInfo;->setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;

    .line 425
    new-instance v1, Lcom/quicinc/cne/Native$WwanInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$WwanInfo;-><init>()V

    .line 426
    .local v1, "cneWwanInfo":Lcom/quicinc/cne/Native$WwanInfo;
    invoke-virtual {v1, v0}, Lcom/quicinc/cne/Native$WwanInfo;->setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WwanInfo;

    .line 427
    iget v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->signalStrength:I

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$WwanInfo;->setSignalStrength(I)Lcom/quicinc/cne/Native$WwanInfo;

    .line 428
    iget v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->roaming:I

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$WwanInfo;->setRoaming(I)Lcom/quicinc/cne/Native$WwanInfo;

    .line 429
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$WwanInfo;->setMccMnc(Ljava/lang/String;)Lcom/quicinc/cne/Native$WwanInfo;

    .line 431
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "nhdlstr":Ljava/lang/String;
    const-string v3, "PB_MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWwanStatus type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " strength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getSignalStrength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " roaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getRoaming()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ipV4Addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ifNameV4="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ipV6Addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ifNameV6="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " timeStamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mccMnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " net handle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanInfo;->toByteArray()[B

    move-result-object v3

    .line 444
    .local v3, "data":[B
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v4

    return-object v4
.end method

.method public static createRequest(Ljava/lang/String;II)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "profile"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "reasonCode"    # I

    .line 448
    new-instance v0, Lcom/quicinc/cne/Native$ProfileWlanStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;-><init>()V

    .line 450
    .local v0, "profileWlanStatus":Lcom/quicinc/cne/Native$ProfileWlanStatus;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setProfile(Ljava/lang/String;)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 451
    invoke-virtual {v0, p1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setConnectionStatus(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 452
    invoke-virtual {v0, p2}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setReason(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 453
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> profile= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "connectionstatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getConnectionStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "reasoncode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->toByteArray()[B

    move-result-object v1

    .line 458
    .local v1, "data":[B
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestAndsf()Lcom/quicinc/cne/CNERequest;
    .locals 1

    .line 290
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    return-object v0
.end method

.method public static createRequestDfNw(I)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "defNw"    # I

    .line 294
    new-instance v0, Lcom/quicinc/cne/Native$DefaultNetwork;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$DefaultNetwork;-><init>()V

    .line 295
    .local v0, "defaultNetwork":Lcom/quicinc/cne/Native$DefaultNetwork;
    invoke-static {p0}, Lcom/quicinc/cne/ProtoMsgParser;->NetworkTypetoCneRatType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$DefaultNetwork;->setNetwork(I)Lcom/quicinc/cne/Native$DefaultNetwork;

    .line 296
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> sendDefaultNwMsg: default = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$DefaultNetwork;->getNetwork()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$DefaultNetwork;->toByteArray()[B

    move-result-object v1

    .line 299
    .local v1, "data":[B
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestFeature(II)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "featureId"    # I
    .param p1, "newValue"    # I

    .line 269
    new-instance v0, Lcom/quicinc/cne/Native$FeatureInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$FeatureInfo;-><init>()V

    .line 270
    .local v0, "featureInfo":Lcom/quicinc/cne/Native$FeatureInfo;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureId(I)Lcom/quicinc/cne/Native$FeatureInfo;

    .line 271
    invoke-virtual {v0, p1}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureStatus(I)Lcom/quicinc/cne/Native$FeatureInfo;

    .line 272
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> requestFeatureSettingsChange: feature id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$FeatureInfo;->toByteArray()[B

    move-result-object v1

    .line 277
    .local v1, "data":[B
    const/16 v2, 0xe

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestFeatureSettings(I)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "featureId"    # I

    .line 281
    new-instance v0, Lcom/quicinc/cne/Native$FeatureInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$FeatureInfo;-><init>()V

    .line 282
    .local v0, "featureInfo":Lcom/quicinc/cne/Native$FeatureInfo;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureId(I)Lcom/quicinc/cne/Native$FeatureInfo;

    .line 283
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> requestFeatureSettings: featureId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$FeatureInfo;->toByteArray()[B

    move-result-object v1

    .line 286
    .local v1, "data":[B
    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestMobileData(Z)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "enabled"    # Z

    .line 319
    new-instance v0, Lcom/quicinc/cne/Native$PbMobileDataState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$PbMobileDataState;-><init>()V

    .line 320
    .local v0, "mobileDataState":Lcom/quicinc/cne/Native$PbMobileDataState;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->setIsEnabled(I)Lcom/quicinc/cne/Native$PbMobileDataState;

    .line 321
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> notifyMobileDataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$PbMobileDataState;->getIsEnabled()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$PbMobileDataState;->toByteArray()[B

    move-result-object v1

    .line 324
    .local v1, "data":[B
    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestQuotaInfo(Z)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "isReached"    # Z

    .line 258
    move v0, p0

    .line 259
    .local v0, "res":I
    new-instance v1, Lcom/quicinc/cne/Native$QuotaInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$QuotaInfo;-><init>()V

    .line 260
    .local v1, "quotaInfo":Lcom/quicinc/cne/Native$QuotaInfo;
    invoke-virtual {v1, v0}, Lcom/quicinc/cne/Native$QuotaInfo;->setIsQuotaReached(I)Lcom/quicinc/cne/Native$QuotaInfo;

    .line 261
    const-string v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****encoding**** --> isQuotaReached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$QuotaInfo;->getIsQuotaReached()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (1 reached, 0 not reached) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$QuotaInfo;->toByteArray()[B

    move-result-object v2

    .line 265
    .local v2, "data":[B
    const/16 v3, 0x15

    invoke-static {v3, v2}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v3

    return-object v3
.end method

.method public static createRequestWifiAp(II)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "currState"    # I
    .param p1, "prevState"    # I

    .line 339
    new-instance v0, Lcom/quicinc/cne/Native$WifiApInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WifiApInfo;-><init>()V

    .line 340
    .local v0, "wifiApInfo":Lcom/quicinc/cne/Native$WifiApInfo;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WifiApInfo;->setCurrState(I)Lcom/quicinc/cne/Native$WifiApInfo;

    .line 341
    invoke-virtual {v0, p1}, Lcom/quicinc/cne/Native$WifiApInfo;->setPrevState(I)Lcom/quicinc/cne/Native$WifiApInfo;

    .line 342
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> sendWifiApInfo- curstate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WifiApInfo;->getCurrState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "prevState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WifiApInfo;->getPrevState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WifiApInfo;->toByteArray()[B

    move-result-object v1

    .line 346
    .local v1, "data":[B
    const/16 v2, 0x16

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestWifiP2p(I)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "currState"    # I

    .line 350
    new-instance v0, Lcom/quicinc/cne/Native$WifiP2pInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WifiP2pInfo;-><init>()V

    .line 351
    .local v0, "wifiP2pInfo":Lcom/quicinc/cne/Native$WifiP2pInfo;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->setCurrState(I)Lcom/quicinc/cne/Native$WifiP2pInfo;

    .line 352
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->toByteArray()[B

    move-result-object v1

    .line 353
    .local v1, "data":[B
    const-string v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****encoding**** --> sendWifiP2pInfo - currstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->getCurrState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/16 v2, 0x17

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createScreenRequest(Z)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "state"    # Z

    .line 525
    new-instance v0, Lcom/quicinc/cne/Native$CneState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneState;-><init>()V

    .line 526
    .local v0, "cneState":Lcom/quicinc/cne/Native$CneState;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$CneState;->setType(I)Lcom/quicinc/cne/Native$CneState;

    .line 527
    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/quicinc/cne/Native$CneState;->setState(I)Lcom/quicinc/cne/Native$CneState;

    .line 528
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> sendScreenState: state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$CneState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$CneState;->toByteArray()[B

    move-result-object v1

    .line 531
    .local v1, "data":[B
    const/16 v2, 0x14

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createSubRatRequest(I)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "subRat"    # I

    .line 249
    new-instance v0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;-><init>()V

    .line 250
    .local v0, "wwanSubtypeInfo":Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->setSubtype(I)Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    .line 251
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****encoding**** --> Subtype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->getSubtype()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->toByteArray()[B

    move-result-object v1

    .line 254
    .local v1, "data":[B
    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method private static encodeData(I)Lcom/quicinc/cne/CNERequest;
    .locals 1
    .param p0, "type"    # I

    .line 577
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    return-object v0
.end method

.method private static encodeData(I[B)Lcom/quicinc/cne/CNERequest;
    .locals 6
    .param p0, "type"    # I
    .param p1, "data"    # [B

    .line 581
    invoke-static {p0}, Lcom/quicinc/cne/CNERequest;->obtain(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 582
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 583
    const-string v1, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create CNERequest type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/4 v1, 0x0

    return-object v1

    .line 586
    :cond_0
    new-instance v1, Lcom/quicinc/cne/Native$CneCommands;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$CneCommands;-><init>()V

    .line 587
    .local v1, "msg":Lcom/quicinc/cne/Native$CneCommands;
    iget v2, v0, Lcom/quicinc/cne/CNERequest;->mRequest:I

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$CneCommands;->setCmd(I)Lcom/quicinc/cne/Native$CneCommands;

    .line 588
    iget v2, v0, Lcom/quicinc/cne/CNERequest;->mSerial:I

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$CneCommands;->setSerial(I)Lcom/quicinc/cne/Native$CneCommands;

    .line 590
    if-eqz p1, :cond_1

    .line 591
    invoke-static {p1}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$CneCommands;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneCommands;

    .line 593
    :cond_1
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$CneCommands;->getSerializedSize()I

    move-result v2

    .line 595
    .local v2, "msgLength":I
    new-array v3, v2, [B

    iput-object v3, v0, Lcom/quicinc/cne/CNERequest;->mData:[B

    .line 597
    :try_start_0
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$CneCommands;->toByteArray()[B

    move-result-object v3

    iget-object v4, v0, Lcom/quicinc/cne/CNERequest;->mData:[B

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v3

    .line 603
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string v4, "PB_MSG"

    const-string v5, "NullPointerException while encoding data"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "ex":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 600
    :catch_1
    move-exception v3

    .line 601
    .local v3, "ex":Ljava/lang/ArrayStoreException;
    const-string v4, "PB_MSG"

    const-string v5, "ArrayStoreException while encoding data"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "ex":Ljava/lang/ArrayStoreException;
    goto :goto_0

    .line 598
    :catch_2
    move-exception v3

    .line 599
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "PB_MSG"

    const-string v5, "IndexOutOfBoundsException while encoding data"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    nop

    .line 605
    :goto_1
    return-object v0
.end method

.method public static parseBqeActiveProbe([B)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 4
    .param p0, "data"    # [B

    .line 55
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 58
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->parseFrom([B)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v1, "p":Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    nop

    .line 62
    nop

    .line 64
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BqeActiveProbeMsg:  bssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " httpuri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fileSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getFileSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-object v1

    .line 66
    :cond_2
    :goto_0
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-object v0

    .line 59
    .end local v1    # "p":Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 62
    return-object v0
.end method

.method public static parseBqePostParam([B)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 4
    .param p0, "data"    # [B

    .line 119
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 122
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->parseFrom([B)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v1, "p":Lcom/quicinc/cne/Native$BqePostParamsMsg;
    nop

    .line 126
    nop

    .line 128
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BqePostParamsMsg:  bssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tputKiloBitsPerSec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTputKiloBitsPerSec()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timeStampSec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTimeStampSec()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-object v1

    .line 130
    :cond_2
    :goto_0
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v0

    .line 123
    .end local v1    # "p":Lcom/quicinc/cne/Native$BqePostParamsMsg;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 126
    return-object v0
.end method

.method public static parseDefaultRoute([B)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 4
    .param p0, "data"    # [B

    .line 78
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 81
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->parseFrom([B)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v1, "p":Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    nop

    .line 85
    nop

    .line 87
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-object v0

    .line 91
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetDefaultRouteMsg: rat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->getRattype()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v1

    .line 82
    .end local v1    # "p":Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 85
    return-object v0
.end method

.method public static parseDisallowedAP([B)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 4
    .param p0, "data"    # [B

    .line 34
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 37
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->parseFrom([B)Lcom/quicinc/cne/Native$DisallowedAP;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v1, "p":Lcom/quicinc/cne/Native$DisallowedAP;
    nop

    .line 41
    nop

    .line 43
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisallowedAP: disallowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->getDisallowed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->getReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v1

    .line 44
    :cond_2
    :goto_0
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0

    .line 38
    .end local v1    # "p":Lcom/quicinc/cne/Native$DisallowedAP;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public static parseFeatureInfo([B)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 4
    .param p0, "data"    # [B

    .line 142
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 145
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->parseFrom([B)Lcom/quicinc/cne/Native$FeatureInfo;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v1, "p":Lcom/quicinc/cne/Native$FeatureInfo;
    nop

    .line 149
    nop

    .line 151
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FeatureInfo:  featureId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " featureStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object v1

    .line 152
    :cond_2
    :goto_0
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-object v0

    .line 146
    .end local v1    # "p":Lcom/quicinc/cne/Native$FeatureInfo;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 149
    return-object v0
.end method

.method public static parseFeatureResp([B)Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 4
    .param p0, "data"    # [B

    .line 162
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 165
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->parseFrom([B)Lcom/quicinc/cne/Native$FeatureRespMsg;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v1, "p":Lcom/quicinc/cne/Native$FeatureRespMsg;
    nop

    .line 169
    nop

    .line 171
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureType()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasResult()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FeatureRespMsg:  featureId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " featureStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-object v1

    .line 172
    :cond_2
    :goto_0
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-object v0

    .line 166
    .end local v1    # "p":Lcom/quicinc/cne/Native$FeatureRespMsg;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 169
    return-object v0
.end method

.method public static parseIcdStartMsg([B)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 4
    .param p0, "data"    # [B

    .line 96
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 99
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->parseFrom([B)Lcom/quicinc/cne/Native$IcdStartMsg;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v1, "p":Lcom/quicinc/cne/Native$IcdStartMsg;
    nop

    .line 103
    nop

    .line 105
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IcdStartMsg: uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " httpuri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-object v1

    .line 107
    :cond_2
    :goto_0
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-object v0

    .line 100
    .end local v1    # "p":Lcom/quicinc/cne/Native$IcdStartMsg;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 103
    return-object v0
.end method

.method public static parseNatKA([B)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 4
    .param p0, "data"    # [B

    .line 203
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 206
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->parseFrom([B)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .local v1, "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    nop

    .line 210
    nop

    .line 212
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NatKeepAliveRequestMsg:  timer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getTimer()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " srcPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSrcPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destIp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-object v1

    .line 214
    :cond_2
    :goto_0
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object v0

    .line 207
    .end local v1    # "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 210
    return-object v0
.end method

.method public static parsePolicyUpdateResp([B)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 4
    .param p0, "data"    # [B

    .line 183
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 186
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->parseFrom([B)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .local v1, "p":Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    nop

    .line 190
    nop

    .line 192
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasPolicy()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasResult()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyUpdateRespMsg:  policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getPolicy()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v1

    .line 193
    :cond_2
    :goto_0
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-object v0

    .line 187
    .end local v1    # "p":Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 190
    return-object v0
.end method

.method public static parseRatRequest([B)Lcom/quicinc/cne/Native$RatRequest;
    .locals 4
    .param p0, "data"    # [B

    .line 17
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 20
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$RatRequest;->parseFrom([B)Lcom/quicinc/cne/Native$RatRequest;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .local v1, "p":Lcom/quicinc/cne/Native$RatRequest;
    nop

    .line 24
    nop

    .line 26
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RatRequest;->hasRattype()Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v0

    .line 30
    :cond_1
    return-object v1

    .line 21
    .end local v1    # "p":Lcom/quicinc/cne/Native$RatRequest;
    :catch_0
    move-exception v1

    .line 22
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 24
    return-object v0
.end method

.method public static parseRssiOffload([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 4
    .param p0, "data"    # [B

    .line 226
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 229
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->parseFrom([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v1, "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    nop

    .line 233
    nop

    .line 235
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    const-string v0, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RssiOffloadMsg:  profileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " operatorName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rssiHigh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiHigh()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rssiLow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiLow()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-object v1

    .line 237
    :cond_2
    :goto_0
    const-string v2, "PB_MSG"

    const-string v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-object v0

    .line 230
    .end local v1    # "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "PB_MSG"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    array-length v2, p0

    const-string v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 233
    return-object v0
.end method
