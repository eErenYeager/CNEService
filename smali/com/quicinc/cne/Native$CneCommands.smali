.class public final Lcom/quicinc/cne/Native$CneCommands;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CneCommands"
.end annotation


# static fields
.field public static final CMD_FIELD_NUMBER:I = 0x1

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x3

.field public static final SERIAL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private cmd_:I

.field private hasCmd:Z

.field private hasPayload:Z

.field private hasSerial:Z

.field private payload_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private serial_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 170
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cmd_:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->serial_:I

    .line 204
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$CneCommands;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    .line 165
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    new-instance v0, Lcom/quicinc/cne/Native$CneCommands;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneCommands;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneCommands;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneCommands;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 306
    new-instance v0, Lcom/quicinc/cne/Native$CneCommands;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneCommands;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneCommands;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$CneCommands;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$CneCommands;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->clearCmd()Lcom/quicinc/cne/Native$CneCommands;

    .line 220
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->clearSerial()Lcom/quicinc/cne/Native$CneCommands;

    .line 221
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->clearPayload()Lcom/quicinc/cne/Native$CneCommands;

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    .line 223
    return-object p0
.end method

.method public clearCmd()Lcom/quicinc/cne/Native$CneCommands;
    .locals 1

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasCmd:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cmd_:I

    .line 181
    return-object p0
.end method

.method public clearPayload()Lcom/quicinc/cne/Native$CneCommands;
    .locals 1

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasPayload:Z

    .line 214
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$CneCommands;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 215
    return-object p0
.end method

.method public clearSerial()Lcom/quicinc/cne/Native$CneCommands;
    .locals 1

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasSerial:Z

    .line 197
    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->serial_:I

    .line 198
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    if-gez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getSerializedSize()I

    .line 251
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    return v0
.end method

.method public getCmd()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cmd_:I

    return v0
.end method

.method public getPayload()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/quicinc/cne/Native$CneCommands;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerial()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/quicinc/cne/Native$CneCommands;->serial_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasCmd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x1

    .line 259
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getCmd()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasSerial()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const/4 v1, 0x2

    .line 263
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getSerial()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    const/4 v1, 0x3

    .line 267
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    .line 270
    return v0
.end method

.method public hasCmd()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasCmd:Z

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasPayload:Z

    return v0
.end method

.method public hasSerial()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasSerial:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 227
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

    .line 162
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$CneCommands;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneCommands;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneCommands;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 279
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$CneCommands;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 284
    return-object p0

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneCommands;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneCommands;

    .end local v0    # "tag":I
    goto :goto_1

    .line 293
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneCommands;->setSerial(I)Lcom/quicinc/cne/Native$CneCommands;

    .line 294
    goto :goto_1

    .line 289
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneCommands;->setCmd(I)Lcom/quicinc/cne/Native$CneCommands;

    .line 290
    nop

    .line 301
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 281
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public setCmd(I)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p1, "value"    # I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasCmd:Z

    .line 175
    iput p1, p0, Lcom/quicinc/cne/Native$CneCommands;->cmd_:I

    .line 176
    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasPayload:Z

    .line 209
    iput-object p1, p0, Lcom/quicinc/cne/Native$CneCommands;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 210
    return-object p0
.end method

.method public setSerial(I)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p1, "value"    # I

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasSerial:Z

    .line 192
    iput p1, p0, Lcom/quicinc/cne/Native$CneCommands;->serial_:I

    .line 193
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

    .line 233
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasCmd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getCmd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasSerial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getSerial()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 242
    :cond_2
    return-void
.end method
