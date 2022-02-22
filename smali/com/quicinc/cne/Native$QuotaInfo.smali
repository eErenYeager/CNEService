.class public final Lcom/quicinc/cne/Native$QuotaInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuotaInfo"
.end annotation


# static fields
.field public static final ISQUOTAREACHED_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasIsQuotaReached:Z

.field private isQuotaReached_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 417
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->isQuotaReached_:I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    .line 417
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    new-instance v0, Lcom/quicinc/cne/Native$QuotaInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$QuotaInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$QuotaInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$QuotaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 500
    new-instance v0, Lcom/quicinc/cne/Native$QuotaInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$QuotaInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$QuotaInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$QuotaInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->clearIsQuotaReached()Lcom/quicinc/cne/Native$QuotaInfo;

    .line 438
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    .line 439
    return-object p0
.end method

.method public clearIsQuotaReached()Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached:Z

    .line 432
    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->isQuotaReached_:I

    .line 433
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->getSerializedSize()I

    .line 461
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    return v0
.end method

.method public getIsQuotaReached()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->isQuotaReached_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const/4 v1, 0x1

    .line 469
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->getIsQuotaReached()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    .line 472
    return v0
.end method

.method public hasIsQuotaReached()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 443
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

    .line 414
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$QuotaInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$QuotaInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 481
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 485
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$QuotaInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    return-object p0

    .line 491
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$QuotaInfo;->setIsQuotaReached(I)Lcom/quicinc/cne/Native$QuotaInfo;

    .line 495
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 483
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setIsQuotaReached(I)Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1
    .param p1, "value"    # I

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached:Z

    .line 427
    iput p1, p0, Lcom/quicinc/cne/Native$QuotaInfo;->isQuotaReached_:I

    .line 428
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

    .line 449
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->getIsQuotaReached()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 452
    :cond_0
    return-void
.end method
