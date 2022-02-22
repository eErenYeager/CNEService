.class public Lcom/quicinc/cne/ICDClient$icdHttp;
.super Ljava/lang/Object;
.source "ICDClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/ICDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "icdHttp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;
    }
.end annotation


# instance fields
.field private hostName:Ljava/lang/String;

.field private httpURL:Ljava/lang/String;

.field private httpUriAddress:Ljava/lang/String;

.field private httpuri:Ljava/lang/String;

.field final synthetic this$0:Lcom/quicinc/cne/ICDClient;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/ICDClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "this$0"    # Lcom/quicinc/cne/ICDClient;
    .param p2, "uri"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-string v0, "WQE:ICD"

    const-string v1, "icdHttp - constructor"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-object p2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpuri:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/quicinc/cne/ICDClient;->access$002(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 147
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/quicinc/cne/ICDClient;->access$102(Lcom/quicinc/cne/ICDClient;Ljava/util/Timer;)Ljava/util/Timer;

    .line 148
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpuri:Ljava/lang/String;

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpURL:Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/quicinc/cne/ICDClient;->access$100(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;

    invoke-direct {v1, p0}, Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;-><init>(Lcom/quicinc/cne/ICDClient$icdHttp;)V

    invoke-static {p1}, Lcom/quicinc/cne/ICDClient;->access$200(Lcom/quicinc/cne/ICDClient;)I

    move-result v2

    const/16 v3, 0x3e8

    mul-int/2addr v3, v2

    int-to-long v2, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 150
    return-void
.end method

.method static synthetic access$300(Lcom/quicinc/cne/ICDClient$icdHttp;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/ICDClient$icdHttp;

    .line 136
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->parseIcdHttpClientRsp()V

    return-void
.end method

.method private getHostFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "startPos":I
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    const-string v1, "WQE:ICD"

    const-string v2, "The URL doesn\'t start with http. Returning null"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x0

    return-object v1

    .line 169
    :cond_0
    const/4 v0, 0x7

    .line 170
    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 171
    .local v1, "endPos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 174
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseIcdHttpClientRsp()V
    .locals 8

    .line 241
    const-string v0, "WQE:ICD"

    const-string v1, "parseIcdHttpClientRsp()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$1000(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 243
    const-string v0, "WQE:ICD"

    const-string v1, "parseIcdHttpClientRsp() Locked"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$1100(Lcom/quicinc/cne/ICDClient;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 247
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "WQE:ICD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent GET to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$800(Lcom/quicinc/cne/ICDClient;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v1}, Lcom/quicinc/cne/ICDClient;->access$900(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 249
    .local v1, "resp":I
    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v2}, Lcom/quicinc/cne/ICDClient;->access$900(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "responseMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$000(Lcom/quicinc/cne/ICDClient;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v4, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_TIMEOUT:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v3, v4}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 254
    const-string v3, "WQE:ICD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http ICDRequest failure.Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$1400(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    .line 256
    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->access$1200(Lcom/quicinc/cne/ICDClient;)I

    move-result v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->access$1300(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    .line 255
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 262
    const-string v3, "WQE:ICD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICD Http Request failure.Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$1400(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    .line 264
    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->access$1200(Lcom/quicinc/cne/ICDClient;)I

    move-result v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->access$1300(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    .line 263
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 268
    :cond_2
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_4

    .line 270
    const-string v3, "WQE:ICD"

    const-string v4, "ICD Http Request successful"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v4, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v3, v4}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 272
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->parseIcdHttpJsonRsp()V

    .line 273
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v3

    sget-object v4, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    if-eq v3, v4, :cond_3

    .line 275
    const-string v3, "WQE:ICD"

    const-string v4, "ICD Http Json Parsing not successful"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_3
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$1400(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    .line 278
    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->access$1200(Lcom/quicinc/cne/ICDClient;)I

    move-result v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->access$1300(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    .line 277
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 280
    :cond_4
    const/16 v3, 0x12e

    if-ne v1, v3, :cond_5

    .line 282
    const-string v3, "WQE:ICD"

    const-string v4, "Interpreting as ICD FAILURE"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v4, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v3, v4}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 284
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$1400(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    .line 285
    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->access$1200(Lcom/quicinc/cne/ICDClient;)I

    move-result v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->access$1300(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    .line 284
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto :goto_0

    .line 289
    :cond_5
    const-string v3, "WQE:ICD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interpreting as ICD FAILURE - statusCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v4, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v3, v4}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 291
    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$1400(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v3

    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    .line 292
    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->access$1200(Lcom/quicinc/cne/ICDClient;)I

    move-result v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->access$1300(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    .line 291
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "resp":I
    .end local v2    # "responseMessage":Ljava/lang/String;
    goto :goto_0

    .line 438
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "ex":Ljava/lang/NullPointerException;
    :try_start_1
    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v2}, Lcom/quicinc/cne/ICDClient;->access$100(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 434
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 429
    :catch_1
    move-exception v1

    .line 430
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v2}, Lcom/quicinc/cne/ICDClient;->access$100(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 431
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    const-string v1, "WQE:ICD"

    const-string v2, "Cancelling the ICD timer thread"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v1}, Lcom/quicinc/cne/ICDClient;->access$100(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 440
    iget-object v1, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/quicinc/cne/ICDClient;->access$1102(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 441
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$1000(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 442
    const-string v0, "WQE:ICD"

    const-string v1, "parseIcdHttpClientRsp() UnLocked"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    nop

    .line 445
    :goto_1
    return-void

    .line 438
    :goto_2
    const-string v2, "WQE:ICD"

    const-string v3, "Cancelling the ICD timer thread"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v2}, Lcom/quicinc/cne/ICDClient;->access$100(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 440
    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/quicinc/cne/ICDClient;->access$1102(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 441
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$1000(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 442
    const-string v0, "WQE:ICD"

    const-string v2, "parseIcdHttpClientRsp() UnLocked"

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private parseIcdHttpJsonRsp()V
    .locals 7

    .line 448
    const-string v0, "WQE:ICD"

    const-string v1, "parseIcdHttpJsonRsp()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "jsonString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v1, "jsonSB":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move-object v3, v2

    .line 454
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->access$900(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 455
    move-object v4, v2

    .line 457
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_0

    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 464
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    :goto_1
    goto :goto_2

    .line 465
    :catch_0
    move-exception v4

    .line 466
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 468
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 463
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 460
    :catch_1
    move-exception v4

    .line 461
    .local v4, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    .end local v4    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 472
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 473
    const-string v4, "WQE:ICD"

    invoke-static {v4, v0}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/net/ParseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 474
    nop

    .line 477
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 478
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->access$400(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bssid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    const-string v4, "WQE:ICD"

    const-string v5, "Bssids match, Http ICD PASS"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 497
    nop

    .line 523
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    nop

    .line 524
    return-void

    .line 485
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "WQE:ICD"

    const-string v5, "Received a mismatched bssid from the server in JSON response."

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v4, "WQE:ICD"

    const-string v5, "Interpreting as ICD FAILURE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 488
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/net/ParseException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 491
    :catch_2
    move-exception v4

    .line 493
    .local v4, "e":Lorg/json/JSONException;
    :try_start_6
    const-string v5, "WQE:ICD"

    const-string v6, "Didn\'t receive a JSON Object/bssid not present, possible captive portal"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v5, "WQE:ICD"

    const-string v6, "Interpreting as ICD FAILURE"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v6, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v5, v6}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 496
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    throw v5
    :try_end_6
    .catch Landroid/net/ParseException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 519
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v2

    .line 521
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "WQE:ICD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring Generic Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void

    .line 513
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 515
    .local v2, "e":Lorg/json/JSONException;
    const-string v4, "WQE:ICD"

    const-string v5, "Ignoring JSON Exception"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 517
    return-void

    .line 505
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v2

    .line 507
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "WQE:ICD"

    const-string v5, "IO Exception"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 509
    const-string v4, "WQE:ICD"

    const-string v5, "Interpreting as ICD TIMEOUT"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_TIMEOUT:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 511
    return-void

    .line 499
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 501
    .local v2, "e":Landroid/net/ParseException;
    const-string v4, "WQE:ICD"

    const-string v5, "Ignoring Parse  Exception"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v2}, Landroid/net/ParseException;->printStackTrace()V

    .line 503
    return-void

    .line 463
    .end local v2    # "e":Landroid/net/ParseException;
    :goto_3
    nop

    .line 464
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 467
    goto :goto_4

    .line 465
    :catch_7
    move-exception v4

    .line 466
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 467
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    throw v2
.end method

.method private sendIcdHttpClientReq()Ljava/lang/Boolean;
    .locals 2

    .line 235
    const-string v0, "WQE:ICD"

    const-string v1, "sendIcdHttpClientReq()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setIcdHttpClientReq()Ljava/lang/Boolean;
    .locals 6

    .line 178
    const-string v0, "WQE:ICD"

    const-string v1, "setIcdHttpClientReq()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpuri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/quicinc/cne/ICDClient$icdHttp;->getHostFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->hostName:Ljava/lang/String;

    .line 181
    const-string v0, "WQE:ICD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HostName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$400(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$500(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$500(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v2}, Lcom/quicinc/cne/ICDClient;->access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    const-string v0, "WQE:ICD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure :currentBSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$500(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " passed BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "WQE:ICD"

    const-string v2, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v2, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v0, v2}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 196
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 200
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpuri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?bssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->access$400(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/quicinc/cne/ICDClient;->access$802(Lcom/quicinc/cne/ICDClient;Ljava/net/URL;)Ljava/net/URL;

    .line 201
    const-string v0, "WQE:ICD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created uri object with uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpuri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 208
    nop

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v2}, Lcom/quicinc/cne/ICDClient;->access$800(Lcom/quicinc/cne/ICDClient;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-static {v0, v2}, Lcom/quicinc/cne/ICDClient;->access$902(Lcom/quicinc/cne/ICDClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    nop

    .line 221
    :try_start_2
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$900(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 222
    const-string v0, "WQE:ICD"

    const-string v2, "set request GET"

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    nop

    .line 228
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$900(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip;q=0,deflate;q=0"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v0}, Lcom/quicinc/cne/ICDClient;->access$900(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "WQE:ICD"

    const-string v1, "done"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ex":Ljava/net/ProtocolException;
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 225
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 215
    .end local v0    # "ex":Ljava/net/ProtocolException;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 212
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 205
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 206
    .local v0, "ex":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 207
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 202
    .end local v0    # "ex":Ljava/net/MalformedURLException;
    :catch_4
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 204
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 185
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_0
    const-string v0, "WQE:ICD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure :Bssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$400(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " currentBSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$500(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " passed BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v3}, Lcom/quicinc/cne/ICDClient;->access$600(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "WQE:ICD"

    const-string v2, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v0, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v2, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v0, v2}, Lcom/quicinc/cne/ICDClient;->access$702(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 188
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 526
    const-string v0, "WQE:ICD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icdHttp - start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v2}, Lcom/quicinc/cne/ICDClient;->access$700(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->setIcdHttpClientReq()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->sendIcdHttpClientReq()Ljava/lang/Boolean;

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->parseIcdHttpClientRsp()V

    .line 533
    return-void
.end method
