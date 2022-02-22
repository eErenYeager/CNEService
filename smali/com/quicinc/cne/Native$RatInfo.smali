.class public final Lcom/quicinc/cne/Native$RatInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RatInfo"
.end annotation


# static fields
.field public static final IFACEV6_FIELD_NUMBER:I = 0x7

.field public static final IFACE_FIELD_NUMBER:I = 0x6

.field public static final IPADDRV6_FIELD_NUMBER:I = 0x5

.field public static final IPADDR_FIELD_NUMBER:I = 0x4

.field public static final ISANDROIDVALIDATED_FIELD_NUMBER:I = 0x9

.field public static final NETHDL_FIELD_NUMBER:I = 0xa

.field public static final NETTYPE_FIELD_NUMBER:I = 0x1

.field public static final NETWORKSTATE_FIELD_NUMBER:I = 0x3

.field public static final SUBTYPE_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x8


# instance fields
.field private cachedSize:I

.field private hasIface:Z

.field private hasIfaceV6:Z

.field private hasIpAddr:Z

.field private hasIpAddrV6:Z

.field private hasIsAndroidValidated:Z

.field private hasNetHdl:Z

.field private hasNetType:Z

.field private hasNetworkState:Z

.field private hasSubType:Z

.field private hasTimeStamp:Z

.field private ifaceV6_:Ljava/lang/String;

.field private iface_:Ljava/lang/String;

.field private ipAddrV6_:Ljava/lang/String;

.field private ipAddr_:Ljava/lang/String;

.field private isAndroidValidated_:Z

.field private netHdl_:J

.field private netType_:I

.field private networkState_:I

.field private subType_:I

.field private timeStamp_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1367
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1372
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netType_:I

    .line 1389
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->subType_:I

    .line 1406
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->networkState_:I

    .line 1423
    const-string v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddr_:Ljava/lang/String;

    .line 1440
    const-string v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddrV6_:Ljava/lang/String;

    .line 1457
    const-string v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/Native$RatInfo;->iface_:Ljava/lang/String;

    .line 1474
    const-string v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/Native$RatInfo;->ifaceV6_:Ljava/lang/String;

    .line 1491
    const-string v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/Native$RatInfo;->timeStamp_:Ljava/lang/String;

    .line 1508
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->isAndroidValidated_:Z

    .line 1525
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netHdl_:J

    .line 1593
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    .line 1367
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1717
    new-instance v0, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1711
    new-instance v0, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$RatInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1540
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearNetType()Lcom/quicinc/cne/Native$RatInfo;

    .line 1541
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearSubType()Lcom/quicinc/cne/Native$RatInfo;

    .line 1542
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearNetworkState()Lcom/quicinc/cne/Native$RatInfo;

    .line 1543
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIpAddr()Lcom/quicinc/cne/Native$RatInfo;

    .line 1544
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIpAddrV6()Lcom/quicinc/cne/Native$RatInfo;

    .line 1545
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIface()Lcom/quicinc/cne/Native$RatInfo;

    .line 1546
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIfaceV6()Lcom/quicinc/cne/Native$RatInfo;

    .line 1547
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearTimeStamp()Lcom/quicinc/cne/Native$RatInfo;

    .line 1548
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIsAndroidValidated()Lcom/quicinc/cne/Native$RatInfo;

    .line 1549
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearNetHdl()Lcom/quicinc/cne/Native$RatInfo;

    .line 1550
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    .line 1551
    return-object p0
.end method

.method public clearIface()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIface:Z

    .line 1467
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->iface_:Ljava/lang/String;

    .line 1468
    return-object p0
.end method

.method public clearIfaceV6()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6:Z

    .line 1484
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ifaceV6_:Ljava/lang/String;

    .line 1485
    return-object p0
.end method

.method public clearIpAddr()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr:Z

    .line 1433
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddr_:Ljava/lang/String;

    .line 1434
    return-object p0
.end method

.method public clearIpAddrV6()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6:Z

    .line 1450
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddrV6_:Ljava/lang/String;

    .line 1451
    return-object p0
.end method

.method public clearIsAndroidValidated()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated:Z

    .line 1518
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->isAndroidValidated_:Z

    .line 1519
    return-object p0
.end method

.method public clearNetHdl()Lcom/quicinc/cne/Native$RatInfo;
    .locals 2

    .line 1534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl:Z

    .line 1535
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netHdl_:J

    .line 1536
    return-object p0
.end method

.method public clearNetType()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetType:Z

    .line 1382
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netType_:I

    .line 1383
    return-object p0
.end method

.method public clearNetworkState()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState:Z

    .line 1416
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->networkState_:I

    .line 1417
    return-object p0
.end method

.method public clearSubType()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasSubType:Z

    .line 1399
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->subType_:I

    .line 1400
    return-object p0
.end method

.method public clearTimeStamp()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp:Z

    .line 1501
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->timeStamp_:Ljava/lang/String;

    .line 1502
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1596
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1598
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getSerializedSize()I

    .line 1600
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    return v0
.end method

.method public getIface()Ljava/lang/String;
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->iface_:Ljava/lang/String;

    return-object v0
.end method

.method public getIfaceV6()Ljava/lang/String;
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ifaceV6_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddr()Ljava/lang/String;
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddr_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddrV6()Ljava/lang/String;
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddrV6_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAndroidValidated()Z
    .locals 1

    .line 1509
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->isAndroidValidated_:Z

    return v0
.end method

.method public getNetHdl()J
    .locals 2

    .line 1526
    iget-wide v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netHdl_:J

    return-wide v0
.end method

.method public getNetType()I
    .locals 1

    .line 1373
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netType_:I

    return v0
.end method

.method public getNetworkState()I
    .locals 1

    .line 1407
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->networkState_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1605
    const/4 v0, 0x0

    .line 1606
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    const/4 v1, 0x1

    .line 1608
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1610
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasSubType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1611
    const/4 v1, 0x2

    .line 1612
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1614
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1615
    const/4 v1, 0x3

    .line 1616
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1618
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1619
    const/4 v1, 0x4

    .line 1620
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1622
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1623
    const/4 v1, 0x5

    .line 1624
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1626
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIface()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1627
    const/4 v1, 0x6

    .line 1628
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1630
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1631
    const/4 v1, 0x7

    .line 1632
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1634
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1635
    const/16 v1, 0x8

    .line 1636
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1638
    :cond_7
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1639
    const/16 v1, 0x9

    .line 1640
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIsAndroidValidated()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1642
    :cond_8
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1643
    const/16 v1, 0xa

    .line 1644
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1646
    :cond_9
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    .line 1647
    return v0
.end method

.method public getSubType()I
    .locals 1

    .line 1390
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->subType_:I

    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->timeStamp_:Ljava/lang/String;

    return-object v0
.end method

.method public hasIface()Z
    .locals 1

    .line 1459
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIface:Z

    return v0
.end method

.method public hasIfaceV6()Z
    .locals 1

    .line 1476
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6:Z

    return v0
.end method

.method public hasIpAddr()Z
    .locals 1

    .line 1425
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr:Z

    return v0
.end method

.method public hasIpAddrV6()Z
    .locals 1

    .line 1442
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6:Z

    return v0
.end method

.method public hasIsAndroidValidated()Z
    .locals 1

    .line 1510
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated:Z

    return v0
.end method

.method public hasNetHdl()Z
    .locals 1

    .line 1527
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl:Z

    return v0
.end method

.method public hasNetType()Z
    .locals 1

    .line 1374
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetType:Z

    return v0
.end method

.method public hasNetworkState()Z
    .locals 1

    .line 1408
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState:Z

    return v0
.end method

.method public hasSubType()Z
    .locals 1

    .line 1391
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasSubType:Z

    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    .line 1493
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1555
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1364
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$RatInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1655
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1656
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1660
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$RatInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1661
    return-object p0

    .line 1702
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/quicinc/cne/Native$RatInfo;->setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;

    .end local v0    # "tag":I
    goto :goto_1

    .line 1698
    .restart local v0    # "tag":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;

    .line 1699
    goto :goto_1

    .line 1694
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 1695
    goto :goto_1

    .line 1690
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 1691
    goto :goto_1

    .line 1686
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 1687
    goto :goto_1

    .line 1682
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 1683
    goto :goto_1

    .line 1678
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 1679
    goto :goto_1

    .line 1674
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 1675
    goto :goto_1

    .line 1670
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setSubType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 1671
    goto :goto_1

    .line 1666
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setNetType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 1667
    goto :goto_1

    .line 1658
    :sswitch_a
    return-object p0

    .line 1706
    .end local v0    # "tag":I
    :cond_0
    :goto_1
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIface:Z

    .line 1462
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->iface_:Ljava/lang/String;

    .line 1463
    return-object p0
.end method

.method public setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6:Z

    .line 1479
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->ifaceV6_:Ljava/lang/String;

    .line 1480
    return-object p0
.end method

.method public setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr:Z

    .line 1428
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddr_:Ljava/lang/String;

    .line 1429
    return-object p0
.end method

.method public setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6:Z

    .line 1445
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddrV6_:Ljava/lang/String;

    .line 1446
    return-object p0
.end method

.method public setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Z

    .line 1512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated:Z

    .line 1513
    iput-boolean p1, p0, Lcom/quicinc/cne/Native$RatInfo;->isAndroidValidated_:Z

    .line 1514
    return-object p0
.end method

.method public setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # J

    .line 1529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl:Z

    .line 1530
    iput-wide p1, p0, Lcom/quicinc/cne/Native$RatInfo;->netHdl_:J

    .line 1531
    return-object p0
.end method

.method public setNetType(I)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # I

    .line 1376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetType:Z

    .line 1377
    iput p1, p0, Lcom/quicinc/cne/Native$RatInfo;->netType_:I

    .line 1378
    return-object p0
.end method

.method public setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # I

    .line 1410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState:Z

    .line 1411
    iput p1, p0, Lcom/quicinc/cne/Native$RatInfo;->networkState_:I

    .line 1412
    return-object p0
.end method

.method public setSubType(I)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # I

    .line 1393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasSubType:Z

    .line 1394
    iput p1, p0, Lcom/quicinc/cne/Native$RatInfo;->subType_:I

    .line 1395
    return-object p0
.end method

.method public setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp:Z

    .line 1496
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->timeStamp_:Ljava/lang/String;

    .line 1497
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1561
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1564
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasSubType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1565
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1567
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1568
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1570
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1571
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1573
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1574
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1576
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIface()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1577
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1579
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1580
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1582
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1583
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1585
    :cond_7
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1586
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIsAndroidValidated()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1588
    :cond_8
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1589
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 1591
    :cond_9
    return-void
.end method
