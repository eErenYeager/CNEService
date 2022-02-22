.class public final Lcom/quicinc/cne/Native$SolictedMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SolictedMsg"
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final SERIAL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private error_:I

.field private hasError:Z

.field private hasSerial:Z

.field private serial_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3625
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3630
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->serial_:I

    .line 3647
    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->error_:I

    .line 3683
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    .line 3625
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3743
    new-instance v0, Lcom/quicinc/cne/Native$SolictedMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$SolictedMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$SolictedMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SolictedMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3737
    new-instance v0, Lcom/quicinc/cne/Native$SolictedMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$SolictedMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$SolictedMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$SolictedMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->clearSerial()Lcom/quicinc/cne/Native$SolictedMsg;

    .line 3663
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->clearError()Lcom/quicinc/cne/Native$SolictedMsg;

    .line 3664
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    .line 3665
    return-object p0
.end method

.method public clearError()Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1

    .line 3656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasError:Z

    .line 3657
    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->error_:I

    .line 3658
    return-object p0
.end method

.method public clearSerial()Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1

    .line 3639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial:Z

    .line 3640
    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->serial_:I

    .line 3641
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3686
    iget v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 3688
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getSerializedSize()I

    .line 3690
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    return v0
.end method

.method public getError()I
    .locals 1

    .line 3648
    iget v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->error_:I

    return v0
.end method

.method public getSerial()I
    .locals 1

    .line 3631
    iget v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->serial_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3695
    const/4 v0, 0x0

    .line 3696
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3697
    const/4 v1, 0x1

    .line 3698
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getSerial()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3700
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3701
    const/4 v1, 0x2

    .line 3702
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getError()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3704
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    .line 3705
    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 3649
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasError:Z

    return v0
.end method

.method public hasSerial()Z
    .locals 1

    .line 3632
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3669
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

    .line 3622
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$SolictedMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SolictedMsg;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3713
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3714
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 3718
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$SolictedMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3719
    return-object p0

    .line 3728
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$SolictedMsg;->setError(I)Lcom/quicinc/cne/Native$SolictedMsg;

    .end local v0    # "tag":I
    goto :goto_1

    .line 3724
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$SolictedMsg;->setSerial(I)Lcom/quicinc/cne/Native$SolictedMsg;

    .line 3725
    nop

    .line 3732
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 3716
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setError(I)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1
    .param p1, "value"    # I

    .line 3651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasError:Z

    .line 3652
    iput p1, p0, Lcom/quicinc/cne/Native$SolictedMsg;->error_:I

    .line 3653
    return-object p0
.end method

.method public setSerial(I)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1
    .param p1, "value"    # I

    .line 3634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial:Z

    .line 3635
    iput p1, p0, Lcom/quicinc/cne/Native$SolictedMsg;->serial_:I

    .line 3636
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

    .line 3675
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3676
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getSerial()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3678
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3679
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getError()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3681
    :cond_1
    return-void
.end method
