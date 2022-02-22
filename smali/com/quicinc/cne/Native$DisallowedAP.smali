.class public final Lcom/quicinc/cne/Native$DisallowedAP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisallowedAP"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x3

.field public static final DISALLOWED_FIELD_NUMBER:I = 0x1

.field public static final REASON_FIELD_NUMBER:I = 0x2


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private disallowed_:I

.field private hasBssid:Z

.field private hasDisallowed:Z

.field private hasReason:Z

.field private reason_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3848
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3853
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->disallowed_:I

    .line 3870
    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->reason_:I

    .line 3887
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->bssid_:Ljava/lang/String;

    .line 3927
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    .line 3848
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3995
    new-instance v0, Lcom/quicinc/cne/Native$DisallowedAP;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$DisallowedAP;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$DisallowedAP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DisallowedAP;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3989
    new-instance v0, Lcom/quicinc/cne/Native$DisallowedAP;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$DisallowedAP;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$DisallowedAP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$DisallowedAP;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1

    .line 3902
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->clearDisallowed()Lcom/quicinc/cne/Native$DisallowedAP;

    .line 3903
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->clearReason()Lcom/quicinc/cne/Native$DisallowedAP;

    .line 3904
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->clearBssid()Lcom/quicinc/cne/Native$DisallowedAP;

    .line 3905
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    .line 3906
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1

    .line 3896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid:Z

    .line 3897
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->bssid_:Ljava/lang/String;

    .line 3898
    return-object p0
.end method

.method public clearDisallowed()Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1

    .line 3862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed:Z

    .line 3863
    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->disallowed_:I

    .line 3864
    return-object p0
.end method

.method public clearReason()Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1

    .line 3879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason:Z

    .line 3880
    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->reason_:I

    .line 3881
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 3888
    iget-object v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3930
    iget v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    if-gez v0, :cond_0

    .line 3932
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getSerializedSize()I

    .line 3934
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    return v0
.end method

.method public getDisallowed()I
    .locals 1

    .line 3854
    iget v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->disallowed_:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .line 3871
    iget v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3939
    const/4 v0, 0x0

    .line 3940
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3941
    const/4 v1, 0x1

    .line 3942
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getDisallowed()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3944
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3945
    const/4 v1, 0x2

    .line 3946
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getReason()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3948
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3949
    const/4 v1, 0x3

    .line 3950
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3952
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    .line 3953
    return v0
.end method

.method public hasBssid()Z
    .locals 1

    .line 3889
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid:Z

    return v0
.end method

.method public hasDisallowed()Z
    .locals 1

    .line 3855
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .line 3872
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3910
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

    .line 3845
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$DisallowedAP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DisallowedAP;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3961
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3962
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 3966
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$DisallowedAP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3967
    return-object p0

    .line 3980
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$DisallowedAP;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$DisallowedAP;

    .end local v0    # "tag":I
    goto :goto_1

    .line 3976
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$DisallowedAP;->setReason(I)Lcom/quicinc/cne/Native$DisallowedAP;

    .line 3977
    goto :goto_1

    .line 3972
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$DisallowedAP;->setDisallowed(I)Lcom/quicinc/cne/Native$DisallowedAP;

    .line 3973
    nop

    .line 3984
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 3964
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid:Z

    .line 3892
    iput-object p1, p0, Lcom/quicinc/cne/Native$DisallowedAP;->bssid_:Ljava/lang/String;

    .line 3893
    return-object p0
.end method

.method public setDisallowed(I)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p1, "value"    # I

    .line 3857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed:Z

    .line 3858
    iput p1, p0, Lcom/quicinc/cne/Native$DisallowedAP;->disallowed_:I

    .line 3859
    return-object p0
.end method

.method public setReason(I)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p1, "value"    # I

    .line 3874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason:Z

    .line 3875
    iput p1, p0, Lcom/quicinc/cne/Native$DisallowedAP;->reason_:I

    .line 3876
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

    .line 3916
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3917
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getDisallowed()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3919
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3920
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getReason()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3922
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3923
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3925
    :cond_2
    return-void
.end method
