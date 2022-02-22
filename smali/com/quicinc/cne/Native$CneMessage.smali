.class public final Lcom/quicinc/cne/Native$CneMessage;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CneMessage"
.end annotation


# static fields
.field public static final MSGBODY_FIELD_NUMBER:I = 0x3

.field public static final MSGID_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMsgId:Z

.field private hasMsgbody:Z

.field private hasResponse:Z

.field private msgId_:I

.field private msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private response_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3470
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3475
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->response_:I

    .line 3492
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgId_:I

    .line 3509
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3549
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    .line 3470
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3617
    new-instance v0, Lcom/quicinc/cne/Native$CneMessage;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneMessage;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3611
    new-instance v0, Lcom/quicinc/cne/Native$CneMessage;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneMessage;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$CneMessage;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$CneMessage;
    .locals 1

    .line 3524
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->clearResponse()Lcom/quicinc/cne/Native$CneMessage;

    .line 3525
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->clearMsgId()Lcom/quicinc/cne/Native$CneMessage;

    .line 3526
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->clearMsgbody()Lcom/quicinc/cne/Native$CneMessage;

    .line 3527
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    .line 3528
    return-object p0
.end method

.method public clearMsgId()Lcom/quicinc/cne/Native$CneMessage;
    .locals 1

    .line 3501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId:Z

    .line 3502
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgId_:I

    .line 3503
    return-object p0
.end method

.method public clearMsgbody()Lcom/quicinc/cne/Native$CneMessage;
    .locals 1

    .line 3518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody:Z

    .line 3519
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3520
    return-object p0
.end method

.method public clearResponse()Lcom/quicinc/cne/Native$CneMessage;
    .locals 1

    .line 3484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasResponse:Z

    .line 3485
    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->response_:I

    .line 3486
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3552
    iget v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    if-gez v0, :cond_0

    .line 3554
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getSerializedSize()I

    .line 3556
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    return v0
.end method

.method public getMsgId()I
    .locals 1

    .line 3494
    iget v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgId_:I

    return v0
.end method

.method public getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .line 3510
    iget-object v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getResponse()I
    .locals 1

    .line 3477
    iget v0, p0, Lcom/quicinc/cne/Native$CneMessage;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3561
    const/4 v0, 0x0

    .line 3562
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3563
    const/4 v1, 0x1

    .line 3564
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getResponse()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3566
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3567
    const/4 v1, 0x2

    .line 3568
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3570
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3571
    const/4 v1, 0x3

    .line 3572
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3574
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    .line 3575
    return v0
.end method

.method public hasMsgId()Z
    .locals 1

    .line 3493
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId:Z

    return v0
.end method

.method public hasMsgbody()Z
    .locals 1

    .line 3511
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 3476
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3532
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

    .line 3467
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$CneMessage;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneMessage;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneMessage;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3583
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3584
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 3588
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$CneMessage;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3589
    return-object p0

    .line 3602
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneMessage;->setMsgbody(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneMessage;

    .end local v0    # "tag":I
    goto :goto_1

    .line 3598
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneMessage;->setMsgId(I)Lcom/quicinc/cne/Native$CneMessage;

    .line 3599
    goto :goto_1

    .line 3594
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneMessage;->setResponse(I)Lcom/quicinc/cne/Native$CneMessage;

    .line 3595
    nop

    .line 3606
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 3586
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public setMsgId(I)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p1, "value"    # I

    .line 3496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId:Z

    .line 3497
    iput p1, p0, Lcom/quicinc/cne/Native$CneMessage;->msgId_:I

    .line 3498
    return-object p0
.end method

.method public setMsgbody(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody:Z

    .line 3514
    iput-object p1, p0, Lcom/quicinc/cne/Native$CneMessage;->msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3515
    return-object p0
.end method

.method public setResponse(I)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p1, "value"    # I

    .line 3479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasResponse:Z

    .line 3480
    iput p1, p0, Lcom/quicinc/cne/Native$CneMessage;->response_:I

    .line 3481
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

    .line 3538
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3539
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getResponse()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3541
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3542
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3544
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3545
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 3547
    :cond_2
    return-void
.end method
