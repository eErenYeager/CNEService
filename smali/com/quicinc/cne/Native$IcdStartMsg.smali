.class public final Lcom/quicinc/cne/Native$IcdStartMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IcdStartMsg"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x3

.field public static final HTTPURI_FIELD_NUMBER:I = 0x2

.field public static final TID_FIELD_NUMBER:I = 0x5

.field public static final TIMEOUT_FIELD_NUMBER:I = 0x4

.field public static final URI_FIELD_NUMBER:I = 0x1


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBssid:Z

.field private hasHttpuri:Z

.field private hasTid:Z

.field private hasTimeout:Z

.field private hasUri:Z

.field private httpuri_:Ljava/lang/String;

.field private tid_:I

.field private timeout_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4284
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4289
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->uri_:Ljava/lang/String;

    .line 4306
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->httpuri_:Ljava/lang/String;

    .line 4323
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->bssid_:Ljava/lang/String;

    .line 4340
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->timeout_:I

    .line 4357
    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->tid_:I

    .line 4405
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    .line 4284
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4489
    new-instance v0, Lcom/quicinc/cne/Native$IcdStartMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdStartMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdStartMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 4483
    new-instance v0, Lcom/quicinc/cne/Native$IcdStartMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdStartMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$IcdStartMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .line 4372
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearUri()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4373
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearHttpuri()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4374
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearBssid()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4375
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearTimeout()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4376
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearTid()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4377
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    .line 4378
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .line 4332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid:Z

    .line 4333
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->bssid_:Ljava/lang/String;

    .line 4334
    return-object p0
.end method

.method public clearHttpuri()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .line 4315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri:Z

    .line 4316
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->httpuri_:Ljava/lang/String;

    .line 4317
    return-object p0
.end method

.method public clearTid()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .line 4366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid:Z

    .line 4367
    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->tid_:I

    .line 4368
    return-object p0
.end method

.method public clearTimeout()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .line 4349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout:Z

    .line 4350
    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->timeout_:I

    .line 4351
    return-object p0
.end method

.method public clearUri()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .line 4298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri:Z

    .line 4299
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->uri_:Ljava/lang/String;

    .line 4300
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 4324
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 4408
    iget v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 4410
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getSerializedSize()I

    .line 4412
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    return v0
.end method

.method public getHttpuri()Ljava/lang/String;
    .locals 1

    .line 4307
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->httpuri_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4417
    const/4 v0, 0x0

    .line 4418
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4419
    const/4 v1, 0x1

    .line 4420
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4422
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4423
    const/4 v1, 0x2

    .line 4424
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4426
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4427
    const/4 v1, 0x3

    .line 4428
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4430
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4431
    const/4 v1, 0x4

    .line 4432
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTimeout()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4434
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4435
    const/4 v1, 0x5

    .line 4436
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4438
    :cond_4
    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    .line 4439
    return v0
.end method

.method public getTid()I
    .locals 1

    .line 4358
    iget v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->tid_:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 4341
    iget v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->timeout_:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 4290
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBssid()Z
    .locals 1

    .line 4325
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid:Z

    return v0
.end method

.method public hasHttpuri()Z
    .locals 1

    .line 4308
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri:Z

    return v0
.end method

.method public hasTid()Z
    .locals 1

    .line 4359
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid:Z

    return v0
.end method

.method public hasTimeout()Z
    .locals 1

    .line 4342
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout:Z

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .line 4291
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 4382
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

    .line 4281
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$IcdStartMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdStartMsg;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4447
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4448
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 4452
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$IcdStartMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4453
    return-object p0

    .line 4474
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setTid(I)Lcom/quicinc/cne/Native$IcdStartMsg;

    .end local v0    # "tag":I
    goto :goto_1

    .line 4470
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setTimeout(I)Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4471
    goto :goto_1

    .line 4466
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4467
    goto :goto_1

    .line 4462
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setHttpuri(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4463
    goto :goto_1

    .line 4458
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4459
    nop

    .line 4478
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 4450
    .restart local v0    # "tag":I
    :cond_6
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid:Z

    .line 4328
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->bssid_:Ljava/lang/String;

    .line 4329
    return-object p0
.end method

.method public setHttpuri(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri:Z

    .line 4311
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->httpuri_:Ljava/lang/String;

    .line 4312
    return-object p0
.end method

.method public setTid(I)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # I

    .line 4361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid:Z

    .line 4362
    iput p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->tid_:I

    .line 4363
    return-object p0
.end method

.method public setTimeout(I)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # I

    .line 4344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout:Z

    .line 4345
    iput p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->timeout_:I

    .line 4346
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri:Z

    .line 4294
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->uri_:Ljava/lang/String;

    .line 4295
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

    .line 4388
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4389
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4391
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4392
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4394
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4395
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4397
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4398
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTimeout()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4400
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4401
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4403
    :cond_4
    return-void
.end method
