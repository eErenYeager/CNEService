.class Lcom/quicinc/cne/CNE$CNEReceiver;
.super Ljava/lang/Object;
.source "CNE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CNEReceiver"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "CORE:COM:RCVR"


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .line 1295
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1296
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->buffer:[B

    .line 1297
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1300
    const/4 v0, 0x0

    move v1, v0

    .line 1304
    .local v1, "retryCount":I
    :goto_0
    const/4 v2, 0x0

    move-object v3, v2

    .line 1308
    .local v3, "s":Landroid/net/LocalSocket;
    :try_start_0
    const-string v4, "CORE:COM:RCVR"

    const-string v5, "CNE creating socket"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->access$2700(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    move-object v3, v4

    .line 1310
    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string v5, "cnd"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1312
    .local v4, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 1339
    nop

    .line 1338
    nop

    .line 1340
    const/4 v1, 0x0

    .line 1341
    :try_start_1
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iput-object v3, v5, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    .line 1342
    const-string v5, "CORE:COM:RCVR"

    const-string v6, "Connected to \'cnd\' socket"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->access$2700(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const/4 v5, 0x1

    sput-boolean v5, Lcom/quicinc/cne/CNE;->isCndUp:Z

    .line 1344
    iget-object v6, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6}, Lcom/quicinc/cne/CNE;->access$3000(Lcom/quicinc/cne/CNE;)Z

    .line 1345
    iget-object v6, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v6, v6, Lcom/quicinc/cne/CNE;->mSender:Lcom/quicinc/cne/CNE$CNESender;

    const/4 v7, 0x3

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Lcom/quicinc/cne/CNE$CNESender;->sendEmptyMessageDelayed(IJ)Z

    .line 1347
    iget-object v6, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6}, Lcom/quicinc/cne/CNE;->access$3100(Lcom/quicinc/cne/CNE;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 1349
    move v6, v0

    .line 1351
    .local v6, "length":I
    :try_start_2
    iget-object v7, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v7, v7, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 1354
    .local v7, "is":Ljava/io/InputStream;
    :goto_1
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->buffer:[B

    invoke-static {v7, v8}, Lcom/quicinc/cne/CNE;->access$3200(Ljava/io/InputStream;[B)I

    move-result v8

    move v6, v8

    .line 1356
    if-gez v6, :cond_0

    .line 1358
    nop

    .line 1373
    .end local v7    # "is":Ljava/io/InputStream;
    :goto_2
    goto :goto_3

    .line 1362
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_0
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v9, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->buffer:[B

    invoke-static {v8, v9, v6}, Lcom/quicinc/cne/CNE;->access$3300(Lcom/quicinc/cne/CNE;[BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1370
    .end local v7    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 1371
    .local v7, "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string v8, "CORE:COM:RCVR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uncaught exception read length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1371
    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "tr":Ljava/lang/Throwable;
    goto :goto_3

    .line 1368
    :catch_1
    move-exception v7

    .line 1369
    .local v7, "ex":Ljava/io/IOException;
    const-string v8, "CORE:COM:RCVR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\'cnd\' socket closed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->access$2700(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 1374
    :goto_3
    const-string v7, "CORE:COM:RCVR"

    const-string v8, "Disconnected from \'cnd\' socket"

    invoke-static {v7, v8}, Lcom/quicinc/cne/CNE;->access$2700(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    sput-boolean v0, Lcom/quicinc/cne/CNE;->isCndUp:Z

    .line 1376
    sput-boolean v5, Lcom/quicinc/cne/CNE;->isCndDisconnected:Z

    .line 1377
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v5, v0}, Lcom/quicinc/cne/CNE;->access$3402(Lcom/quicinc/cne/CNE;Z)Z

    .line 1378
    sput-boolean v0, Lcom/quicinc/cne/CNE;->isDispatched:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1381
    :try_start_4
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v5, v5, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 1383
    goto :goto_4

    .line 1382
    :catch_2
    move-exception v5

    .line 1385
    :goto_4
    :try_start_5
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iput-object v2, v5, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    .line 1386
    invoke-static {}, Lcom/quicinc/cne/CNERequest;->resetSerial()V

    .line 1389
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v2, v2, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 1390
    const/4 v5, 0x0

    .local v5, "i":I
    :try_start_6
    iget-object v7, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v7, v7, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "sz":I
    :goto_5
    if-ge v5, v7, :cond_1

    .line 1391
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v8, v8, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/quicinc/cne/CNERequest;

    .line 1393
    .local v8, "rr":Lcom/quicinc/cne/CNERequest;
    invoke-virtual {v8}, Lcom/quicinc/cne/CNERequest;->release()V

    .line 1390
    .end local v8    # "rr":Lcom/quicinc/cne/CNERequest;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1396
    .end local v5    # "i":I
    .end local v7    # "sz":I
    :cond_1
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v5, v5, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1397
    monitor-exit v2

    .line 1398
    .end local v3    # "s":Landroid/net/LocalSocket;
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    goto/16 :goto_0

    .line 1397
    .restart local v3    # "s":Landroid/net/LocalSocket;
    .restart local v4    # "l":Landroid/net/LocalSocketAddress;
    .restart local v6    # "length":I
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 1399
    .end local v3    # "s":Landroid/net/LocalSocket;
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    :catch_3
    move-exception v0

    goto :goto_a

    .line 1313
    .restart local v3    # "s":Landroid/net/LocalSocket;
    :catch_4
    move-exception v2

    .line 1315
    .local v2, "ex":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 1316
    :try_start_8
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 1318
    :catch_5
    move-exception v4

    goto :goto_7

    .line 1320
    :cond_2
    :goto_6
    nop

    .line 1324
    :goto_7
    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    .line 1325
    :try_start_9
    const-string v4, "CORE:COM:RCVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find \'cnd\' socket after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " times, continuing to retry silently"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1327
    :cond_3
    if-lez v1, :cond_4

    if-ge v1, v4, :cond_4

    .line 1328
    const-string v4, "CORE:COM:RCVR"

    const-string v5, "Couldn\'t find \'cnd\' socket; retrying after timeout"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 1333
    :cond_4
    :goto_8
    const-wide/16 v4, 0xfa0

    :try_start_a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 1336
    goto :goto_9

    .line 1334
    :catch_6
    move-exception v4

    .line 1335
    .local v4, "er":Ljava/lang/InterruptedException;
    :try_start_b
    const-string v5, "CORE:COM:RCVR"

    const-string v6, "cnd socket open retry timer was interrupted"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->access$600(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 1337
    .end local v4    # "er":Ljava/lang/InterruptedException;
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 1338
    goto/16 :goto_0

    .line 1399
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "s":Landroid/net/LocalSocket;
    :goto_a
    nop

    .line 1400
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v2, "CORE:COM:RCVR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uncaught exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method
