.class public final Lcom/quicinc/cne/Native$RssiOffloadMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RssiOffloadMsg"
.end annotation


# static fields
.field public static final OPERATORNAME_FIELD_NUMBER:I = 0x2

.field public static final PROFILENAME_FIELD_NUMBER:I = 0x1

.field public static final RSSIHIGH_FIELD_NUMBER:I = 0x3

.field public static final RSSILOW_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private hasOperatorName:Z

.field private hasProfileName:Z

.field private hasRssiHigh:Z

.field private hasRssiLow:Z

.field private operatorName_:Ljava/lang/String;

.field private profileName_:Ljava/lang/String;

.field private rssiHigh_:I

.field private rssiLow_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5146
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5151
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->profileName_:Ljava/lang/String;

    .line 5168
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->operatorName_:Ljava/lang/String;

    .line 5185
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiHigh_:I

    .line 5202
    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiLow_:I

    .line 5246
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    .line 5146
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5322
    new-instance v0, Lcom/quicinc/cne/Native$RssiOffloadMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 5316
    new-instance v0, Lcom/quicinc/cne/Native$RssiOffloadMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$RssiOffloadMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .line 5217
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->clearProfileName()Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5218
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->clearOperatorName()Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5219
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->clearRssiHigh()Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5220
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->clearRssiLow()Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5221
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    .line 5222
    return-object p0
.end method

.method public clearOperatorName()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .line 5177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName:Z

    .line 5178
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->operatorName_:Ljava/lang/String;

    .line 5179
    return-object p0
.end method

.method public clearProfileName()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .line 5160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName:Z

    .line 5161
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->profileName_:Ljava/lang/String;

    .line 5162
    return-object p0
.end method

.method public clearRssiHigh()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .line 5194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh:Z

    .line 5195
    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiHigh_:I

    .line 5196
    return-object p0
.end method

.method public clearRssiLow()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .line 5211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow:Z

    .line 5212
    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiLow_:I

    .line 5213
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 5249
    iget v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 5251
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getSerializedSize()I

    .line 5253
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    return v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .line 5169
    iget-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->operatorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .line 5152
    iget-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->profileName_:Ljava/lang/String;

    return-object v0
.end method

.method public getRssiHigh()I
    .locals 1

    .line 5186
    iget v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiHigh_:I

    return v0
.end method

.method public getRssiLow()I
    .locals 1

    .line 5203
    iget v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiLow_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5258
    const/4 v0, 0x0

    .line 5259
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5260
    const/4 v1, 0x1

    .line 5261
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5263
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5264
    const/4 v1, 0x2

    .line 5265
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5267
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5268
    const/4 v1, 0x3

    .line 5269
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiHigh()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5271
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5272
    const/4 v1, 0x4

    .line 5273
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiLow()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5275
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    .line 5276
    return v0
.end method

.method public hasOperatorName()Z
    .locals 1

    .line 5170
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName:Z

    return v0
.end method

.method public hasProfileName()Z
    .locals 1

    .line 5153
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName:Z

    return v0
.end method

.method public hasRssiHigh()Z
    .locals 1

    .line 5187
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh:Z

    return v0
.end method

.method public hasRssiLow()Z
    .locals 1

    .line 5204
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 5226
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

    .line 5143
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5284
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5285
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 5289
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5290
    return-object p0

    .line 5307
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->setRssiLow(I)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .end local v0    # "tag":I
    goto :goto_1

    .line 5303
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->setRssiHigh(I)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5304
    goto :goto_1

    .line 5299
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->setOperatorName(Ljava/lang/String;)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5300
    goto :goto_1

    .line 5295
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->setProfileName(Ljava/lang/String;)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5296
    nop

    .line 5311
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 5287
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setOperatorName(Ljava/lang/String;)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName:Z

    .line 5173
    iput-object p1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->operatorName_:Ljava/lang/String;

    .line 5174
    return-object p0
.end method

.method public setProfileName(Ljava/lang/String;)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName:Z

    .line 5156
    iput-object p1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->profileName_:Ljava/lang/String;

    .line 5157
    return-object p0
.end method

.method public setRssiHigh(I)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p1, "value"    # I

    .line 5189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh:Z

    .line 5190
    iput p1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiHigh_:I

    .line 5191
    return-object p0
.end method

.method public setRssiLow(I)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p1, "value"    # I

    .line 5206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow:Z

    .line 5207
    iput p1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiLow_:I

    .line 5208
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

    .line 5232
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5233
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5235
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5236
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5238
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5239
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiHigh()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSInt32(II)V

    .line 5241
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5242
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiLow()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSInt32(II)V

    .line 5244
    :cond_3
    return-void
.end method
