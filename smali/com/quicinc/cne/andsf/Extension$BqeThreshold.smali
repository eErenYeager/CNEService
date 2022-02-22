.class Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BqeThreshold"
.end annotation


# instance fields
.field public data:Landroid/content/ContentValues;

.field private radioTech:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/quicinc/cne/andsf/Extension;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/andsf/Extension;)V
    .locals 2
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/Extension;

    .line 252
    iput-object p1, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    .line 253
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "EVDO_0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "EVDO_A"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "EVDO_B"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "EDGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "UMTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "HSPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "HSDPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "GPRS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "EHRPD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string v1, "HSPAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/quicinc/cne/andsf/Extension$BqeThreshold;Lorg/w3c/dom/Node;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    .param p1, "x1"    # Lorg/w3c/dom/Node;

    .line 248
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->parameterValidation(Lorg/w3c/dom/Node;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/quicinc/cne/andsf/Extension$BqeThreshold;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    .param p1, "x1"    # Lorg/w3c/dom/Node;
    .param p2, "x2"    # Ljava/lang/String;

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->addToDatabase(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    return-void
.end method

.method private addToDatabase(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 12
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "id"    # Ljava/lang/String;

    .line 428
    const-string v0, "putting BQE paramters into database"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "Id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 431
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string v1, "Type"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 432
    .local v1, "subRatType":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "typeName":Ljava/lang/String;
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    const-string v4, "SubRAT_Type"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 438
    .local v3, "details":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    move-object v5, v0

    move-object v0, p1

    move p1, v4

    .local v0, "node":Lorg/w3c/dom/Node;
    .local v5, "attrs":Lorg/w3c/dom/NamedNodeMap;
    .local p1, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 439
    invoke-interface {v3, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Threshold"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 441
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 442
    .local v6, "vals":Lorg/w3c/dom/NodeList;
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, "val":Ljava/lang/String;
    iget-object v8, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    const-string v9, "Threshold"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object v8, v0

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 445
    const-string v8, "units"

    invoke-interface {v5, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 446
    .local v8, "threshUnits":Lorg/w3c/dom/Node;
    iget-object v9, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    const-string v10, "Threshold_Units"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .end local v6    # "vals":Lorg/w3c/dom/NodeList;
    .end local v7    # "val":Ljava/lang/String;
    .end local v8    # "threshUnits":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 449
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method private parameterValidation(Lorg/w3c/dom/Node;)I
    .locals 13
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 268
    const-string v0, "validating BQE Thresholds"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 270
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 271
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string v1, "Type"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 272
    .local v1, "subRatType":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "typeName":Ljava/lang/String;
    const/4 v3, -0x3

    if-eqz v2, :cond_1a

    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 282
    :cond_0
    const/4 v4, 0x0

    .line 283
    .local v4, "findThreshold":Z
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 284
    .local v5, "details":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    move v7, v4

    move-object v4, p1

    move p1, v6

    .local v4, "node":Lorg/w3c/dom/Node;
    .local v7, "findThreshold":Z
    .local p1, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge p1, v8, :cond_18

    .line 286
    invoke-interface {v5, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 289
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Threshold"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 290
    const/4 v7, 0x1

    .line 291
    move-object v8, v4

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "units"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 292
    .local v8, "unit":Lorg/w3c/dom/Node;
    if-nez v8, :cond_1

    .line 293
    const-string v6, "BQE parameter: Missing unit tag."

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 294
    return v3

    .line 296
    :cond_1
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 297
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bps"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_2

    .line 302
    :cond_2
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 303
    .local v9, "vals":Lorg/w3c/dom/NodeList;
    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, "valueStr":Ljava/lang/String;
    const-string v11, "CDMA2000"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const v12, 0x989680

    if-nez v11, :cond_14

    const-string v11, "EVDO_0"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    const-string v11, "EVDO_A"

    .line 305
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    const-string v11, "EVDO_B"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_1

    .line 318
    :cond_3
    const-string v11, "EDGE"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 320
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .local v11, "value":I
    nop

    .line 323
    nop

    .line 325
    if-ltz v11, :cond_4

    if-le v11, v12, :cond_17

    .line 326
    :cond_4
    const-string v6, "EDGE value out of range"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 327
    return v3

    .line 321
    .end local v11    # "value":I
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v11, "BQE parameter: EDGE Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 323
    return v3

    .line 330
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v11, "UMTS"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const v12, 0x2faf080

    if-eqz v11, :cond_7

    .line 332
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    .restart local v11    # "value":I
    nop

    .line 335
    nop

    .line 337
    if-ltz v11, :cond_6

    if-le v11, v12, :cond_17

    .line 338
    :cond_6
    const-string v6, "UMTS value out of range"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 339
    return v3

    .line 333
    .end local v11    # "value":I
    :catch_1
    move-exception v6

    .line 334
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "BQE parameter: UMTS Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 335
    return v3

    .line 342
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string v11, "HSPA"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 344
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 348
    .restart local v11    # "value":I
    nop

    .line 347
    nop

    .line 349
    if-ltz v11, :cond_8

    if-le v11, v12, :cond_17

    .line 350
    :cond_8
    const-string v6, "HSPA value out of range"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 351
    return v3

    .line 345
    .end local v11    # "value":I
    :catch_2
    move-exception v6

    .line 346
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "BQE parameter: HSPA Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 347
    return v3

    .line 354
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const-string v11, "HSDPA"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 356
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 360
    .restart local v11    # "value":I
    nop

    .line 359
    nop

    .line 361
    if-ltz v11, :cond_a

    if-le v11, v12, :cond_17

    .line 362
    :cond_a
    const-string v6, "HSDPA value out of range"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 363
    return v3

    .line 357
    .end local v11    # "value":I
    :catch_3
    move-exception v6

    .line 358
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "BQE parameter: HSDPA Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 359
    return v3

    .line 366
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string v11, "GPRS"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 368
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 372
    .restart local v11    # "value":I
    nop

    .line 371
    nop

    .line 373
    if-ltz v11, :cond_c

    const v12, 0x29bf8

    if-le v11, v12, :cond_17

    .line 374
    :cond_c
    const-string v6, "GPRS value out of range"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 375
    return v3

    .line 369
    .end local v11    # "value":I
    :catch_4
    move-exception v6

    .line 370
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "BQE parameter: GPRS Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 371
    return v3

    .line 378
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    const-string v11, "LTE"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 380
    :try_start_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 384
    .restart local v11    # "value":I
    nop

    .line 383
    nop

    .line 385
    if-ltz v11, :cond_e

    const v12, 0x5f5e100

    if-le v11, v12, :cond_17

    .line 386
    :cond_e
    const-string v6, "LTE value out of range"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 387
    return v3

    .line 381
    .end local v11    # "value":I
    :catch_5
    move-exception v6

    .line 382
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "BQE parameter: LTE Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 383
    return v3

    .line 390
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string v11, "EHRPD"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 392
    :try_start_6
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 396
    .restart local v11    # "value":I
    nop

    .line 395
    nop

    .line 397
    if-ltz v11, :cond_10

    const v12, 0x2f4d60

    if-le v11, v12, :cond_17

    .line 398
    :cond_10
    const-string v6, "EHRPD value out of range"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 399
    return v3

    .line 393
    .end local v11    # "value":I
    :catch_6
    move-exception v6

    .line 394
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "BQE parameter: EHRPD Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 395
    return v3

    .line 402
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    const-string v11, "HSPAP"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 404
    :try_start_7
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 408
    .restart local v11    # "value":I
    nop

    .line 407
    nop

    .line 409
    if-ltz v11, :cond_12

    const v12, 0xa037a00

    if-le v11, v12, :cond_17

    .line 410
    :cond_12
    const-string v6, "HSPAP value out of range"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 411
    return v3

    .line 405
    .end local v11    # "value":I
    :catch_7
    move-exception v6

    .line 406
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "BQE parameter: HSPAP Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 407
    return v3

    .line 415
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string v6, "BQE parameter: unsupported bqe radiotechnology."

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 416
    return v3

    .line 307
    :cond_14
    :goto_1
    :try_start_8
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    .line 311
    .restart local v11    # "value":I
    nop

    .line 310
    nop

    .line 312
    if-ltz v11, :cond_15

    if-le v11, v12, :cond_17

    .line 313
    :cond_15
    const-string v6, "CDMA/EVDO value out of range"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 314
    return v3

    .line 308
    .end local v11    # "value":I
    :catch_8
    move-exception v6

    .line 309
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "BQE parameter: CDMA/EVDO Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 310
    return v3

    .line 298
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "vals":Lorg/w3c/dom/NodeList;
    .end local v10    # "valueStr":Ljava/lang/String;
    :cond_16
    :goto_2
    const-string v6, "BQE parameter: missing units value or not bps."

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 299
    return v3

    .line 284
    .end local v8    # "unit":Lorg/w3c/dom/Node;
    :cond_17
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 421
    .end local p1    # "i":I
    :cond_18
    if-nez v7, :cond_19

    .line 422
    const-string p1, "BQE parameters: missing Threshold tag under RadioTechnology."

    invoke-static {p1}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 423
    return v3

    .line 425
    :cond_19
    const/16 p1, 0x3e8

    return p1

    .line 275
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "details":Lorg/w3c/dom/NodeList;
    .end local v7    # "findThreshold":Z
    .local p1, "node":Lorg/w3c/dom/Node;
    :cond_1a
    :goto_3
    const-string v4, "invalid radio technology name."

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 276
    return v3
.end method
