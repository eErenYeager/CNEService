.class Lcom/quicinc/cne/CNE$4;
.super Landroid/database/ContentObserver;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CNE;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 2428
    iput-object p1, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 2432
    iget-object v0, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0, p2}, Lcom/quicinc/cne/CNE;->access$1400(Lcom/quicinc/cne/CNE;Landroid/net/Uri;)V

    .line 2433
    return-void
.end method
