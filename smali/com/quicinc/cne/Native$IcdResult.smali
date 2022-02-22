.class public final Lcom/quicinc/cne/Native$IcdResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IcdResult"
.end annotation


# static fields
.field public static final BQEPROB_FIELD_NUMBER:I = 0x8

.field public static final BQEQUOTA_FIELD_NUMBER:I = 0x7

.field public static final BSSID_FIELD_NUMBER:I = 0x1

.field public static final FLAGS_FIELD_NUMBER:I = 0x3

.field public static final ICDPROB_FIELD_NUMBER:I = 0x6

.field public static final ICDQUOTA_FIELD_NUMBER:I = 0x5

.field public static final MBW_FIELD_NUMBER:I = 0x9

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final TID_FIELD_NUMBER:I = 0x4

.field public static final TPUTDL_FIELD_NUMBER:I = 0xa

.field public static final TPUTSDEV_FIELD_NUMBER:I = 0xb


# instance fields
.field private bqeProb_:I

.field private bqeQuota_:I

.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private flags_:I

.field private hasBqeProb:Z

.field private hasBqeQuota:Z

.field private hasBssid:Z

.field private hasFlags:Z

.field private hasIcdProb:Z

.field private hasIcdQuota:Z

.field private hasMbw:Z

.field private hasResult:Z

.field private hasTid:Z

.field private hasTputDl:Z

.field private hasTputSdev:Z

.field private icdProb_:I

.field private icdQuota_:I

.field private mbw_:I

.field private result_:I

.field private tid_:I

.field private tputDl_:I

.field private tputSdev_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2773
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2778
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bssid_:Ljava/lang/String;

    .line 2795
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->result_:I

    .line 2812
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->flags_:I

    .line 2829
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tid_:I

    .line 2846
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdQuota_:I

    .line 2863
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdProb_:I

    .line 2880
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeQuota_:I

    .line 2897
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeProb_:I

    .line 2914
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->mbw_:I

    .line 2931
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputDl_:I

    .line 2948
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputSdev_:I

    .line 3020
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    .line 2773
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3152
    new-instance v0, Lcom/quicinc/cne/Native$IcdResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3146
    new-instance v0, Lcom/quicinc/cne/Native$IcdResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$IcdResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2963
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearBssid()Lcom/quicinc/cne/Native$IcdResult;

    .line 2964
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearResult()Lcom/quicinc/cne/Native$IcdResult;

    .line 2965
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearFlags()Lcom/quicinc/cne/Native$IcdResult;

    .line 2966
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearTid()Lcom/quicinc/cne/Native$IcdResult;

    .line 2967
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearIcdQuota()Lcom/quicinc/cne/Native$IcdResult;

    .line 2968
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearIcdProb()Lcom/quicinc/cne/Native$IcdResult;

    .line 2969
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearBqeQuota()Lcom/quicinc/cne/Native$IcdResult;

    .line 2970
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearBqeProb()Lcom/quicinc/cne/Native$IcdResult;

    .line 2971
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearMbw()Lcom/quicinc/cne/Native$IcdResult;

    .line 2972
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearTputDl()Lcom/quicinc/cne/Native$IcdResult;

    .line 2973
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearTputSdev()Lcom/quicinc/cne/Native$IcdResult;

    .line 2974
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    .line 2975
    return-object p0
.end method

.method public clearBqeProb()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb:Z

    .line 2907
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeProb_:I

    .line 2908
    return-object p0
.end method

.method public clearBqeQuota()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota:Z

    .line 2890
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeQuota_:I

    .line 2891
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBssid:Z

    .line 2788
    const-string v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bssid_:Ljava/lang/String;

    .line 2789
    return-object p0
.end method

.method public clearFlags()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasFlags:Z

    .line 2822
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->flags_:I

    .line 2823
    return-object p0
.end method

.method public clearIcdProb()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb:Z

    .line 2873
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdProb_:I

    .line 2874
    return-object p0
.end method

.method public clearIcdQuota()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota:Z

    .line 2856
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdQuota_:I

    .line 2857
    return-object p0
.end method

.method public clearMbw()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasMbw:Z

    .line 2924
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->mbw_:I

    .line 2925
    return-object p0
.end method

.method public clearResult()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasResult:Z

    .line 2805
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->result_:I

    .line 2806
    return-object p0
.end method

.method public clearTid()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTid:Z

    .line 2839
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tid_:I

    .line 2840
    return-object p0
.end method

.method public clearTputDl()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl:Z

    .line 2941
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputDl_:I

    .line 2942
    return-object p0
.end method

.method public clearTputSdev()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .line 2957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev:Z

    .line 2958
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputSdev_:I

    .line 2959
    return-object p0
.end method

.method public getBqeProb()I
    .locals 1

    .line 2898
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeProb_:I

    return v0
.end method

.method public getBqeQuota()I
    .locals 1

    .line 2881
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeQuota_:I

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 2779
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3023
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 3025
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getSerializedSize()I

    .line 3027
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 2813
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->flags_:I

    return v0
.end method

.method public getIcdProb()I
    .locals 1

    .line 2864
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdProb_:I

    return v0
.end method

.method public getIcdQuota()I
    .locals 1

    .line 2847
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdQuota_:I

    return v0
.end method

.method public getMbw()I
    .locals 1

    .line 2915
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->mbw_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 2796
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3032
    const/4 v0, 0x0

    .line 3033
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3034
    const/4 v1, 0x1

    .line 3035
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3037
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3038
    const/4 v1, 0x2

    .line 3039
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getResult()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3041
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasFlags()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3042
    const/4 v1, 0x3

    .line 3043
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getFlags()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3045
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3046
    const/4 v1, 0x4

    .line 3047
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3049
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3050
    const/4 v1, 0x5

    .line 3051
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdQuota()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3053
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3054
    const/4 v1, 0x6

    .line 3055
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdProb()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3057
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3058
    const/4 v1, 0x7

    .line 3059
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeQuota()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3061
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3062
    const/16 v1, 0x8

    .line 3063
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeProb()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3065
    :cond_7
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasMbw()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3066
    const/16 v1, 0x9

    .line 3067
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getMbw()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3069
    :cond_8
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3070
    const/16 v1, 0xa

    .line 3071
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTputDl()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3073
    :cond_9
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3074
    const/16 v1, 0xb

    .line 3075
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTputSdev()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3077
    :cond_a
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    .line 3078
    return v0
.end method

.method public getTid()I
    .locals 1

    .line 2830
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tid_:I

    return v0
.end method

.method public getTputDl()I
    .locals 1

    .line 2932
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputDl_:I

    return v0
.end method

.method public getTputSdev()I
    .locals 1

    .line 2949
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputSdev_:I

    return v0
.end method

.method public hasBqeProb()Z
    .locals 1

    .line 2899
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb:Z

    return v0
.end method

.method public hasBqeQuota()Z
    .locals 1

    .line 2882
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota:Z

    return v0
.end method

.method public hasBssid()Z
    .locals 1

    .line 2780
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBssid:Z

    return v0
.end method

.method public hasFlags()Z
    .locals 1

    .line 2814
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasFlags:Z

    return v0
.end method

.method public hasIcdProb()Z
    .locals 1

    .line 2865
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb:Z

    return v0
.end method

.method public hasIcdQuota()Z
    .locals 1

    .line 2848
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota:Z

    return v0
.end method

.method public hasMbw()Z
    .locals 1

    .line 2916
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasMbw:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .line 2797
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasResult:Z

    return v0
.end method

.method public hasTid()Z
    .locals 1

    .line 2831
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTid:Z

    return v0
.end method

.method public hasTputDl()Z
    .locals 1

    .line 2933
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl:Z

    return v0
.end method

.method public hasTputSdev()Z
    .locals 1

    .line 2950
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2979
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

    .line 2770
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$IcdResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdResult;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdResult;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3086
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3087
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3091
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$IcdResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3092
    return-object p0

    .line 3137
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setTputSdev(I)Lcom/quicinc/cne/Native$IcdResult;

    .end local v0    # "tag":I
    goto :goto_1

    .line 3133
    .restart local v0    # "tag":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setTputDl(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 3134
    goto :goto_1

    .line 3129
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setMbw(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 3130
    goto :goto_1

    .line 3125
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setBqeProb(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 3126
    goto :goto_1

    .line 3121
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setBqeQuota(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 3122
    goto :goto_1

    .line 3117
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setIcdProb(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 3118
    goto :goto_1

    .line 3113
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setIcdQuota(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 3114
    goto :goto_1

    .line 3109
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setTid(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 3110
    goto :goto_1

    .line 3105
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setFlags(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 3106
    goto :goto_1

    .line 3101
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setResult(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 3102
    goto :goto_1

    .line 3097
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdResult;

    .line 3098
    goto :goto_1

    .line 3089
    :sswitch_b
    return-object p0

    .line 3141
    .end local v0    # "tag":I
    :cond_0
    :goto_1
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method public setBqeProb(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb:Z

    .line 2902
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeProb_:I

    .line 2903
    return-object p0
.end method

.method public setBqeQuota(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota:Z

    .line 2885
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeQuota_:I

    .line 2886
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBssid:Z

    .line 2783
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdResult;->bssid_:Ljava/lang/String;

    .line 2784
    return-object p0
.end method

.method public setFlags(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasFlags:Z

    .line 2817
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->flags_:I

    .line 2818
    return-object p0
.end method

.method public setIcdProb(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb:Z

    .line 2868
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->icdProb_:I

    .line 2869
    return-object p0
.end method

.method public setIcdQuota(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota:Z

    .line 2851
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->icdQuota_:I

    .line 2852
    return-object p0
.end method

.method public setMbw(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasMbw:Z

    .line 2919
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->mbw_:I

    .line 2920
    return-object p0
.end method

.method public setResult(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasResult:Z

    .line 2800
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->result_:I

    .line 2801
    return-object p0
.end method

.method public setTid(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTid:Z

    .line 2834
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->tid_:I

    .line 2835
    return-object p0
.end method

.method public setTputDl(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl:Z

    .line 2936
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->tputDl_:I

    .line 2937
    return-object p0
.end method

.method public setTputSdev(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .line 2952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev:Z

    .line 2953
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->tputSdev_:I

    .line 2954
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

    .line 2985
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2986
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2988
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2989
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getResult()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 2991
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasFlags()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2992
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getFlags()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 2994
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2995
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 2997
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2998
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdQuota()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3000
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3001
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdProb()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3003
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3004
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeQuota()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3006
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3007
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeProb()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3009
    :cond_7
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasMbw()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3010
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getMbw()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3012
    :cond_8
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3013
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTputDl()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3015
    :cond_9
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3016
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTputSdev()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3018
    :cond_a
    return-void
.end method
