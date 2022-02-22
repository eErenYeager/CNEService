.class Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;
.super Landroid/os/Handler;
.source "CNEServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNEService/CNEServiceApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNEService/CNEServiceApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNEService/CNEServiceApp;

    .line 44
    iput-object p1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/quicinc/cne/CNEService/CNEServiceApp;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNEService/CNEServiceApp;
    .param p2, "L"    # Landroid/os/Looper;

    .line 46
    iput-object p1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    .line 47
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2773

    if-eq v0, v1, :cond_2

    const v1, 0x11000

    if-eq v0, v1, :cond_1

    const v1, 0x11004

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-static {v0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->access$100(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-static {v0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->access$100(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->access$102(Lcom/quicinc/cne/CNEService/CNEServiceApp;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 67
    goto :goto_0

    .line 59
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    .line 60
    const-string v0, "CNEServiceApp"

    const-string v1, "qcs channel ok"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->access$102(Lcom/quicinc/cne/CNEService/CNEServiceApp;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 62
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-static {v0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->access$200(Lcom/quicinc/cne/CNEService/CNEServiceApp;)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    .line 55
    .local v0, "mg":Landroid/os/Messenger;
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 56
    .local v1, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v2, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    iget-object v3, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-static {v3}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->access$000(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 57
    nop

    .line 77
    .end local v0    # "mg":Landroid/os/Messenger;
    .end local v1    # "ac":Lcom/android/internal/util/AsyncChannel;
    :cond_3
    :goto_0
    return-void
.end method
