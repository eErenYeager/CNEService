.class public final Lcom/quicinc/cne/Native$JrttResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JrttResult"
.end annotation


# static fields
.field public static final GETTSMILLIS_FIELD_NUMBER:I = 0x4

.field public static final GETTSSECONDS_FIELD_NUMBER:I = 0x3

.field public static final JRTTMILLIS_FIELD_NUMBER:I = 0x2

.field public static final RESULT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private getTsMillis_:I

.field private getTsSeconds_:I

.field private hasGetTsMillis:Z

.field private hasGetTsSeconds:Z

.field private hasJrttMillis:Z

.field private hasResult:Z

.field private jrttMillis_:I

.field private result_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3160
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3165
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->result_:I

    .line 3182
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->jrttMillis_:I

    .line 3199
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsSeconds_:I

    .line 3216
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsMillis_:I

    .line 3260
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    .line 3160
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3336
    new-instance v0, Lcom/quicinc/cne/Native$JrttResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$JrttResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$JrttResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$JrttResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3330
    new-instance v0, Lcom/quicinc/cne/Native$JrttResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$JrttResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$JrttResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$JrttResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .line 3231
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->clearResult()Lcom/quicinc/cne/Native$JrttResult;

    .line 3232
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->clearJrttMillis()Lcom/quicinc/cne/Native$JrttResult;

    .line 3233
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->clearGetTsSeconds()Lcom/quicinc/cne/Native$JrttResult;

    .line 3234
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->clearGetTsMillis()Lcom/quicinc/cne/Native$JrttResult;

    .line 3235
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    .line 3236
    return-object p0
.end method

.method public clearGetTsMillis()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .line 3225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis:Z

    .line 3226
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsMillis_:I

    .line 3227
    return-object p0
.end method

.method public clearGetTsSeconds()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .line 3208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds:Z

    .line 3209
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsSeconds_:I

    .line 3210
    return-object p0
.end method

.method public clearJrttMillis()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .line 3191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis:Z

    .line 3192
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->jrttMillis_:I

    .line 3193
    return-object p0
.end method

.method public clearResult()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .line 3174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasResult:Z

    .line 3175
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->result_:I

    .line 3176
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3263
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 3265
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getSerializedSize()I

    .line 3267
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    return v0
.end method

.method public getGetTsMillis()I
    .locals 1

    .line 3217
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsMillis_:I

    return v0
.end method

.method public getGetTsSeconds()I
    .locals 1

    .line 3200
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsSeconds_:I

    return v0
.end method

.method public getJrttMillis()I
    .locals 1

    .line 3183
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->jrttMillis_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 3166
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3272
    const/4 v0, 0x0

    .line 3273
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3274
    const/4 v1, 0x1

    .line 3275
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getResult()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3277
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3278
    const/4 v1, 0x2

    .line 3279
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getJrttMillis()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3281
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3282
    const/4 v1, 0x3

    .line 3283
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsSeconds()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3285
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3286
    const/4 v1, 0x4

    .line 3287
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsMillis()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3289
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    .line 3290
    return v0
.end method

.method public hasGetTsMillis()Z
    .locals 1

    .line 3218
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis:Z

    return v0
.end method

.method public hasGetTsSeconds()Z
    .locals 1

    .line 3201
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds:Z

    return v0
.end method

.method public hasJrttMillis()Z
    .locals 1

    .line 3184
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .line 3167
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasResult:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3240
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

    .line 3157
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$JrttResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$JrttResult;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$JrttResult;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3298
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3299
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 3303
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$JrttResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3304
    return-object p0

    .line 3321
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$JrttResult;->setGetTsMillis(I)Lcom/quicinc/cne/Native$JrttResult;

    .end local v0    # "tag":I
    goto :goto_1

    .line 3317
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$JrttResult;->setGetTsSeconds(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 3318
    goto :goto_1

    .line 3313
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$JrttResult;->setJrttMillis(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 3314
    goto :goto_1

    .line 3309
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$JrttResult;->setResult(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 3310
    nop

    .line 3325
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 3301
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setGetTsMillis(I)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p1, "value"    # I

    .line 3220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis:Z

    .line 3221
    iput p1, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsMillis_:I

    .line 3222
    return-object p0
.end method

.method public setGetTsSeconds(I)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p1, "value"    # I

    .line 3203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds:Z

    .line 3204
    iput p1, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsSeconds_:I

    .line 3205
    return-object p0
.end method

.method public setJrttMillis(I)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p1, "value"    # I

    .line 3186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis:Z

    .line 3187
    iput p1, p0, Lcom/quicinc/cne/Native$JrttResult;->jrttMillis_:I

    .line 3188
    return-object p0
.end method

.method public setResult(I)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p1, "value"    # I

    .line 3169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasResult:Z

    .line 3170
    iput p1, p0, Lcom/quicinc/cne/Native$JrttResult;->result_:I

    .line 3171
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

    .line 3246
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3247
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getResult()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3249
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3250
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getJrttMillis()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3252
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3253
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsSeconds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3255
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3256
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsMillis()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3258
    :cond_3
    return-void
.end method
