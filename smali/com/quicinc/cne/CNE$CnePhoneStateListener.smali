.class Lcom/quicinc/cne/CNE$CnePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CnePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method private constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CnePhoneStateListener;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/quicinc/cne/CNE;Lcom/quicinc/cne/CNE$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/quicinc/cne/CNE;
    .param p2, "x1"    # Lcom/quicinc/cne/CNE$1;

    .line 327
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CnePhoneStateListener;-><init>(Lcom/quicinc/cne/CNE;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 331
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CnePhoneStateListener;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->access$100(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 332
    .local v0, "dataState":I
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sub type is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/CNE$CnePhoneStateListener;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v3}, Lcom/quicinc/cne/CNE;->access$100(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CnePhoneStateListener;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, p1}, Lcom/quicinc/cne/CNE;->access$300(Lcom/quicinc/cne/CNE;Landroid/telephony/ServiceState;)V

    .line 335
    return-void
.end method
