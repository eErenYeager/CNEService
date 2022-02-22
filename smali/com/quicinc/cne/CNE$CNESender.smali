.class public Lcom/quicinc/cne/CNE$CNESender;
.super Landroid/os/Handler;
.source "CNE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CNESender"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "CORE:COM:SNDR"


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1130
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    .line 1131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1135
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    .line 1132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/quicinc/cne/CNERequest;

    .line 1145
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    const/4 v1, 0x0

    .line 1147
    .local v1, "req":Lcom/quicinc/cne/CNERequest;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 1221
    :pswitch_0
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$2900(Lcom/quicinc/cne/CNE;)V

    goto/16 :goto_2

    .line 1216
    :pswitch_1
    const-string v2, "CORE:COM:SNDR"

    const-string v3, "event_toggle_wifi ...reassociating"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$700(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1218
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->access$700(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 1219
    goto/16 :goto_2

    .line 1155
    :pswitch_2
    const/4 v2, 0x0

    move v3, v2

    .line 1158
    .local v3, "alreadySubtracted":Z
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v5, v5, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    .line 1159
    .local v5, "s":Landroid/net/LocalSocket;
    if-nez v5, :cond_0

    .line 1160
    invoke-virtual {v0}, Lcom/quicinc/cne/CNERequest;->release()V

    .line 1161
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v6, v2, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    sub-int/2addr v6, v4

    iput v6, v2, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    .line 1162
    const/4 v2, 0x1

    .line 1163
    .end local v3    # "alreadySubtracted":Z
    .local v2, "alreadySubtracted":Z
    return-void

    .line 1165
    .end local v2    # "alreadySubtracted":Z
    .restart local v3    # "alreadySubtracted":Z
    :cond_0
    iget-object v6, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v6, v6, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :try_start_1
    iget-object v7, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v7, v7, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1168
    :try_start_2
    iget-object v6, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v7, v6, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    sub-int/2addr v7, v4

    iput v7, v6, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    .line 1169
    const/4 v3, 0x1

    .line 1171
    iget-object v6, v0, Lcom/quicinc/cne/CNERequest;->mData:[B

    .line 1173
    .local v6, "data":[B
    array-length v7, v6

    const/16 v8, 0x2000

    if-gt v7, v8, :cond_1

    .line 1179
    iget-object v7, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    aput-byte v2, v8, v4

    aput-byte v2, v7, v2

    .line 1180
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    const/4 v7, 0x2

    array-length v8, v6

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 1181
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    const/4 v7, 0x3

    array-length v8, v6

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 1185
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v7, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 1186
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 1188
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v7, v0, Lcom/quicinc/cne/CNERequest;->mSerial:I

    invoke-static {v2, v7}, Lcom/quicinc/cne/CNE;->access$2800(Lcom/quicinc/cne/CNE;I)Lcom/quicinc/cne/CNERequest;

    .end local v5    # "s":Landroid/net/LocalSocket;
    .end local v6    # "data":[B
    goto :goto_0

    .line 1174
    .restart local v5    # "s":Landroid/net/LocalSocket;
    .restart local v6    # "data":[B
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcel larger than max bytes allowed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1167
    .end local v6    # "data":[B
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1208
    .end local v5    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v2

    .line 1209
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "CORE:COM:SNDR"

    const-string v6, "unknown exception caught."

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 1198
    :catch_1
    move-exception v2

    .line 1199
    .local v2, "exc":Ljava/lang/RuntimeException;
    const-string v5, "CORE:COM:SNDR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uncaught exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v6, v0, Lcom/quicinc/cne/CNERequest;->mSerial:I

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->access$2800(Lcom/quicinc/cne/CNE;I)Lcom/quicinc/cne/CNERequest;

    move-result-object v1

    .line 1203
    if-nez v1, :cond_2

    if-nez v3, :cond_4

    .line 1205
    :cond_2
    invoke-virtual {v0}, Lcom/quicinc/cne/CNERequest;->release()V

    .end local v2    # "exc":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1190
    :catch_2
    move-exception v2

    .line 1191
    .local v2, "ex":Ljava/io/IOException;
    const-string v5, "CORE:COM:SNDR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v6, v0, Lcom/quicinc/cne/CNERequest;->mSerial:I

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->access$2800(Lcom/quicinc/cne/CNE;I)Lcom/quicinc/cne/CNERequest;

    move-result-object v1

    .line 1195
    if-nez v1, :cond_3

    if-nez v3, :cond_4

    .line 1196
    :cond_3
    invoke-virtual {v0}, Lcom/quicinc/cne/CNERequest;->release()V

    .line 1210
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_0
    nop

    .line 1211
    :goto_1
    if-nez v3, :cond_5

    .line 1212
    iget-object v2, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v5, v2, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    sub-int/2addr v5, v4

    iput v5, v2, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    .line 1224
    .end local v3    # "alreadySubtracted":Z
    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .line 1140
    return-void
.end method
