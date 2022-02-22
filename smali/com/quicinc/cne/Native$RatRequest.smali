.class public final Lcom/quicinc/cne/Native$RatRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RatRequest"
.end annotation


# static fields
.field public static final RATTYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasRattype:Z

.field private rattype_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3751
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3756
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$RatRequest;->rattype_:I

    .line 3788
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatRequest;->cachedSize:I

    .line 3751
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3840
    new-instance v0, Lcom/quicinc/cne/Native$RatRequest;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$RatRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3834
    new-instance v0, Lcom/quicinc/cne/Native$RatRequest;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$RatRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$RatRequest;
    .locals 1

    .line 3771
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatRequest;->clearRattype()Lcom/quicinc/cne/Native$RatRequest;

    .line 3772
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatRequest;->cachedSize:I

    .line 3773
    return-object p0
.end method

.method public clearRattype()Lcom/quicinc/cne/Native$RatRequest;
    .locals 1

    .line 3765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatRequest;->hasRattype:Z

    .line 3766
    iput v0, p0, Lcom/quicinc/cne/Native$RatRequest;->rattype_:I

    .line 3767
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3791
    iget v0, p0, Lcom/quicinc/cne/Native$RatRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 3793
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatRequest;->getSerializedSize()I

    .line 3795
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$RatRequest;->cachedSize:I

    return v0
.end method

.method public getRattype()I
    .locals 1

    .line 3758
    iget v0, p0, Lcom/quicinc/cne/Native$RatRequest;->rattype_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3800
    const/4 v0, 0x0

    .line 3801
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatRequest;->hasRattype()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3802
    const/4 v1, 0x1

    .line 3803
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatRequest;->getRattype()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3805
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$RatRequest;->cachedSize:I

    .line 3806
    return v0
.end method

.method public hasRattype()Z
    .locals 1

    .line 3757
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatRequest;->hasRattype:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3777
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

    .line 3748
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$RatRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatRequest;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3814
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3815
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3819
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$RatRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3820
    return-object p0

    .line 3825
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatRequest;->setRattype(I)Lcom/quicinc/cne/Native$RatRequest;

    .line 3829
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 3817
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setRattype(I)Lcom/quicinc/cne/Native$RatRequest;
    .locals 1
    .param p1, "value"    # I

    .line 3760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatRequest;->hasRattype:Z

    .line 3761
    iput p1, p0, Lcom/quicinc/cne/Native$RatRequest;->rattype_:I

    .line 3762
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

    .line 3783
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatRequest;->hasRattype()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3784
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatRequest;->getRattype()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3786
    :cond_0
    return-void
.end method
