.class public final Lcom/quicinc/cne/Native$BqePostParamsMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BqePostParamsMsg"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMPSEC_FIELD_NUMBER:I = 0x4

.field public static final TPUTKILOBITSPERSEC_FIELD_NUMBER:I = 0x3

.field public static final URI_FIELD_NUMBER:I = 0x2


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBssid:Z

.field private hasTimeStampSec:Z

.field private hasTputKiloBitsPerSec:Z

.field private hasUri:Z

.field private timeStampSec_:I

.field private tputKiloBitsPerSec_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4497
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4502
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->bssid_:Ljava/lang/String;

    .line 4519
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->uri_:Ljava/lang/String;

    .line 4536
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->tputKiloBitsPerSec_:I

    .line 4553
    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->timeStampSec_:I

    .line 4597
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    .line 4497
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4673
    new-instance v0, Lcom/quicinc/cne/Native$BqePostParamsMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 4667
    new-instance v0, Lcom/quicinc/cne/Native$BqePostParamsMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$BqePostParamsMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .line 4568
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->clearBssid()Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4569
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->clearUri()Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4570
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->clearTputKiloBitsPerSec()Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4571
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->clearTimeStampSec()Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4572
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    .line 4573
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .line 4511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid:Z

    .line 4512
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->bssid_:Ljava/lang/String;

    .line 4513
    return-object p0
.end method

.method public clearTimeStampSec()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .line 4562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec:Z

    .line 4563
    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->timeStampSec_:I

    .line 4564
    return-object p0
.end method

.method public clearTputKiloBitsPerSec()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .line 4545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec:Z

    .line 4546
    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->tputKiloBitsPerSec_:I

    .line 4547
    return-object p0
.end method

.method public clearUri()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .line 4528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri:Z

    .line 4529
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->uri_:Ljava/lang/String;

    .line 4530
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 4503
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 4600
    iget v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 4602
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getSerializedSize()I

    .line 4604
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4609
    const/4 v0, 0x0

    .line 4610
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4611
    const/4 v1, 0x1

    .line 4612
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4614
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4615
    const/4 v1, 0x2

    .line 4616
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4618
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4619
    const/4 v1, 0x3

    .line 4620
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTputKiloBitsPerSec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4622
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4623
    const/4 v1, 0x4

    .line 4624
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTimeStampSec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4626
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    .line 4627
    return v0
.end method

.method public getTimeStampSec()I
    .locals 1

    .line 4554
    iget v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->timeStampSec_:I

    return v0
.end method

.method public getTputKiloBitsPerSec()I
    .locals 1

    .line 4537
    iget v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->tputKiloBitsPerSec_:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 4520
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBssid()Z
    .locals 1

    .line 4504
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid:Z

    return v0
.end method

.method public hasTimeStampSec()Z
    .locals 1

    .line 4555
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec:Z

    return v0
.end method

.method public hasTputKiloBitsPerSec()Z
    .locals 1

    .line 4538
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec:Z

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .line 4521
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 4577
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

    .line 4494
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4635
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4636
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 4640
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4641
    return-object p0

    .line 4658
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->setTimeStampSec(I)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .end local v0    # "tag":I
    goto :goto_1

    .line 4654
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->setTputKiloBitsPerSec(I)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4655
    goto :goto_1

    .line 4650
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4651
    goto :goto_1

    .line 4646
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4647
    nop

    .line 4662
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 4638
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid:Z

    .line 4507
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->bssid_:Ljava/lang/String;

    .line 4508
    return-object p0
.end method

.method public setTimeStampSec(I)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p1, "value"    # I

    .line 4557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec:Z

    .line 4558
    iput p1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->timeStampSec_:I

    .line 4559
    return-object p0
.end method

.method public setTputKiloBitsPerSec(I)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p1, "value"    # I

    .line 4540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec:Z

    .line 4541
    iput p1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->tputKiloBitsPerSec_:I

    .line 4542
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri:Z

    .line 4524
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->uri_:Ljava/lang/String;

    .line 4525
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

    .line 4583
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4584
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4586
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4587
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4589
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4590
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTputKiloBitsPerSec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4592
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4593
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTimeStampSec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4595
    :cond_3
    return-void
.end method
