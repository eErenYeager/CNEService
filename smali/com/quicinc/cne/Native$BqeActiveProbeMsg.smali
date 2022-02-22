.class public final Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BqeActiveProbeMsg"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x1

.field public static final FILESIZE_FIELD_NUMBER:I = 0x4

.field public static final HTTPURI_FIELD_NUMBER:I = 0x3

.field public static final URI_FIELD_NUMBER:I = 0x2


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private fileSize_:Ljava/lang/String;

.field private hasBssid:Z

.field private hasFileSize:Z

.field private hasHttpuri:Z

.field private hasUri:Z

.field private httpuri_:Ljava/lang/String;

.field private uri_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4003
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4008
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->bssid_:Ljava/lang/String;

    .line 4025
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->uri_:Ljava/lang/String;

    .line 4042
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->httpuri_:Ljava/lang/String;

    .line 4059
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->fileSize_:Ljava/lang/String;

    .line 4103
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    .line 4003
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4179
    new-instance v0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 4173
    new-instance v0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .line 4074
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->clearBssid()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4075
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->clearUri()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4076
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->clearHttpuri()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4077
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->clearFileSize()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4078
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    .line 4079
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .line 4017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid:Z

    .line 4018
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->bssid_:Ljava/lang/String;

    .line 4019
    return-object p0
.end method

.method public clearFileSize()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .line 4068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize:Z

    .line 4069
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->fileSize_:Ljava/lang/String;

    .line 4070
    return-object p0
.end method

.method public clearHttpuri()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .line 4051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri:Z

    .line 4052
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->httpuri_:Ljava/lang/String;

    .line 4053
    return-object p0
.end method

.method public clearUri()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .line 4034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri:Z

    .line 4035
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->uri_:Ljava/lang/String;

    .line 4036
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 4009
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 4106
    iget v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 4108
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getSerializedSize()I

    .line 4110
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    return v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .line 4060
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->fileSize_:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpuri()Ljava/lang/String;
    .locals 1

    .line 4043
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->httpuri_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4115
    const/4 v0, 0x0

    .line 4116
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4117
    const/4 v1, 0x1

    .line 4118
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4120
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4121
    const/4 v1, 0x2

    .line 4122
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4124
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4125
    const/4 v1, 0x3

    .line 4126
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4128
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4129
    const/4 v1, 0x4

    .line 4130
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getFileSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4132
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    .line 4133
    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 4026
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBssid()Z
    .locals 1

    .line 4010
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid:Z

    return v0
.end method

.method public hasFileSize()Z
    .locals 1

    .line 4061
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize:Z

    return v0
.end method

.method public hasHttpuri()Z
    .locals 1

    .line 4044
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri:Z

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .line 4027
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 4083
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

    .line 4000
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4141
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4142
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 4146
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4147
    return-object p0

    .line 4164
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->setFileSize(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .end local v0    # "tag":I
    goto :goto_1

    .line 4160
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->setHttpuri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4161
    goto :goto_1

    .line 4156
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4157
    goto :goto_1

    .line 4152
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4153
    nop

    .line 4168
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 4144
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid:Z

    .line 4013
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->bssid_:Ljava/lang/String;

    .line 4014
    return-object p0
.end method

.method public setFileSize(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize:Z

    .line 4064
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->fileSize_:Ljava/lang/String;

    .line 4065
    return-object p0
.end method

.method public setHttpuri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri:Z

    .line 4047
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->httpuri_:Ljava/lang/String;

    .line 4048
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri:Z

    .line 4030
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->uri_:Ljava/lang/String;

    .line 4031
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

    .line 4089
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4090
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4092
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4093
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4095
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4096
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4098
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4099
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getFileSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4101
    :cond_3
    return-void
.end method
