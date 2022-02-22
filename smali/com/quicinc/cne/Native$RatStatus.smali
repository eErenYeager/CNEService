.class public final Lcom/quicinc/cne/Native$RatStatus;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RatStatus"
.end annotation


# static fields
.field public static final IPADDRV6_FIELD_NUMBER:I = 0x4

.field public static final IPADDR_FIELD_NUMBER:I = 0x3

.field public static final RATSTATUS_FIELD_NUMBER:I = 0x2

.field public static final RAT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasIpAddr:Z

.field private hasIpAddrV6:Z

.field private hasRat:Z

.field private hasRatStatus:Z

.field private ipAddrV6_:Ljava/lang/String;

.field private ipAddr_:Ljava/lang/String;

.field private ratStatus_:I

.field private rat_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 737
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 742
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->rat_:I

    .line 759
    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ratStatus_:I

    .line 776
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddr_:Ljava/lang/String;

    .line 793
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddrV6_:Ljava/lang/String;

    .line 837
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    .line 737
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    new-instance v0, Lcom/quicinc/cne/Native$RatStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 907
    new-instance v0, Lcom/quicinc/cne/Native$RatStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatStatus;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$RatStatus;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .line 808
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->clearRat()Lcom/quicinc/cne/Native$RatStatus;

    .line 809
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->clearRatStatus()Lcom/quicinc/cne/Native$RatStatus;

    .line 810
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->clearIpAddr()Lcom/quicinc/cne/Native$RatStatus;

    .line 811
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->clearIpAddrV6()Lcom/quicinc/cne/Native$RatStatus;

    .line 812
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    .line 813
    return-object p0
.end method

.method public clearIpAddr()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr:Z

    .line 786
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddr_:Ljava/lang/String;

    .line 787
    return-object p0
.end method

.method public clearIpAddrV6()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6:Z

    .line 803
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddrV6_:Ljava/lang/String;

    .line 804
    return-object p0
.end method

.method public clearRat()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRat:Z

    .line 752
    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->rat_:I

    .line 753
    return-object p0
.end method

.method public clearRatStatus()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus:Z

    .line 769
    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ratStatus_:I

    .line 770
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 840
    iget v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getSerializedSize()I

    .line 844
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    return v0
.end method

.method public getIpAddr()Ljava/lang/String;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddr_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddrV6()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddrV6_:Ljava/lang/String;

    return-object v0
.end method

.method public getRat()I
    .locals 1

    .line 744
    iget v0, p0, Lcom/quicinc/cne/Native$RatStatus;->rat_:I

    return v0
.end method

.method public getRatStatus()I
    .locals 1

    .line 761
    iget v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ratStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasRat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    const/4 v1, 0x1

    .line 852
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getRat()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    const/4 v1, 0x2

    .line 856
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getRatStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    const/4 v1, 0x3

    .line 860
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 862
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 863
    const/4 v1, 0x4

    .line 864
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddrV6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 866
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    .line 867
    return v0
.end method

.method public hasIpAddr()Z
    .locals 1

    .line 778
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr:Z

    return v0
.end method

.method public hasIpAddrV6()Z
    .locals 1

    .line 795
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6:Z

    return v0
.end method

.method public hasRat()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRat:Z

    return v0
.end method

.method public hasRatStatus()Z
    .locals 1

    .line 760
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 817
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

    .line 734
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$RatStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatStatus;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 876
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 880
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$RatStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 881
    return-object p0

    .line 898
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatStatus;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;

    .end local v0    # "tag":I
    goto :goto_1

    .line 894
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatStatus;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;

    .line 895
    goto :goto_1

    .line 890
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatStatus;->setRatStatus(I)Lcom/quicinc/cne/Native$RatStatus;

    .line 891
    goto :goto_1

    .line 886
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatStatus;->setRat(I)Lcom/quicinc/cne/Native$RatStatus;

    .line 887
    nop

    .line 902
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 878
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr:Z

    .line 781
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddr_:Ljava/lang/String;

    .line 782
    return-object p0
.end method

.method public setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6:Z

    .line 798
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddrV6_:Ljava/lang/String;

    .line 799
    return-object p0
.end method

.method public setRat(I)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p1, "value"    # I

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRat:Z

    .line 747
    iput p1, p0, Lcom/quicinc/cne/Native$RatStatus;->rat_:I

    .line 748
    return-object p0
.end method

.method public setRatStatus(I)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p1, "value"    # I

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus:Z

    .line 764
    iput p1, p0, Lcom/quicinc/cne/Native$RatStatus;->ratStatus_:I

    .line 765
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

    .line 823
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasRat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getRat()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getRatStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 829
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 832
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 833
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddrV6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 835
    :cond_3
    return-void
.end method
