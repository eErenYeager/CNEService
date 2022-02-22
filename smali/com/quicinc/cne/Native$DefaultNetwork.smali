.class public final Lcom/quicinc/cne/Native$DefaultNetwork;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultNetwork"
.end annotation


# static fields
.field public static final NETWORK_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasNetwork:Z

.field private network_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 640
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 645
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->network_:I

    .line 677
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    .line 640
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    new-instance v0, Lcom/quicinc/cne/Native$DefaultNetwork;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$DefaultNetwork;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DefaultNetwork;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 723
    new-instance v0, Lcom/quicinc/cne/Native$DefaultNetwork;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$DefaultNetwork;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$DefaultNetwork;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->clearNetwork()Lcom/quicinc/cne/Native$DefaultNetwork;

    .line 661
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    .line 662
    return-object p0
.end method

.method public clearNetwork()Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1

    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork:Z

    .line 655
    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->network_:I

    .line 656
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 680
    iget v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    if-gez v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->getSerializedSize()I

    .line 684
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    return v0
.end method

.method public getNetwork()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->network_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    const/4 v1, 0x1

    .line 692
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->getNetwork()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 694
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    .line 695
    return v0
.end method

.method public hasNetwork()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 666
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

    .line 637
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$DefaultNetwork;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DefaultNetwork;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 704
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 708
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$DefaultNetwork;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 709
    return-object p0

    .line 714
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$DefaultNetwork;->setNetwork(I)Lcom/quicinc/cne/Native$DefaultNetwork;

    .line 718
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 706
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setNetwork(I)Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1
    .param p1, "value"    # I

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork:Z

    .line 650
    iput p1, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->network_:I

    .line 651
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

    .line 672
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->getNetwork()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 675
    :cond_0
    return-void
.end method
