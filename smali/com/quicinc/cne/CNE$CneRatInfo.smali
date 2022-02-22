.class Lcom/quicinc/cne/CNE$CneRatInfo;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CneRatInfo"
.end annotation


# instance fields
.field ifNameV4:Ljava/lang/String;

.field ifNameV6:Ljava/lang/String;

.field ipAddrV4:Ljava/lang/String;

.field ipAddrV6:Ljava/lang/String;

.field isAndroidValidated:Z

.field netHdl:J

.field networkState:I

.field networkType:I

.field subType:I

.field final synthetic this$0:Lcom/quicinc/cne/CNE;

.field timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 2
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .line 366
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV4:Ljava/lang/String;

    .line 368
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV6:Ljava/lang/String;

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV4:Ljava/lang/String;

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV6:Ljava/lang/String;

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkType:I

    .line 372
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-static {p1, v1}, Lcom/quicinc/cne/CNE;->access$400(Lcom/quicinc/cne/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v1

    iput v1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkState:I

    .line 373
    iput v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->subType:I

    .line 374
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->timeStamp:Ljava/lang/String;

    .line 375
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->netHdl:J

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->isAndroidValidated:Z

    .line 377
    return-void
.end method


# virtual methods
.method public getAndroidValidated()Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->isAndroidValidated:Z

    return v0
.end method

.method public getIPv4Address()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV4:Ljava/lang/String;

    return-object v0
.end method

.method public getIPv4Iface()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV4:Ljava/lang/String;

    return-object v0
.end method

.method public getIPv6Address()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV6:Ljava/lang/String;

    return-object v0
.end method

.method public getIPv6Iface()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV6:Ljava/lang/String;

    return-object v0
.end method

.method public getNetHandle()J
    .locals 2

    .line 403
    iget-wide v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->netHdl:J

    return-wide v0
.end method

.method public getNetworkState()I
    .locals 1

    .line 411
    iget v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkState:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkType:I

    return v0
.end method

.method public getSubType()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->subType:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public resetRatInfo()V
    .locals 2

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV4:Ljava/lang/String;

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV6:Ljava/lang/String;

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV4:Ljava/lang/String;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV6:Ljava/lang/String;

    .line 384
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->netHdl:J

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->isAndroidValidated:Z

    .line 386
    return-void
.end method

.method public setAndroidValidated(Z)V
    .locals 0
    .param p1, "isValidated"    # Z

    .line 471
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->isAndroidValidated:Z

    .line 472
    return-void
.end method

.method public setIPv4Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipV4Addr"    # Ljava/lang/String;

    .line 431
    if-eqz p1, :cond_0

    .line 432
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV4:Ljava/lang/String;

    .line 434
    :cond_0
    return-void
.end method

.method public setIPv4Iface(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipV4Iface"    # Ljava/lang/String;

    .line 451
    if-eqz p1, :cond_0

    .line 452
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV4:Ljava/lang/String;

    .line 454
    :cond_0
    return-void
.end method

.method public setIPv6Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipV6Addr"    # Ljava/lang/String;

    .line 441
    if-eqz p1, :cond_0

    .line 442
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV6:Ljava/lang/String;

    .line 444
    :cond_0
    return-void
.end method

.method public setIPv6Iface(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipV6Iface"    # Ljava/lang/String;

    .line 461
    if-eqz p1, :cond_0

    .line 462
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV6:Ljava/lang/String;

    .line 464
    :cond_0
    return-void
.end method

.method public setNetHandle(J)V
    .locals 0
    .param p1, "netHdl"    # J

    .line 399
    iput-wide p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->netHdl:J

    .line 400
    return-void
.end method

.method public setNetworkState(I)V
    .locals 0
    .param p1, "netState"    # I

    .line 407
    iput p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkState:I

    .line 408
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .param p1, "netType"    # I

    .line 423
    iput p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkType:I

    .line 424
    return-void
.end method

.method public setSubType(I)V
    .locals 0
    .param p1, "subType"    # I

    .line 415
    iput p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->subType:I

    .line 416
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ts"    # Ljava/lang/String;

    .line 389
    if-eqz p1, :cond_0

    .line 390
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->timeStamp:Ljava/lang/String;

    .line 392
    :cond_0
    return-void
.end method
