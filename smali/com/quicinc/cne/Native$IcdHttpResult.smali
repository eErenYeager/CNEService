.class public final Lcom/quicinc/cne/Native$IcdHttpResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IcdHttpResult"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x1

.field public static final FAMILY_FIELD_NUMBER:I = 0x4

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final TID_FIELD_NUMBER:I = 0x3


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private family_:I

.field private hasBssid:Z

.field private hasFamily:Z

.field private hasResult:Z

.field private hasTid:Z

.field private result_:I

.field private tid_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2589
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2594
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->bssid_:Ljava/lang/String;

    .line 2611
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->result_:I

    .line 2628
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->tid_:I

    .line 2645
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->family_:I

    .line 2689
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    .line 2589
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2765
    new-instance v0, Lcom/quicinc/cne/Native$IcdHttpResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdHttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 2759
    new-instance v0, Lcom/quicinc/cne/Native$IcdHttpResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$IcdHttpResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .line 2660
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->clearBssid()Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2661
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->clearResult()Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2662
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->clearTid()Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2663
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->clearFamily()Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2664
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    .line 2665
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .line 2603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid:Z

    .line 2604
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->bssid_:Ljava/lang/String;

    .line 2605
    return-object p0
.end method

.method public clearFamily()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .line 2654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily:Z

    .line 2655
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->family_:I

    .line 2656
    return-object p0
.end method

.method public clearResult()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .line 2620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult:Z

    .line 2621
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->result_:I

    .line 2622
    return-object p0
.end method

.method public clearTid()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .line 2637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid:Z

    .line 2638
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->tid_:I

    .line 2639
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 2595
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 2692
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2694
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getSerializedSize()I

    .line 2696
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    return v0
.end method

.method public getFamily()I
    .locals 1

    .line 2646
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->family_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 2612
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2701
    const/4 v0, 0x0

    .line 2702
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2703
    const/4 v1, 0x1

    .line 2704
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2706
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2707
    const/4 v1, 0x2

    .line 2708
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getResult()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2710
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2711
    const/4 v1, 0x3

    .line 2712
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getTid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2714
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2715
    const/4 v1, 0x4

    .line 2716
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getFamily()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2718
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    .line 2719
    return v0
.end method

.method public getTid()I
    .locals 1

    .line 2629
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->tid_:I

    return v0
.end method

.method public hasBssid()Z
    .locals 1

    .line 2596
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid:Z

    return v0
.end method

.method public hasFamily()Z
    .locals 1

    .line 2647
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .line 2613
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult:Z

    return v0
.end method

.method public hasTid()Z
    .locals 1

    .line 2630
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2669
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

    .line 2586
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$IcdHttpResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdHttpResult;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2727
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2728
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 2732
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$IcdHttpResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2733
    return-object p0

    .line 2750
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setFamily(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    .end local v0    # "tag":I
    goto :goto_1

    .line 2746
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setTid(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2747
    goto :goto_1

    .line 2742
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setResult(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2743
    goto :goto_1

    .line 2738
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2739
    nop

    .line 2754
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 2730
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid:Z

    .line 2599
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->bssid_:Ljava/lang/String;

    .line 2600
    return-object p0
.end method

.method public setFamily(I)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p1, "value"    # I

    .line 2649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily:Z

    .line 2650
    iput p1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->family_:I

    .line 2651
    return-object p0
.end method

.method public setResult(I)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p1, "value"    # I

    .line 2615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult:Z

    .line 2616
    iput p1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->result_:I

    .line 2617
    return-object p0
.end method

.method public setTid(I)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p1, "value"    # I

    .line 2632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid:Z

    .line 2633
    iput p1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->tid_:I

    .line 2634
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

    .line 2675
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2676
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2678
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2679
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getResult()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 2681
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2682
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getTid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 2684
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2685
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getFamily()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2687
    :cond_3
    return-void
.end method
