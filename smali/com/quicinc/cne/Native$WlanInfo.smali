.class public final Lcom/quicinc/cne/Native$WlanInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WlanInfo"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x7

.field public static final DNSINFO_FIELD_NUMBER:I = 0xf

.field public static final FREQBAND_FIELD_NUMBER:I = 0x3

.field public static final RATINFO_FIELD_NUMBER:I = 0x1

.field public static final RSSI_FIELD_NUMBER:I = 0x5

.field public static final SOFTAPSTATUS_FIELD_NUMBER:I = 0x4

.field public static final SSID_FIELD_NUMBER:I = 0x6


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private dnsInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private freqBand_:I

.field private hasBssid:Z

.field private hasFreqBand:Z

.field private hasRatInfo:Z

.field private hasRssi:Z

.field private hasSoftApStatus:Z

.field private hasSsid:Z

.field private ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

.field private rssi_:I

.field private softApStatus_:I

.field private ssid_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1725
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->freqBand_:I

    .line 1767
    const/16 v1, 0xa

    iput v1, p0, Lcom/quicinc/cne/Native$WlanInfo;->softApStatus_:I

    .line 1784
    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->rssi_:I

    .line 1801
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ssid_:Ljava/lang/String;

    .line 1818
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->bssid_:Ljava/lang/String;

    .line 1834
    nop

    .line 1835
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    .line 1907
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    .line 1725
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2014
    new-instance v0, Lcom/quicinc/cne/Native$WlanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 2008
    new-instance v0, Lcom/quicinc/cne/Native$WlanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WlanInfo;

    return-object v0
.end method


# virtual methods
.method public addDnsInfo(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1851
    if-eqz p1, :cond_1

    .line 1854
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    .line 1857
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1858
    return-object p0

    .line 1852
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final clear()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .line 1866
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearRatInfo()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1867
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearFreqBand()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1868
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearSoftApStatus()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1869
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearRssi()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1870
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearSsid()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1871
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearBssid()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1872
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearDnsInfo()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1873
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    .line 1874
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .line 1827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid:Z

    .line 1828
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->bssid_:Ljava/lang/String;

    .line 1829
    return-object p0
.end method

.method public clearDnsInfo()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .line 1861
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    .line 1862
    return-object p0
.end method

.method public clearFreqBand()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .line 1759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand:Z

    .line 1760
    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->freqBand_:I

    .line 1761
    return-object p0
.end method

.method public clearRatInfo()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .line 1742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo:Z

    .line 1743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 1744
    return-object p0
.end method

.method public clearRssi()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .line 1793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi:Z

    .line 1794
    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->rssi_:I

    .line 1795
    return-object p0
.end method

.method public clearSoftApStatus()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .line 1776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasSoftApStatus:Z

    .line 1777
    const/16 v0, 0xa

    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->softApStatus_:I

    .line 1778
    return-object p0
.end method

.method public clearSsid()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .line 1810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid:Z

    .line 1811
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ssid_:Ljava/lang/String;

    .line 1812
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1910
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1912
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getSerializedSize()I

    .line 1914
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    return v0
.end method

.method public getDnsInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1841
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDnsInfoCount()I
    .locals 1

    .line 1839
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDnsInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1837
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    return-object v0
.end method

.method public getFreqBand()I
    .locals 1

    .line 1752
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->freqBand_:I

    return v0
.end method

.method public getRatInfo()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 1785
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->rssi_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1919
    const/4 v0, 0x0

    .line 1920
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1921
    nop

    .line 1922
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1924
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1925
    const/4 v1, 0x3

    .line 1926
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getFreqBand()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1928
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasSoftApStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1929
    const/4 v1, 0x4

    .line 1930
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getSoftApStatus()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1932
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1933
    const/4 v1, 0x5

    .line 1934
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getRssi()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1936
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1937
    const/4 v1, 0x6

    .line 1938
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1940
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1941
    const/4 v1, 0x7

    .line 1942
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1945
    :cond_5
    const/4 v1, 0x0

    .line 1946
    .local v1, "dataSize":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getDnsInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1947
    .local v4, "element":Ljava/lang/String;
    nop

    .line 1948
    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1949
    .end local v4    # "element":Ljava/lang/String;
    goto :goto_0

    .line 1950
    :cond_6
    add-int/2addr v0, v1

    .line 1951
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getDnsInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1953
    .end local v1    # "dataSize":I
    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    .line 1954
    return v0
.end method

.method public getSoftApStatus()I
    .locals 1

    .line 1769
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->softApStatus_:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBssid()Z
    .locals 1

    .line 1820
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid:Z

    return v0
.end method

.method public hasFreqBand()Z
    .locals 1

    .line 1751
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand:Z

    return v0
.end method

.method public hasRatInfo()Z
    .locals 1

    .line 1731
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo:Z

    return v0
.end method

.method public hasRssi()Z
    .locals 1

    .line 1786
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi:Z

    return v0
.end method

.method public hasSoftApStatus()Z
    .locals 1

    .line 1768
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasSoftApStatus:Z

    return v0
.end method

.method public hasSsid()Z
    .locals 1

    .line 1803
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1878
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

    .line 1722
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WlanInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1962
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1963
    .local v0, "tag":I
    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    .line 1967
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WlanInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1968
    return-object p0

    .line 1999
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanInfo;->addDnsInfo(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    .end local v0    # "tag":I
    goto :goto_1

    .line 1995
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanInfo;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 1996
    goto :goto_1

    .line 1991
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanInfo;->setSsid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 1992
    goto :goto_1

    .line 1987
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanInfo;->setRssi(I)Lcom/quicinc/cne/Native$WlanInfo;

    .line 1988
    goto :goto_1

    .line 1983
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanInfo;->setSoftApStatus(I)Lcom/quicinc/cne/Native$WlanInfo;

    .line 1984
    goto :goto_1

    .line 1979
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanInfo;->setFreqBand(I)Lcom/quicinc/cne/Native$WlanInfo;

    .line 1980
    goto :goto_1

    .line 1973
    :cond_6
    new-instance v1, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 1974
    .local v1, "value":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1975
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanInfo;->setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 1976
    nop

    .line 2003
    .end local v0    # "tag":I
    .end local v1    # "value":Lcom/quicinc/cne/Native$RatInfo;
    :cond_7
    :goto_1
    goto :goto_0

    .line 1965
    .restart local v0    # "tag":I
    :cond_8
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid:Z

    .line 1823
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->bssid_:Ljava/lang/String;

    .line 1824
    return-object p0
.end method

.method public setDnsInfo(ILjava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1844
    if-eqz p2, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1848
    return-object p0

    .line 1845
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setFreqBand(I)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # I

    .line 1754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand:Z

    .line 1755
    iput p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->freqBand_:I

    .line 1756
    return-object p0
.end method

.method public setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # Lcom/quicinc/cne/Native$RatInfo;

    .line 1734
    if-eqz p1, :cond_0

    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo:Z

    .line 1738
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 1739
    return-object p0

    .line 1735
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRssi(I)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # I

    .line 1788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi:Z

    .line 1789
    iput p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->rssi_:I

    .line 1790
    return-object p0
.end method

.method public setSoftApStatus(I)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # I

    .line 1771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasSoftApStatus:Z

    .line 1772
    iput p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->softApStatus_:I

    .line 1773
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid:Z

    .line 1806
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->ssid_:Ljava/lang/String;

    .line 1807
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1884
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1887
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1888
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getFreqBand()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1890
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasSoftApStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1891
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getSoftApStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1893
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1894
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getRssi()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSInt32(II)V

    .line 1896
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1897
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1899
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1900
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1902
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getDnsInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1903
    .local v1, "element":Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1904
    .end local v1    # "element":Ljava/lang/String;
    goto :goto_0

    .line 1905
    :cond_6
    return-void
.end method
