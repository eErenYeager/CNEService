.class Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;
.super Ljava/util/TimerTask;
.source "ICDClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/ICDClient$icdHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICDTimerTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/quicinc/cne/ICDClient$icdHttp;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/ICDClient$icdHttp;)V
    .locals 0
    .param p1, "this$1"    # Lcom/quicinc/cne/ICDClient$icdHttp;

    .line 152
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;->this$1:Lcom/quicinc/cne/ICDClient$icdHttp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    const-string v0, "WQE:ICD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimedOut: ICDClient Timer thread started :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;->this$1:Lcom/quicinc/cne/ICDClient$icdHttp;

    iget-object v2, v2, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v2}, Lcom/quicinc/cne/ICDClient;->access$200(Lcom/quicinc/cne/ICDClient;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;->this$1:Lcom/quicinc/cne/ICDClient$icdHttp;

    iget-object v0, v0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/ICDClient;->access$002(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 158
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;->this$1:Lcom/quicinc/cne/ICDClient$icdHttp;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient$icdHttp;->access$300(Lcom/quicinc/cne/ICDClient$icdHttp;)V

    .line 159
    return-void
.end method
