.class public final Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NatKeepAliveRequestMsg"
.end annotation


# static fields
.field public static final DESTIP_FIELD_NUMBER:I = 0x4

.field public static final DESTPORT_FIELD_NUMBER:I = 0x3

.field public static final SRCPORT_FIELD_NUMBER:I = 0x2

.field public static final TIMER_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private destIp_:Ljava/lang/String;

.field private destPort_:I

.field private hasDestIp:Z

.field private hasDestPort:Z

.field private hasSrcPort:Z

.field private hasTimer:Z

.field private srcPort_:I

.field private timer_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4962
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4967
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->timer_:I

    .line 4984
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->srcPort_:I

    .line 5001
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destPort_:I

    .line 5018
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destIp_:Ljava/lang/String;

    .line 5062
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    .line 4962
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5138
    new-instance v0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 5132
    new-instance v0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .line 5033
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->clearTimer()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5034
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->clearSrcPort()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5035
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->clearDestPort()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5036
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->clearDestIp()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5037
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    .line 5038
    return-object p0
.end method

.method public clearDestIp()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .line 5027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp:Z

    .line 5028
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destIp_:Ljava/lang/String;

    .line 5029
    return-object p0
.end method

.method public clearDestPort()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .line 5010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort:Z

    .line 5011
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destPort_:I

    .line 5012
    return-object p0
.end method

.method public clearSrcPort()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .line 4993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort:Z

    .line 4994
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->srcPort_:I

    .line 4995
    return-object p0
.end method

.method public clearTimer()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .line 4976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer:Z

    .line 4977
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->timer_:I

    .line 4978
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 5065
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 5067
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSerializedSize()I

    .line 5069
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    return v0
.end method

.method public getDestIp()Ljava/lang/String;
    .locals 1

    .line 5019
    iget-object v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getDestPort()I
    .locals 1

    .line 5002
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destPort_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5074
    const/4 v0, 0x0

    .line 5075
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5076
    const/4 v1, 0x1

    .line 5077
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getTimer()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5079
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5080
    const/4 v1, 0x2

    .line 5081
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSrcPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5083
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5084
    const/4 v1, 0x3

    .line 5085
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5087
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5088
    const/4 v1, 0x4

    .line 5089
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5091
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    .line 5092
    return v0
.end method

.method public getSrcPort()I
    .locals 1

    .line 4985
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->srcPort_:I

    return v0
.end method

.method public getTimer()I
    .locals 1

    .line 4968
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->timer_:I

    return v0
.end method

.method public hasDestIp()Z
    .locals 1

    .line 5020
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp:Z

    return v0
.end method

.method public hasDestPort()Z
    .locals 1

    .line 5003
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort:Z

    return v0
.end method

.method public hasSrcPort()Z
    .locals 1

    .line 4986
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort:Z

    return v0
.end method

.method public hasTimer()Z
    .locals 1

    .line 4969
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 5042
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

    .line 4959
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5100
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5101
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 5105
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5106
    return-object p0

    .line 5123
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->setDestIp(Ljava/lang/String;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .end local v0    # "tag":I
    goto :goto_1

    .line 5119
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->setDestPort(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5120
    goto :goto_1

    .line 5115
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->setSrcPort(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5116
    goto :goto_1

    .line 5111
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->setTimer(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5112
    nop

    .line 5127
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 5103
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setDestIp(Ljava/lang/String;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp:Z

    .line 5023
    iput-object p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destIp_:Ljava/lang/String;

    .line 5024
    return-object p0
.end method

.method public setDestPort(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p1, "value"    # I

    .line 5005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort:Z

    .line 5006
    iput p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destPort_:I

    .line 5007
    return-object p0
.end method

.method public setSrcPort(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p1, "value"    # I

    .line 4988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort:Z

    .line 4989
    iput p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->srcPort_:I

    .line 4990
    return-object p0
.end method

.method public setTimer(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p1, "value"    # I

    .line 4971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer:Z

    .line 4972
    iput p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->timer_:I

    .line 4973
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5048
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5049
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getTimer()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 5051
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5052
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSrcPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 5054
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5055
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 5057
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5058
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5060
    :cond_3
    return-void
.end method
