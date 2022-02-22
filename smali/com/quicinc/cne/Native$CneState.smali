.class public final Lcom/quicinc/cne/Native$CneState;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CneState"
.end annotation


# static fields
.field public static final STATE_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasState:Z

.field private hasType:Z

.field private state_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2211
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2216
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->type_:I

    .line 2233
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->state_:I

    .line 2269
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    .line 2211
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneState;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2329
    new-instance v0, Lcom/quicinc/cne/Native$CneState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$CneState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 2323
    new-instance v0, Lcom/quicinc/cne/Native$CneState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneState;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$CneState;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$CneState;
    .locals 1

    .line 2248
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->clearType()Lcom/quicinc/cne/Native$CneState;

    .line 2249
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->clearState()Lcom/quicinc/cne/Native$CneState;

    .line 2250
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    .line 2251
    return-object p0
.end method

.method public clearState()Lcom/quicinc/cne/Native$CneState;
    .locals 1

    .line 2242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasState:Z

    .line 2243
    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->state_:I

    .line 2244
    return-object p0
.end method

.method public clearType()Lcom/quicinc/cne/Native$CneState;
    .locals 1

    .line 2225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasType:Z

    .line 2226
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->type_:I

    .line 2227
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 2272
    iget v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    if-gez v0, :cond_0

    .line 2274
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getSerializedSize()I

    .line 2276
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2281
    const/4 v0, 0x0

    .line 2282
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2283
    const/4 v1, 0x1

    .line 2284
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2286
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->hasState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2287
    const/4 v1, 0x2

    .line 2288
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2290
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    .line 2291
    return v0
.end method

.method public getState()I
    .locals 1

    .line 2234
    iget v0, p0, Lcom/quicinc/cne/Native$CneState;->state_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 2218
    iget v0, p0, Lcom/quicinc/cne/Native$CneState;->type_:I

    return v0
.end method

.method public hasState()Z
    .locals 1

    .line 2235
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasState:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 2217
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2255
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

    .line 2208
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$CneState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneState;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneState;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2299
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2300
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2304
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$CneState;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2305
    return-object p0

    .line 2314
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneState;->setState(I)Lcom/quicinc/cne/Native$CneState;

    .end local v0    # "tag":I
    goto :goto_1

    .line 2310
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneState;->setType(I)Lcom/quicinc/cne/Native$CneState;

    .line 2311
    nop

    .line 2318
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 2302
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setState(I)Lcom/quicinc/cne/Native$CneState;
    .locals 1
    .param p1, "value"    # I

    .line 2237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasState:Z

    .line 2238
    iput p1, p0, Lcom/quicinc/cne/Native$CneState;->state_:I

    .line 2239
    return-object p0
.end method

.method public setType(I)Lcom/quicinc/cne/Native$CneState;
    .locals 1
    .param p1, "value"    # I

    .line 2220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasType:Z

    .line 2221
    iput p1, p0, Lcom/quicinc/cne/Native$CneState;->type_:I

    .line 2222
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

    .line 2261
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2262
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2264
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->hasState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2267
    :cond_1
    return-void
.end method
