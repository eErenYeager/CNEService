.class public final Lcom/quicinc/cne/Native$FeatureInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureInfo"
.end annotation


# static fields
.field public static final FEATUREID_FIELD_NUMBER:I = 0x1

.field public static final FEATURESTATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private featureId_:I

.field private featureStatus_:I

.field private hasFeatureId:Z

.field private hasFeatureStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 514
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 519
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureId_:I

    .line 536
    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureStatus_:I

    .line 572
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    .line 514
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    new-instance v0, Lcom/quicinc/cne/Native$FeatureInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$FeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$FeatureInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 626
    new-instance v0, Lcom/quicinc/cne/Native$FeatureInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$FeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$FeatureInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$FeatureInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->clearFeatureId()Lcom/quicinc/cne/Native$FeatureInfo;

    .line 552
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->clearFeatureStatus()Lcom/quicinc/cne/Native$FeatureInfo;

    .line 553
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    .line 554
    return-object p0
.end method

.method public clearFeatureId()Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId:Z

    .line 529
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureId_:I

    .line 530
    return-object p0
.end method

.method public clearFeatureStatus()Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus:Z

    .line 546
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureStatus_:I

    .line 547
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 575
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getSerializedSize()I

    .line 579
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    return v0
.end method

.method public getFeatureId()I
    .locals 1

    .line 521
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureId_:I

    return v0
.end method

.method public getFeatureStatus()I
    .locals 1

    .line 538
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const/4 v1, 0x1

    .line 587
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    const/4 v1, 0x2

    .line 591
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    .line 594
    return v0
.end method

.method public hasFeatureId()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId:Z

    return v0
.end method

.method public hasFeatureStatus()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 558
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

    .line 511
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$FeatureInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 603
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 607
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$FeatureInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 608
    return-object p0

    .line 617
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureStatus(I)Lcom/quicinc/cne/Native$FeatureInfo;

    .end local v0    # "tag":I
    goto :goto_1

    .line 613
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureId(I)Lcom/quicinc/cne/Native$FeatureInfo;

    .line 614
    nop

    .line 621
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 605
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setFeatureId(I)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1
    .param p1, "value"    # I

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId:Z

    .line 524
    iput p1, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureId_:I

    .line 525
    return-object p0
.end method

.method public setFeatureStatus(I)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1
    .param p1, "value"    # I

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus:Z

    .line 541
    iput p1, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureStatus_:I

    .line 542
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

    .line 564
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 570
    :cond_1
    return-void
.end method
