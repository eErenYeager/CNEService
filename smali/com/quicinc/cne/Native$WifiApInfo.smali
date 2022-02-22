.class public final Lcom/quicinc/cne/Native$WifiApInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiApInfo"
.end annotation


# static fields
.field public static final CURRSTATE_FIELD_NUMBER:I = 0x1

.field public static final PREVSTATE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private currState_:I

.field private hasCurrState:Z

.field private hasPrevState:Z

.field private prevState_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1144
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1149
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->currState_:I

    .line 1166
    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->prevState_:I

    .line 1202
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    .line 1144
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1262
    new-instance v0, Lcom/quicinc/cne/Native$WifiApInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WifiApInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WifiApInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiApInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1256
    new-instance v0, Lcom/quicinc/cne/Native$WifiApInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WifiApInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WifiApInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WifiApInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1

    .line 1181
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->clearCurrState()Lcom/quicinc/cne/Native$WifiApInfo;

    .line 1182
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->clearPrevState()Lcom/quicinc/cne/Native$WifiApInfo;

    .line 1183
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    .line 1184
    return-object p0
.end method

.method public clearCurrState()Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1

    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState:Z

    .line 1159
    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->currState_:I

    .line 1160
    return-object p0
.end method

.method public clearPrevState()Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1

    .line 1175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState:Z

    .line 1176
    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->prevState_:I

    .line 1177
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1205
    iget v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1207
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getSerializedSize()I

    .line 1209
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    return v0
.end method

.method public getCurrState()I
    .locals 1

    .line 1150
    iget v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->currState_:I

    return v0
.end method

.method public getPrevState()I
    .locals 1

    .line 1167
    iget v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->prevState_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    const/4 v1, 0x1

    .line 1217
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getCurrState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1220
    const/4 v1, 0x2

    .line 1221
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getPrevState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1223
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    .line 1224
    return v0
.end method

.method public hasCurrState()Z
    .locals 1

    .line 1151
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState:Z

    return v0
.end method

.method public hasPrevState()Z
    .locals 1

    .line 1168
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1188
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

    .line 1141
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WifiApInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiApInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1232
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1233
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1237
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WifiApInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1238
    return-object p0

    .line 1247
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WifiApInfo;->setPrevState(I)Lcom/quicinc/cne/Native$WifiApInfo;

    .end local v0    # "tag":I
    goto :goto_1

    .line 1243
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WifiApInfo;->setCurrState(I)Lcom/quicinc/cne/Native$WifiApInfo;

    .line 1244
    nop

    .line 1251
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 1235
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setCurrState(I)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1
    .param p1, "value"    # I

    .line 1153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState:Z

    .line 1154
    iput p1, p0, Lcom/quicinc/cne/Native$WifiApInfo;->currState_:I

    .line 1155
    return-object p0
.end method

.method public setPrevState(I)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1
    .param p1, "value"    # I

    .line 1170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState:Z

    .line 1171
    iput p1, p0, Lcom/quicinc/cne/Native$WifiApInfo;->prevState_:I

    .line 1172
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

    .line 1194
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getCurrState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getPrevState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1200
    :cond_1
    return-void
.end method
