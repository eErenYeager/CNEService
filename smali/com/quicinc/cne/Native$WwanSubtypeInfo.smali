.class public final Lcom/quicinc/cne/Native$WwanSubtypeInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WwanSubtypeInfo"
.end annotation


# static fields
.field public static final SUBTYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasSubtype:Z

.field private subtype_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 320
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->subtype_:I

    .line 357
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    .line 320
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    new-instance v0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 403
    new-instance v0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->clearSubtype()Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    .line 342
    return-object p0
.end method

.method public clearSubtype()Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype:Z

    .line 335
    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->subtype_:I

    .line 336
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->getSerializedSize()I

    .line 364
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const/4 v1, 0x1

    .line 372
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->getSubtype()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    .line 375
    return v0
.end method

.method public getSubtype()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->subtype_:I

    return v0
.end method

.method public hasSubtype()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 346
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

    .line 317
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 384
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    return-object p0

    .line 394
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->setSubtype(I)Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    .line 398
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 386
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setSubtype(I)Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1
    .param p1, "value"    # I

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype:Z

    .line 330
    iput p1, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->subtype_:I

    .line 331
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

    .line 352
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->getSubtype()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 355
    :cond_0
    return-void
.end method
