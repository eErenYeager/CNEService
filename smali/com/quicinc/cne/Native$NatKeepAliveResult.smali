.class public final Lcom/quicinc/cne/Native$NatKeepAliveResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NatKeepAliveResult"
.end annotation


# static fields
.field public static final RETCODE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasRetcode:Z

.field private retcode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2337
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2342
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->retcode_:I

    .line 2374
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    .line 2337
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2426
    new-instance v0, Lcom/quicinc/cne/Native$NatKeepAliveResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 2420
    new-instance v0, Lcom/quicinc/cne/Native$NatKeepAliveResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$NatKeepAliveResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1

    .line 2357
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->clearRetcode()Lcom/quicinc/cne/Native$NatKeepAliveResult;

    .line 2358
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    .line 2359
    return-object p0
.end method

.method public clearRetcode()Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1

    .line 2351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode:Z

    .line 2352
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->retcode_:I

    .line 2353
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 2377
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2379
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->getSerializedSize()I

    .line 2381
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    return v0
.end method

.method public getRetcode()I
    .locals 1

    .line 2343
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->retcode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2386
    const/4 v0, 0x0

    .line 2387
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2388
    const/4 v1, 0x1

    .line 2389
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->getRetcode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2391
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    .line 2392
    return v0
.end method

.method public hasRetcode()Z
    .locals 1

    .line 2344
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2363
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

    .line 2334
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveResult;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2400
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2401
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2405
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2406
    return-object p0

    .line 2411
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->setRetcode(I)Lcom/quicinc/cne/Native$NatKeepAliveResult;

    .line 2415
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 2403
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setRetcode(I)Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1
    .param p1, "value"    # I

    .line 2346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode:Z

    .line 2347
    iput p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->retcode_:I

    .line 2348
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

    .line 2369
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->getRetcode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2372
    :cond_0
    return-void
.end method
