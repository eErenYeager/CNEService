.class public final Lcom/quicinc/cne/Native$WwanInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WwanInfo"
.end annotation


# static fields
.field public static final MCCMNC_FIELD_NUMBER:I = 0xd

.field public static final RATINFO_FIELD_NUMBER:I = 0x1

.field public static final ROAMING_FIELD_NUMBER:I = 0xc

.field public static final SIGNALSTRENGTH_FIELD_NUMBER:I = 0xb


# instance fields
.field private cachedSize:I

.field private hasMccMnc:Z

.field private hasRatInfo:Z

.field private hasRoaming:Z

.field private hasSignalStrength:Z

.field private mccMnc_:Ljava/lang/String;

.field private ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

.field private roaming_:I

.field private signalStrength_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2022
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 2047
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->signalStrength_:I

    .line 2064
    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->roaming_:I

    .line 2081
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->mccMnc_:Ljava/lang/String;

    .line 2125
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    .line 2022
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2203
    new-instance v0, Lcom/quicinc/cne/Native$WwanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 2197
    new-instance v0, Lcom/quicinc/cne/Native$WwanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WwanInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .line 2096
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->clearRatInfo()Lcom/quicinc/cne/Native$WwanInfo;

    .line 2097
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->clearSignalStrength()Lcom/quicinc/cne/Native$WwanInfo;

    .line 2098
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->clearRoaming()Lcom/quicinc/cne/Native$WwanInfo;

    .line 2099
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->clearMccMnc()Lcom/quicinc/cne/Native$WwanInfo;

    .line 2100
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    .line 2101
    return-object p0
.end method

.method public clearMccMnc()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .line 2090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc:Z

    .line 2091
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->mccMnc_:Ljava/lang/String;

    .line 2092
    return-object p0
.end method

.method public clearRatInfo()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .line 2039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo:Z

    .line 2040
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 2041
    return-object p0
.end method

.method public clearRoaming()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .line 2073
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming:Z

    .line 2074
    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->roaming_:I

    .line 2075
    return-object p0
.end method

.method public clearSignalStrength()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .line 2056
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength:Z

    .line 2057
    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->signalStrength_:I

    .line 2058
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 2128
    iget v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2130
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getSerializedSize()I

    .line 2132
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    return v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .locals 1

    .line 2082
    iget-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->mccMnc_:Ljava/lang/String;

    return-object v0
.end method

.method public getRatInfo()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 2029
    iget-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    return-object v0
.end method

.method public getRoaming()I
    .locals 1

    .line 2065
    iget v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->roaming_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2137
    const/4 v0, 0x0

    .line 2138
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2139
    const/4 v1, 0x1

    .line 2140
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2142
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2143
    const/16 v1, 0xb

    .line 2144
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getSignalStrength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2146
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2147
    const/16 v1, 0xc

    .line 2148
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getRoaming()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2150
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2151
    const/16 v1, 0xd

    .line 2152
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2154
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    .line 2155
    return v0
.end method

.method public getSignalStrength()I
    .locals 1

    .line 2048
    iget v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->signalStrength_:I

    return v0
.end method

.method public hasMccMnc()Z
    .locals 1

    .line 2083
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc:Z

    return v0
.end method

.method public hasRatInfo()Z
    .locals 1

    .line 2028
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo:Z

    return v0
.end method

.method public hasRoaming()Z
    .locals 1

    .line 2066
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming:Z

    return v0
.end method

.method public hasSignalStrength()Z
    .locals 1

    .line 2049
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2105
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

    .line 2019
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WwanInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2163
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2164
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x58

    if-eq v0, v1, :cond_2

    const/16 v1, 0x60

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    .line 2168
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WwanInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2169
    return-object p0

    .line 2188
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WwanInfo;->setMccMnc(Ljava/lang/String;)Lcom/quicinc/cne/Native$WwanInfo;

    .end local v0    # "tag":I
    goto :goto_1

    .line 2184
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WwanInfo;->setRoaming(I)Lcom/quicinc/cne/Native$WwanInfo;

    .line 2185
    goto :goto_1

    .line 2180
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WwanInfo;->setSignalStrength(I)Lcom/quicinc/cne/Native$WwanInfo;

    .line 2181
    goto :goto_1

    .line 2174
    :cond_3
    new-instance v1, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 2175
    .local v1, "value":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2176
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WwanInfo;->setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WwanInfo;

    .line 2177
    nop

    .line 2192
    .end local v0    # "tag":I
    .end local v1    # "value":Lcom/quicinc/cne/Native$RatInfo;
    :cond_4
    :goto_1
    goto :goto_0

    .line 2166
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setMccMnc(Ljava/lang/String;)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc:Z

    .line 2086
    iput-object p1, p0, Lcom/quicinc/cne/Native$WwanInfo;->mccMnc_:Ljava/lang/String;

    .line 2087
    return-object p0
.end method

.method public setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p1, "value"    # Lcom/quicinc/cne/Native$RatInfo;

    .line 2031
    if-eqz p1, :cond_0

    .line 2034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo:Z

    .line 2035
    iput-object p1, p0, Lcom/quicinc/cne/Native$WwanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 2036
    return-object p0

    .line 2032
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRoaming(I)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p1, "value"    # I

    .line 2068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming:Z

    .line 2069
    iput p1, p0, Lcom/quicinc/cne/Native$WwanInfo;->roaming_:I

    .line 2070
    return-object p0
.end method

.method public setSignalStrength(I)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p1, "value"    # I

    .line 2051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength:Z

    .line 2052
    iput p1, p0, Lcom/quicinc/cne/Native$WwanInfo;->signalStrength_:I

    .line 2053
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

    .line 2111
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2114
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2115
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getSignalStrength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSInt32(II)V

    .line 2117
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2118
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getRoaming()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2120
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2121
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2123
    :cond_3
    return-void
.end method
