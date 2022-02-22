.class public Lcom/quicinc/cne/andsf/AndsfParser;
.super Ljava/lang/Object;
.source "AndsfParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;,
        Lcom/quicinc/cne/andsf/AndsfParser$Version;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final SUB_TYPE:Ljava/lang/String; = "PLCY:ANDSF"

.field private static final TAG_ANDSF:Ljava/lang/String; = "Andsf"

.field private static final TAG_ROOT:Ljava/lang/String; = "AndsfPolicy"

.field private static final TAG_VERSION:Ljava/lang/String; = "Version"


# instance fields
.field andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

.field andsfNode:Lorg/w3c/dom/Element;

.field mContext:Landroid/content/Context;

.field mDb:Lcom/quicinc/cne/andsf/DbConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    .line 89
    iput-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    .line 95
    iput-object p1, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method public static dlogd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 358
    const-string v0, "PLCY:ANDSF"

    invoke-static {v0, p0}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 362
    const-string v0, "PLCY:ANDSF"

    invoke-static {v0, p0}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method private parseAndsfConfig(Lorg/w3c/dom/Element;)I
    .locals 6
    .param p1, "elem"    # Lorg/w3c/dom/Element;

    .line 288
    iget-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    invoke-static {}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->version:Ljava/lang/String;

    .line 289
    const-string v0, "PLCY:ANDSF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->time:J

    .line 292
    const-string v0, "PLCY:ANDSF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-wide v2, v2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v0, v0, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->data:Landroid/content/ContentValues;

    const-string v1, "Version"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v0, v0, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->data:Landroid/content/ContentValues;

    const-string v1, "Timestamp"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-wide v2, v2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    const-string v0, "ISRP"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 300
    .local v0, "isrpNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 301
    const-string v1, "PLCY:ANDSF"

    const-string v4, "No IRSP nodes in ANDSF file"

    invoke-static {v1, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_0
    move v1, v2

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 305
    new-instance v4, Lcom/quicinc/cne/andsf/IsrpDetails;

    .line 306
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {v4, v5}, Lcom/quicinc/cne/andsf/IsrpDetails;-><init>(Lorg/w3c/dom/Element;)V

    .line 307
    .local v4, "isrpDetails":Lcom/quicinc/cne/andsf/IsrpDetails;
    iget-object v5, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->isrps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v4    # "isrpDetails":Lcom/quicinc/cne/andsf/IsrpDetails;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const-string v1, "Ext"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 313
    .local v1, "extensionNodes":Lorg/w3c/dom/NodeList;
    const/4 v4, -0x3

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v5, v3, :cond_2

    goto :goto_2

    .line 318
    :cond_2
    iget-object v3, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    new-instance v5, Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {v5}, Lcom/quicinc/cne/andsf/Extension;-><init>()V

    iput-object v5, v3, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    .line 319
    iget-object v3, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v3, v3, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    if-nez v3, :cond_3

    .line 320
    const-string v2, "PLCY:ANDSF"

    const-string v3, "Failed to create Extension"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return v4

    .line 323
    :cond_3
    iget-object v3, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v3, v3, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {v3, v2}, Lcom/quicinc/cne/andsf/Extension;->handleExtension(Lorg/w3c/dom/Element;)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 325
    const-string v2, "PLCY:ANDSF"

    const-string v3, "Invalid args when parsing xml file Extension nodes."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return v4

    .line 334
    :cond_4
    const-string v2, "PLCY:ANDSF"

    const-string v3, "Not commiting to DB...deprecated"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/16 v2, 0x3e8

    return v2

    .line 314
    :cond_5
    :goto_2
    const-string v2, "PLCY:ANDSF"

    const-string v3, "No Ext node in ANDSF file"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return v4
.end method

.method private parseFile(Ljava/lang/String;)I
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .line 214
    const/4 v0, -0x3

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 215
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 216
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 218
    .local v3, "doc":Lorg/w3c/dom/Document;
    if-nez v3, :cond_0

    .line 219
    const-string v4, "PLCY:ANDSF"

    const-string v5, "Malformed ANDSF xml file"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v0

    .line 224
    :cond_0
    invoke-direct {p0, v3}, Lcom/quicinc/cne/andsf/AndsfParser;->validatePolicyTree(Lorg/w3c/dom/Document;)I

    move-result v4

    .line 225
    .local v4, "ret":I
    const/16 v5, 0x3e8

    if-eq v5, v4, :cond_1

    .line 226
    return v4

    .line 229
    :cond_1
    const-string v5, "Andsf"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 230
    .local v5, "andsfNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    .line 232
    const/4 v6, 0x0

    move v8, v6

    .local v8, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 234
    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    iput-object v9, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    .line 235
    iget-object v9, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    const-string v10, "Version"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 236
    .local v9, "versionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ne v10, v7, :cond_3

    .line 238
    nop

    .line 239
    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "version":Ljava/lang/String;
    invoke-static {v10}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->matchVersion(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 246
    const-string v6, "PLCY:ANDSF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parsing Andsf node "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", version "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v6, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    invoke-direct {p0, v6}, Lcom/quicinc/cne/andsf/AndsfParser;->parseAndsfConfig(Lorg/w3c/dom/Element;)I

    move-result v6

    return v6

    .line 253
    :cond_2
    const-string v11, "PLCY:ANDSF"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " from Andsf node "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " does not match software version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 253
    invoke-static {v11, v12}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    .end local v10    # "version":Ljava/lang/String;
    :cond_3
    const-string v10, "PLCY:ANDSF"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No/Many version tag from Andsf node "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 266
    .end local v9    # "versionNode":Lorg/w3c/dom/NodeList;
    :cond_4
    const-string v6, "PLCY:ANDSF"

    const-string v7, "No version match from any Andsf node. Configuration not parsed."

    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v0, -0x8

    return v0

    .line 272
    .end local v8    # "i":I
    :cond_5
    const-string v6, "PLCY:ANDSF"

    const-string v7, "No Andsf tag"

    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return v0

    .line 275
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "ret":I
    .end local v5    # "andsfNodes":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PLCY:ANDSF"

    const-string v3, "ANDSF Parser failed"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    return v0
.end method

.method private updateAndsfDb()I
    .locals 4

    .line 342
    :try_start_0
    new-instance v0, Lcom/quicinc/cne/andsf/DbConnection;

    iget-object v1, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/quicinc/cne/andsf/DbConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    .line 343
    iget-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    invoke-virtual {v0}, Lcom/quicinc/cne/andsf/DbConnection;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 345
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    iget-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    invoke-virtual {v1, v0, v2}, Lcom/quicinc/cne/andsf/DbConnection;->commitAndsf(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;)V

    .line 346
    iget-object v1, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    invoke-virtual {v1}, Lcom/quicinc/cne/andsf/DbConnection;->close()V

    .line 347
    iget-object v1, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    const-string v2, "/data/connectivity/"

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/andsf/DbConnection;->copyDatabase(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 352
    const/16 v0, 0x3e8

    return v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PLCY:ANDSF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update ANDSF db failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v1, -0x1

    return v1
.end method

.method private updateDefaultConfigFile(Ljava/lang/String;)V
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;

    .line 123
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 124
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 125
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 126
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    const-string v3, "system/etc/cne/andsfCne.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 127
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 129
    .local v3, "root":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    if-eqz v4, :cond_1

    .line 132
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 133
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 137
    .local v4, "copied":Lorg/w3c/dom/Node;
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 139
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 140
    .local v5, "tf":Ljavax/xml/transform/Transformer;
    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v6, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 141
    .local v6, "ds":Ljavax/xml/transform/dom/DOMSource;
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    const-string v8, "data/connectivity/profile-internet.xml"

    invoke-direct {v7, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    .line 142
    .local v7, "sr":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v5, v6, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 143
    const-string v8, "PLCY:ANDSF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restore "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "data/connectivity/profile-internet.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v4    # "copied":Lorg/w3c/dom/Node;
    .end local v5    # "tf":Ljavax/xml/transform/Transformer;
    .end local v6    # "ds":Ljavax/xml/transform/dom/DOMSource;
    .end local v7    # "sr":Ljavax/xml/transform/stream/StreamResult;
    goto :goto_1

    .line 147
    :cond_1
    const-string v4, "PLCY:ANDSF"

    const-string v5, "andsfNode is null. Not restoring default file"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "root":Lorg/w3c/dom/Element;
    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PLCY:ANDSF"

    const-string v2, "updateDefaultConfigFile failed"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 158
    :catch_1
    move-exception v0

    .line 159
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    const-string v1, "PLCY:ANDSF"

    const-string v2, "TransformerException..."

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    goto :goto_1

    .line 155
    :catch_2
    move-exception v0

    .line 156
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    const-string v1, "PLCY:ANDSF"

    const-string v2, "TransformerConfigurationException..."

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    goto :goto_1

    .line 152
    :catch_3
    move-exception v0

    .line 153
    .local v0, "e":Lorg/xml/sax/SAXException;
    const-string v1, "PLCY:ANDSF"

    const-string v2, "SAXException..."

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v0    # "e":Lorg/xml/sax/SAXException;
    goto :goto_1

    .line 149
    :catch_4
    move-exception v0

    .line 150
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v1, "PLCY:ANDSF"

    const-string v2, "ParserConfigurationException..."

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 164
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    nop

    .line 165
    :goto_2
    return-void
.end method

.method private validatePolicyTree(Lorg/w3c/dom/Document;)I
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .line 173
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 175
    .local v0, "root":Lorg/w3c/dom/Element;
    const/4 v1, -0x3

    if-eqz v0, :cond_2

    const-string v2, "AndsfPolicy"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    const-string v2, "Andsf"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 178
    .local v2, "andsf":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_1

    .line 180
    const-string v3, "Version"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 181
    .local v3, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 182
    const-string v4, "PLCY:ANDSF"

    const-string v5, "There must be only one version node <Version> as a child of ANDSF node"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return v1

    .line 187
    .end local v3    # "list":Lorg/w3c/dom/NodeList;
    :cond_0
    nop

    .line 193
    .end local v2    # "andsf":Lorg/w3c/dom/Element;
    nop

    .line 198
    const/16 v1, 0x3e8

    return v1

    .line 189
    .restart local v2    # "andsf":Lorg/w3c/dom/Element;
    :cond_1
    const-string v3, "PLCY:ANDSF"

    const-string v4, "ANDSF node must be <Andsf> as a child of <AndsfPolicy>"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return v1

    .line 195
    .end local v2    # "andsf":Lorg/w3c/dom/Element;
    :cond_2
    const-string v2, "PLCY:ANDSF"

    const-string v3, "root node must be <AndsfPolicy>"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return v1
.end method


# virtual methods
.method public updateAndsf(Ljava/lang/String;)I
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 103
    const-string v0, "PLCY:ANDSF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting ANDSF parser, version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, -0x1

    .line 106
    .local v0, "retVal":I
    new-instance v1, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    invoke-direct {v1, p0}, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;-><init>(Lcom/quicinc/cne/andsf/AndsfParser;)V

    iput-object v1, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    .line 107
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/AndsfParser;->parseFile(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 108
    const-string v1, "PLCY:ANDSF"

    const-string v2, "Finished parsing ANDSF file"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "data/connectivity/profile-internet.xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/AndsfParser;->updateDefaultConfigFile(Ljava/lang/String;)V

    .line 113
    :cond_0
    return v0
.end method
