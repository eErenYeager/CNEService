.class public Lcom/quicinc/cne/ProtoMsgTest;
.super Ljava/lang/Object;
.source "ProtoMsgTest.java"


# static fields
.field private static final TEST_TAG:Ljava/lang/String; = "TEST"

.field private static mCne:Lcom/quicinc/cne/CNE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static TEST_NOTIFY_NAT_KEEP_ALIVE_RESULT()V
    .locals 3

    .line 115
    const-string v0, "TEST"

    const-string v1, "------> TEST_NOTIFY_NAT_KEEP_ALIVE_RESULT"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->createNatKaRequest(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 117
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 118
    const-string v1, "TEST"

    const-string v2, "sendNatKeepAliveErrorResult: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 121
    :cond_0
    sget-object v1, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v1, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 122
    return-void
.end method

.method private static TEST_NOTIFY_NETWORK_REQUEST_INFO()V
    .locals 4

    .line 94
    const-string v0, "TEST"

    const-string v1, "------> TEST_NOTIFY_NETWORK_REQUEST_INFO"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/quicinc/cne/CNE$CneRatInfo;

    sget-object v1, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 96
    .local v0, "ratInfo":Lcom/quicinc/cne/CNE$CneRatInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkType(I)V

    .line 97
    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSubType(I)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkState(I)V

    .line 99
    const-string v2, "192.168.1.100"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Address(Ljava/lang/String;)V

    .line 100
    const-string v2, "2001:0DBB:ABCD:1234:5678:::9999"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv6Address(Ljava/lang/String;)V

    .line 101
    const-string v2, "wlan0"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Iface(Ljava/lang/String;)V

    .line 102
    const-string v2, "wlan1"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv6Iface(Ljava/lang/String;)V

    .line 103
    const-string v2, "2016-05-10 13:00:31.123"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setTimeStamp(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;->setAndroidValidated(Z)V

    .line 105
    const-wide v2, 0x6500facadeL

    invoke-virtual {v0, v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetHandle(J)V

    .line 106
    invoke-static {v0, v1}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(Lcom/quicinc/cne/CNE$CneRatInfo;I)Lcom/quicinc/cne/CNERequest;

    move-result-object v1

    .line 107
    .local v1, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v1, :cond_0

    .line 108
    const-string v2, "TEST"

    const-string v3, "sendRatInfo: rr=NULL"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 111
    :cond_0
    sget-object v2, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v2, v1}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 112
    return-void
.end method

.method private static TEST_NOTIFY_WLAN_STATUS_PROFILE()V
    .locals 3

    .line 82
    const-string v0, "TEST"

    const-string v1, "------> TEST_NOTIFY_WLAN_STATUS_PROFILE"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "profile0"

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(Ljava/lang/String;II)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 86
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 87
    const-string v1, "TEST"

    const-string v2, "sendWlanStatusforProfile: rr = NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 90
    :cond_0
    sget-object v1, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v1, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 91
    return-void
.end method

.method private static TEST_NOTIFY_WWAN_SUBTYPE()V
    .locals 3

    .line 33
    const-string v0, "TEST"

    const-string v1, "------> TEST_NOTIFY_WWAN_SUBTYPE"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->createSubRatRequest(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 35
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 36
    const-string v1, "TEST"

    const-string v2, "notifySubRat: rr=NULL - not updated"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 39
    :cond_0
    sget-object v1, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v1, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 40
    return-void
.end method

.method public static TEST_RECV_PROTOBUF_MSG([BI)V
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "length"    # I

    .line 126
    const-string v0, "TEST"

    const-string v1, "ATTENTION: IN TEST MODE!!! received protobuf msg: "

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-array v0, p1, [B

    .line 131
    .local v0, "pto":[B
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :try_start_0
    invoke-static {v0}, Lcom/quicinc/cne/Native$CneMessage;->parseFrom([B)Lcom/quicinc/cne/Native$CneMessage;

    move-result-object v1

    .line 134
    .local v1, "msg":Lcom/quicinc/cne/Native$CneMessage;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$CneMessage;->getResponse()I

    move-result v2

    .line 135
    .local v2, "rspType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 136
    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_processUnsolicitedProtoBufMsg(Lcom/quicinc/cne/Native$CneMessage;)V

    goto :goto_0

    .line 139
    :cond_0
    const-string v3, "TEST"

    const-string v4, "unknown protobuf msg, ignore."

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "msg":Lcom/quicinc/cne/Native$CneMessage;
    .end local v2    # "rspType":I
    :goto_0
    goto :goto_1

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "TEST"

    const-string v3, " parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v1    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_1
    return-void
.end method

.method private static TEST_REQUEST_UPDATE_DEFAULT_NETWORK_INFO()V
    .locals 3

    .line 43
    const-string v0, "TEST"

    const-string v1, "------> TEST_REQUEST_UPDATE_DEFAULT_NETWORK_INFO"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestDfNw(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 45
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 46
    const-string v1, "TEST"

    const-string v2, "sendDefaultNwMsg: rr=NULL - not updated"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 49
    :cond_0
    sget-object v1, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v1, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 50
    return-void
.end method

.method private static TEST_REQUEST_UPDATE_WLAN_INFO()V
    .locals 4

    .line 53
    const-string v0, "TEST"

    const-string v1, "------> TEST_REQUEST_UPDATE_WLAN_INFO"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/quicinc/cne/CNE$CneWifiInfo;

    sget-object v1, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 55
    .local v0, "cw":Lcom/quicinc/cne/CNE$CneWifiInfo;
    const/4 v1, 0x1

    iput v1, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkType:I

    .line 56
    const/16 v2, 0x65

    iput v2, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->subType:I

    .line 57
    iput v1, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    .line 58
    const-wide v2, 0x6500facadeL

    iput-wide v2, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->netHdl:J

    .line 59
    const-string v2, "192.168.1.100"

    iput-object v2, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV4:Ljava/lang/String;

    .line 60
    const-string v2, "2001:0DBB:ABCD:1234:5678:::9999"

    iput-object v2, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV6:Ljava/lang/String;

    .line 61
    const-string v2, "wlan0"

    iput-object v2, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ifNameV4:Ljava/lang/String;

    .line 62
    const-string v2, "wlan1"

    iput-object v2, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ifNameV6:Ljava/lang/String;

    .line 63
    const-string v2, "2016-05-10 13:00:31.123"

    iput-object v2, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->timeStamp:Ljava/lang/String;

    .line 64
    iput-boolean v1, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->isAndroidValidated:Z

    .line 65
    const/16 v1, 0xb

    iput v1, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->softApState:I

    .line 66
    const/16 v1, -0x46

    iput v1, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    .line 67
    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_5GHz:Lcom/quicinc/cne/CNE$FreqBand;

    iput-object v1, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    .line 68
    const-string v1, "test_ssid"

    iput-object v1, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    .line 69
    const-string v1, "AB:CD:EF:12:34:56"

    iput-object v1, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 71
    iget-object v2, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    const-string v3, "1.2.3.4"

    aput-object v3, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(Lcom/quicinc/cne/CNE$CneWifiInfo;)Lcom/quicinc/cne/CNERequest;

    move-result-object v1

    .line 74
    .local v1, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v1, :cond_1

    .line 75
    const-string v2, "TEST"

    const-string v3, "updateWlanStatus: rr=NULL - no updated"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 78
    :cond_1
    sget-object v2, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v2, v1}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 79
    return-void
.end method

.method public static TEST_SEND_PROTOBUF_MSG(Lcom/quicinc/cne/CNE;)V
    .locals 2
    .param p0, "cne"    # Lcom/quicinc/cne/CNE;

    .line 18
    sput-object p0, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    .line 19
    const-string v0, "TEST"

    const-string v1, "*******************************************"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "TEST"

    const-string v1, "*      PROTOMSG TEST cnej->cnd START      *"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "TEST"

    const-string v1, "*******************************************"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_NOTIFY_WWAN_SUBTYPE()V

    .line 23
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_REQUEST_UPDATE_DEFAULT_NETWORK_INFO()V

    .line 24
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_REQUEST_UPDATE_WLAN_INFO()V

    .line 25
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_NOTIFY_WLAN_STATUS_PROFILE()V

    .line 26
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_NOTIFY_NETWORK_REQUEST_INFO()V

    .line 27
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_NOTIFY_NAT_KEEP_ALIVE_RESULT()V

    .line 28
    const-string v0, "TEST"

    const-string v1, "*******************************************"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "TEST"

    const-string v1, "*     PROTOMSG TEST cnej->cnd COMPLETE    *"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "TEST"

    const-string v1, "*******************************************"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private static TEST_processUnsolicitedProtoBufMsg(Lcom/quicinc/cne/Native$CneMessage;)V
    .locals 6
    .param p0, "rsp"    # Lcom/quicinc/cne/Native$CneMessage;

    .line 149
    const-string v0, "TEST"

    const-string v1, "processUnsolicited called"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgId()I

    move-result v0

    .line 153
    .local v0, "response":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    .line 154
    .local v1, "body":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v2

    .line 155
    .local v2, "data":[B
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 197
    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNKOWN Unsolicited Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_0
    const-string v3, "TEST"

    const-string v4, "REQUEST_START_NAT_KEEP_ALIVE received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseNatKA([B)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    move-result-object v3

    .line 171
    .local v3, "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getTimer()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSrcPort()I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_1

    .line 172
    invoke-virtual {v3}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestPort()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestIp()Ljava/lang/String;

    move-result-object v4

    const-string v5, "100.101.102.103"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    const-string v4, "TEST"

    const-string v5, "REQUEST_START_NAT_KEEP_ALIVE...OK"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_1
    const-string v4, "TEST"

    const-string v5, "REQUEST_START_NAT_KEEP_ALIVE...FAIL"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    goto :goto_0

    .line 182
    .end local v3    # "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    :cond_2
    const-string v3, "TEST"

    const-string v4, "REQUEST_START_RSSI_OFFLOAD received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseRssiOffload([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    move-result-object v3

    .line 184
    .local v3, "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getProfileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "profile0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    invoke-virtual {v3}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "testoperator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    invoke-virtual {v3}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiHigh()I

    move-result v4

    const/16 v5, -0x32

    if-ne v4, v5, :cond_3

    .line 187
    invoke-virtual {v3}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiLow()I

    move-result v4

    const/16 v5, -0x3c

    if-ne v4, v5, :cond_3

    .line 188
    const-string v4, "TEST"

    const-string v5, "REQUEST_START_RSSI_OFFLOAD...OK"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    const-string v4, "TEST"

    const-string v5, "REQUEST_START_RSSI_OFFLOAD...FAIL"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    goto :goto_0

    .line 157
    .end local v3    # "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    :cond_4
    const-string v3, "TEST"

    const-string v4, "REQUEST_BRING_RAT_DOWN received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseRatRequest([B)Lcom/quicinc/cne/Native$RatRequest;

    move-result-object v3

    .line 159
    .local v3, "p":Lcom/quicinc/cne/Native$RatRequest;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/quicinc/cne/Native$RatRequest;->getRattype()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 160
    const-string v4, "TEST"

    const-string v5, "REQUEST_BRING_RAT_DOWN...OK"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_5
    const-string v4, "TEST"

    const-string v5, "REQUEST_BRING_RAT_DOWN...FAIL"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    nop

    .line 200
    .end local v3    # "p":Lcom/quicinc/cne/Native$RatRequest;
    :goto_0
    return-void
.end method
