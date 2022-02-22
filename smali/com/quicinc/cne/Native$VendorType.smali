.class public final Lcom/quicinc/cne/Native$VendorType;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VendorType"
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3

.field public static final LENGTH_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private data_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasData:Z

.field private hasLength:Z

.field private length_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3344
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3349
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->length_:I

    .line 3366
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$VendorType;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3402
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    .line 3344
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$VendorType;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3462
    new-instance v0, Lcom/quicinc/cne/Native$VendorType;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$VendorType;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$VendorType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$VendorType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$VendorType;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3456
    new-instance v0, Lcom/quicinc/cne/Native$VendorType;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$VendorType;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$VendorType;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$VendorType;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$VendorType;
    .locals 1

    .line 3381
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->clearLength()Lcom/quicinc/cne/Native$VendorType;

    .line 3382
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->clearData()Lcom/quicinc/cne/Native$VendorType;

    .line 3383
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    .line 3384
    return-object p0
.end method

.method public clearData()Lcom/quicinc/cne/Native$VendorType;
    .locals 1

    .line 3375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasData:Z

    .line 3376
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$VendorType;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3377
    return-object p0
.end method

.method public clearLength()Lcom/quicinc/cne/Native$VendorType;
    .locals 1

    .line 3358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasLength:Z

    .line 3359
    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->length_:I

    .line 3360
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3405
    iget v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    if-gez v0, :cond_0

    .line 3407
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getSerializedSize()I

    .line 3409
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    return v0
.end method

.method public getData()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .line 3367
    iget-object v0, p0, Lcom/quicinc/cne/Native$VendorType;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 3350
    iget v0, p0, Lcom/quicinc/cne/Native$VendorType;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3414
    const/4 v0, 0x0

    .line 3415
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->hasLength()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3416
    const/4 v1, 0x2

    .line 3417
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3419
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->hasData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3420
    const/4 v1, 0x3

    .line 3421
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3423
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    .line 3424
    return v0
.end method

.method public hasData()Z
    .locals 1

    .line 3368
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasData:Z

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .line 3351
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasLength:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3388
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

    .line 3341
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$VendorType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$VendorType;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$VendorType;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3432
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3433
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 3437
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$VendorType;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3438
    return-object p0

    .line 3447
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$VendorType;->setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$VendorType;

    .end local v0    # "tag":I
    goto :goto_1

    .line 3443
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$VendorType;->setLength(I)Lcom/quicinc/cne/Native$VendorType;

    .line 3444
    nop

    .line 3451
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 3435
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$VendorType;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasData:Z

    .line 3371
    iput-object p1, p0, Lcom/quicinc/cne/Native$VendorType;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3372
    return-object p0
.end method

.method public setLength(I)Lcom/quicinc/cne/Native$VendorType;
    .locals 1
    .param p1, "value"    # I

    .line 3353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasLength:Z

    .line 3354
    iput p1, p0, Lcom/quicinc/cne/Native$VendorType;->length_:I

    .line 3355
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

    .line 3394
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3395
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3397
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3398
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 3400
    :cond_1
    return-void
.end method
