.class public final Lcom/quicinc/cne/Native$PbMobileDataState;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbMobileDataState"
.end annotation


# static fields
.field public static final ISENABLED_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasIsEnabled:Z

.field private isEnabled_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 921
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 926
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->isEnabled_:I

    .line 958
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    .line 921
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1010
    new-instance v0, Lcom/quicinc/cne/Native$PbMobileDataState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$PbMobileDataState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PbMobileDataState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1004
    new-instance v0, Lcom/quicinc/cne/Native$PbMobileDataState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$PbMobileDataState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$PbMobileDataState;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->clearIsEnabled()Lcom/quicinc/cne/Native$PbMobileDataState;

    .line 942
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    .line 943
    return-object p0
.end method

.method public clearIsEnabled()Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled:Z

    .line 936
    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->isEnabled_:I

    .line 937
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 961
    iget v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    if-gez v0, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->getSerializedSize()I

    .line 965
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    return v0
.end method

.method public getIsEnabled()I
    .locals 1

    .line 927
    iget v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->isEnabled_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    const/4 v1, 0x1

    .line 973
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->getIsEnabled()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 975
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    .line 976
    return v0
.end method

.method public hasIsEnabled()Z
    .locals 1

    .line 928
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 947
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

    .line 918
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$PbMobileDataState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PbMobileDataState;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 985
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 989
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$PbMobileDataState;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 990
    return-object p0

    .line 995
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$PbMobileDataState;->setIsEnabled(I)Lcom/quicinc/cne/Native$PbMobileDataState;

    .line 999
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 987
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setIsEnabled(I)Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1
    .param p1, "value"    # I

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled:Z

    .line 931
    iput p1, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->isEnabled_:I

    .line 932
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

    .line 953
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->getIsEnabled()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 956
    :cond_0
    return-void
.end method
