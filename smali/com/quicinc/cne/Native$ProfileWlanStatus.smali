.class public final Lcom/quicinc/cne/Native$ProfileWlanStatus;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileWlanStatus"
.end annotation


# static fields
.field public static final CONNECTIONSTATUS_FIELD_NUMBER:I = 0x2

.field public static final PROFILE_FIELD_NUMBER:I = 0x1

.field public static final REASON_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private connectionStatus_:I

.field private hasConnectionStatus:Z

.field private hasProfile:Z

.field private hasReason:Z

.field private profile_:Ljava/lang/String;

.field private reason_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2434
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2439
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->profile_:Ljava/lang/String;

    .line 2456
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->connectionStatus_:I

    .line 2473
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->reason_:I

    .line 2513
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    .line 2434
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2581
    new-instance v0, Lcom/quicinc/cne/Native$ProfileWlanStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 2575
    new-instance v0, Lcom/quicinc/cne/Native$ProfileWlanStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$ProfileWlanStatus;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1

    .line 2488
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->clearProfile()Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 2489
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->clearConnectionStatus()Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 2490
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->clearReason()Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 2491
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    .line 2492
    return-object p0
.end method

.method public clearConnectionStatus()Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1

    .line 2465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus:Z

    .line 2466
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->connectionStatus_:I

    .line 2467
    return-object p0
.end method

.method public clearProfile()Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1

    .line 2448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile:Z

    .line 2449
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->profile_:Ljava/lang/String;

    .line 2450
    return-object p0
.end method

.method public clearReason()Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1

    .line 2482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason:Z

    .line 2483
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->reason_:I

    .line 2484
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 2516
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 2518
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getSerializedSize()I

    .line 2520
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    return v0
.end method

.method public getConnectionStatus()I
    .locals 1

    .line 2457
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->connectionStatus_:I

    return v0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 1

    .line 2440
    iget-object v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->profile_:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .line 2474
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2525
    const/4 v0, 0x0

    .line 2526
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2527
    const/4 v1, 0x1

    .line 2528
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2530
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2531
    const/4 v1, 0x2

    .line 2532
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getConnectionStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2534
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2535
    const/4 v1, 0x3

    .line 2536
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getReason()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2538
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    .line 2539
    return v0
.end method

.method public hasConnectionStatus()Z
    .locals 1

    .line 2458
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus:Z

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .line 2441
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .line 2475
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2496
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

    .line 2431
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2547
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2548
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 2552
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2553
    return-object p0

    .line 2566
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setReason(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .end local v0    # "tag":I
    goto :goto_1

    .line 2562
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setConnectionStatus(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 2563
    goto :goto_1

    .line 2558
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setProfile(Ljava/lang/String;)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 2559
    nop

    .line 2570
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 2550
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public setConnectionStatus(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p1, "value"    # I

    .line 2460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus:Z

    .line 2461
    iput p1, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->connectionStatus_:I

    .line 2462
    return-object p0
.end method

.method public setProfile(Ljava/lang/String;)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile:Z

    .line 2444
    iput-object p1, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->profile_:Ljava/lang/String;

    .line 2445
    return-object p0
.end method

.method public setReason(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p1, "value"    # I

    .line 2477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason:Z

    .line 2478
    iput p1, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->reason_:I

    .line 2479
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

    .line 2502
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2503
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2505
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2506
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getConnectionStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2508
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2509
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getReason()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2511
    :cond_2
    return-void
.end method
