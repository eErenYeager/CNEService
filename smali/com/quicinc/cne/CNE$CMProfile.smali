.class public Lcom/quicinc/cne/CNE$CMProfile;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMProfile"
.end annotation


# instance fields
.field private add_2_4:I

.field private add_5:I

.field private drop_2_4:I

.field private drop_5:I

.field private operatorName:Ljava/lang/String;

.field private profileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .line 808
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CMProfile;->this$0:Lcom/quicinc/cne/CNE;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    return-void
.end method

.method static synthetic access$5200(Lcom/quicinc/cne/CNE$CMProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CMProfile;

    .line 804
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_2_4:I

    return v0
.end method

.method static synthetic access$5202(Lcom/quicinc/cne/CNE$CMProfile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CMProfile;
    .param p1, "x1"    # I

    .line 804
    iput p1, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_2_4:I

    return p1
.end method

.method static synthetic access$5300(Lcom/quicinc/cne/CNE$CMProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CMProfile;

    .line 804
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_5:I

    return v0
.end method

.method static synthetic access$5312(Lcom/quicinc/cne/CNE$CMProfile;I)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CMProfile;
    .param p1, "x1"    # I

    .line 804
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_5:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_5:I

    return v0
.end method

.method static synthetic access$5400(Lcom/quicinc/cne/CNE$CMProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CMProfile;

    .line 804
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_2_4:I

    return v0
.end method

.method static synthetic access$5402(Lcom/quicinc/cne/CNE$CMProfile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CMProfile;
    .param p1, "x1"    # I

    .line 804
    iput p1, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_2_4:I

    return p1
.end method

.method static synthetic access$5500(Lcom/quicinc/cne/CNE$CMProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CMProfile;

    .line 804
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_5:I

    return v0
.end method

.method static synthetic access$5512(Lcom/quicinc/cne/CNE$CMProfile;I)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE$CMProfile;
    .param p1, "x1"    # I

    .line 804
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_5:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_5:I

    return v0
.end method


# virtual methods
.method public getAdd_2_4()I
    .locals 1

    .line 836
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_2_4:I

    return v0
.end method

.method public getAdd_5()I
    .locals 1

    .line 842
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_5:I

    return v0
.end method

.method public getDrop_2_4()I
    .locals 1

    .line 839
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_2_4:I

    return v0
.end method

.method public getDrop_5()I
    .locals 1

    .line 845
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_5:I

    return v0
.end method

.method public getHighRSSI()I
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    if-ne v0, v1, :cond_0

    .line 827
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_2_4:I

    return v0

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_5GHz:Lcom/quicinc/cne/CNE$FreqBand;

    if-ne v0, v1, :cond_1

    .line 829
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_5:I

    return v0

    .line 831
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLowRSSI()I
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    if-ne v0, v1, :cond_0

    .line 817
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_2_4:I

    return v0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_5GHz:Lcom/quicinc/cne/CNE$FreqBand;

    if-ne v0, v1, :cond_1

    .line 819
    iget v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_5:I

    return v0

    .line 821
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->operatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMProfile;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdd_2_4(I)V
    .locals 0
    .param p1, "add_2_4"    # I

    .line 854
    iput p1, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_2_4:I

    .line 855
    return-void
.end method

.method public setAdd_5(I)V
    .locals 0
    .param p1, "add_5"    # I

    .line 860
    iput p1, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_5:I

    .line 861
    return-void
.end method

.method public setDrop_2_4(I)V
    .locals 0
    .param p1, "drop_2_4"    # I

    .line 857
    iput p1, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_2_4:I

    .line 858
    return-void
.end method

.method public setDrop_5(I)V
    .locals 0
    .param p1, "drop_5"    # I

    .line 863
    iput p1, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_5:I

    .line 864
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorName"    # Ljava/lang/String;

    .line 866
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CMProfile;->operatorName:Ljava/lang/String;

    .line 867
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;

    .line 851
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CMProfile;->profileName:Ljava/lang/String;

    .line 852
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMProfile [profileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/quicinc/cne/CNE$CMProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", add_2_4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_2_4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drop_2_4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_2_4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", add_5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/quicinc/cne/CNE$CMProfile;->add_5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drop_5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/quicinc/cne/CNE$CMProfile;->drop_5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
