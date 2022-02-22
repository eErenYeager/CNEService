.class public final Lcom/quicinc/cne/Native$WlanFamType;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WlanFamType"
.end annotation


# static fields
.field public static final FAMILY_FIELD_NUMBER:I = 0x1

.field public static final ISANDROIDVALIDATED_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private family_:I

.field private hasFamily:Z

.field private hasIsAndroidValidated:Z

.field private isAndroidValidated_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1018
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1023
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->family_:I

    .line 1040
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->isAndroidValidated_:Z

    .line 1076
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    .line 1018
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    new-instance v0, Lcom/quicinc/cne/Native$WlanFamType;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanFamType;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanFamType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanFamType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1130
    new-instance v0, Lcom/quicinc/cne/Native$WlanFamType;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanFamType;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanFamType;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WlanFamType;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1

    .line 1055
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->clearFamily()Lcom/quicinc/cne/Native$WlanFamType;

    .line 1056
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->clearIsAndroidValidated()Lcom/quicinc/cne/Native$WlanFamType;

    .line 1057
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    .line 1058
    return-object p0
.end method

.method public clearFamily()Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily:Z

    .line 1033
    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->family_:I

    .line 1034
    return-object p0
.end method

.method public clearIsAndroidValidated()Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1

    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated:Z

    .line 1050
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->isAndroidValidated_:Z

    .line 1051
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1079
    iget v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    if-gez v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getSerializedSize()I

    .line 1083
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    return v0
.end method

.method public getFamily()I
    .locals 1

    .line 1025
    iget v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->family_:I

    return v0
.end method

.method public getIsAndroidValidated()Z
    .locals 1

    .line 1041
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->isAndroidValidated_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1088
    const/4 v0, 0x0

    .line 1089
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    const/4 v1, 0x1

    .line 1091
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getFamily()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1094
    const/4 v1, 0x2

    .line 1095
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getIsAndroidValidated()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1097
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    .line 1098
    return v0
.end method

.method public hasFamily()Z
    .locals 1

    .line 1024
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily:Z

    return v0
.end method

.method public hasIsAndroidValidated()Z
    .locals 1

    .line 1042
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1062
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

    .line 1015
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WlanFamType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanFamType;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1107
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1111
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WlanFamType;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1112
    return-object p0

    .line 1121
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanFamType;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$WlanFamType;

    .end local v0    # "tag":I
    goto :goto_1

    .line 1117
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanFamType;->setFamily(I)Lcom/quicinc/cne/Native$WlanFamType;

    .line 1118
    nop

    .line 1125
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 1109
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setFamily(I)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1
    .param p1, "value"    # I

    .line 1027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily:Z

    .line 1028
    iput p1, p0, Lcom/quicinc/cne/Native$WlanFamType;->family_:I

    .line 1029
    return-object p0
.end method

.method public setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1
    .param p1, "value"    # Z

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated:Z

    .line 1045
    iput-boolean p1, p0, Lcom/quicinc/cne/Native$WlanFamType;->isAndroidValidated_:Z

    .line 1046
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

    .line 1068
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getFamily()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1071
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getIsAndroidValidated()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1074
    :cond_1
    return-void
.end method
