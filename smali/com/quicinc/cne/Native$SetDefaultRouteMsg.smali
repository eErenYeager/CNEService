.class public final Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetDefaultRouteMsg"
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

    .line 4187
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4192
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->rattype_:I

    .line 4224
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    .line 4187
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4276
    new-instance v0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 4270
    new-instance v0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1

    .line 4207
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->clearRattype()Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    .line 4208
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    .line 4209
    return-object p0
.end method

.method public clearRattype()Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1

    .line 4201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype:Z

    .line 4202
    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->rattype_:I

    .line 4203
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 4227
    iget v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 4229
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->getSerializedSize()I

    .line 4231
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    return v0
.end method

.method public getRattype()I
    .locals 1

    .line 4194
    iget v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->rattype_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4236
    const/4 v0, 0x0

    .line 4237
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4238
    const/4 v1, 0x1

    .line 4239
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->getRattype()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4241
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    .line 4242
    return v0
.end method

.method public hasRattype()Z
    .locals 1

    .line 4193
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 4213
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

    .line 4184
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4250
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4251
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4255
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4256
    return-object p0

    .line 4261
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->setRattype(I)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    .line 4265
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 4253
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setRattype(I)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1
    .param p1, "value"    # I

    .line 4196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype:Z

    .line 4197
    iput p1, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->rattype_:I

    .line 4198
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

    .line 4219
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4220
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->getRattype()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4222
    :cond_0
    return-void
.end method
