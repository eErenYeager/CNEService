.class public Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMNetworkCallbackTracker"
.end annotation


# instance fields
.field private mNetworkCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .line 880
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->mNetworkCallbackMap:Ljava/util/HashMap;

    .line 882
    return-void
.end method

.method private dump()V
    .locals 5

    .line 918
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->mNetworkCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 919
    .local v1, "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;>;"
    const-string v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 919
    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .end local v1    # "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;>;"
    goto :goto_0

    .line 922
    :cond_0
    return-void
.end method

.method private exceededMaxNetworkCallbacks()Z
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->mNetworkCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 926
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->mNetworkCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 927
    .local v1, "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 927
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    .end local v1    # "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;>;"
    goto :goto_0

    .line 930
    :cond_0
    return-void
.end method

.method public declared-synchronized trackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "cb"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p2, "description"    # Ljava/lang/String;

    monitor-enter p0

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->mNetworkCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->mNetworkCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-direct {p0}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->exceededMaxNetworkCallbacks()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 902
    monitor-exit p0

    return-void

    .line 896
    :cond_0
    :try_start_1
    const-string v0, "Max NetworkCallbacks exceeded "

    .line 897
    .local v0, "errorStr":Ljava/lang/String;
    const-string v1, "CORE"

    invoke-static {v1, v0}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-direct {p0}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->dump()V

    .line 899
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 888
    .end local v0    # "errorStr":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate NetworkCallback being added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 890
    .restart local v0    # "errorStr":Ljava/lang/String;
    const-string v1, "CORE"

    invoke-static {v1, v0}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-direct {p0}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->dump()V

    .line 892
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    .end local v0    # "errorStr":Ljava/lang/String;
    .end local p1    # "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local p2    # "description":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;
    throw p1
.end method

.method public declared-synchronized untrackNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/net/ConnectivityManager$NetworkCallback;

    monitor-enter p0

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->mNetworkCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->mNetworkCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 908
    :cond_0
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallback not found during remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->access$200(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    :goto_0
    monitor-exit p0

    return-void

    .line 903
    .end local p1    # "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;
    throw p1
.end method
