.class Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TqeThreshold"
.end annotation


# instance fields
.field private apid:Ljava/lang/String;

.field public data:Landroid/content/ContentValues;

.field private id:Ljava/lang/String;

.field private nodeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/quicinc/cne/andsf/Extension;

.field private unit:Ljava/lang/String;

.field private valueStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/andsf/Extension;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/Extension;
    .param p2, "thresholdTypeNode"    # Lorg/w3c/dom/Node;
    .param p3, "idNode"    # Lorg/w3c/dom/Node;
    .param p4, "apidNode"    # Lorg/w3c/dom/Node;

    .line 1491
    iput-object p1, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    .line 1492
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    .line 1493
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    .line 1494
    const-string v0, "TqeThreshold: Putting attributes..."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1495
    move-object v0, p2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1496
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string v1, "units"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1497
    .local v1, "threshUnits":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->unit:Ljava/lang/String;

    .line 1498
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->id:Ljava/lang/String;

    .line 1499
    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->apid:Ljava/lang/String;

    .line 1500
    return-void
.end method

.method static synthetic access$500(Lcom/quicinc/cne/andsf/Extension$TqeThreshold;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/andsf/Extension$TqeThreshold;

    .line 1483
    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->parameterValidation()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/quicinc/cne/andsf/Extension$TqeThreshold;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/andsf/Extension$TqeThreshold;

    .line 1483
    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->addToDatabase()V

    return-void
.end method

.method private addToDatabase()V
    .locals 3

    .line 1568
    const-string v0, "TqeThreshold: adding TQE Thresholds to database."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "Type"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "Value"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "Units"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "id"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "apid"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->apid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string v0, "TqeThreshold: finished"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1579
    return-void
.end method

.method private parameterValidation()I
    .locals 6

    .line 1503
    const-string v0, "validating TQE Threshold"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1507
    const/16 v0, -0x63

    .line 1508
    .local v0, "dropValue":I
    const/16 v1, -0xa

    .line 1511
    .local v1, "addValue":I
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    const-string v3, "DGIMThresh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0xffff

    const/4 v4, -0x3

    if-eqz v2, :cond_1

    .line 1513
    :try_start_0
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1517
    nop

    .line 1518
    if-ltz v1, :cond_0

    if-le v1, v3, :cond_7

    .line 1520
    :cond_0
    const-string v2, "DGIMThresh value out of range"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1521
    return v4

    .line 1514
    :catch_0
    move-exception v2

    .line 1515
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "TQE parameter: DGIMThresh Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1516
    return v4

    .line 1524
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    const-string v5, "DBDTputThresh"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1526
    :try_start_1
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 1530
    nop

    .line 1531
    const v2, 0x186a0

    if-lt v1, v2, :cond_2

    const v2, 0x5f5e100

    if-le v1, v2, :cond_7

    .line 1533
    :cond_2
    const-string v2, "DBDTputThresh value out of range"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1534
    return v4

    .line 1527
    :catch_1
    move-exception v2

    .line 1528
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "TQE parameter: DBDTputThresh Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1529
    return v4

    .line 1537
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    const-string v5, "TQETimeWindow"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1539
    :try_start_2
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v2

    .line 1543
    nop

    .line 1544
    if-ltz v1, :cond_4

    if-le v1, v3, :cond_7

    .line 1546
    :cond_4
    const-string v2, "TQETimeWindow value out of range"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1547
    return v4

    .line 1540
    :catch_2
    move-exception v2

    .line 1541
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "TQE parameter: TQETimeWindow Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1542
    return v4

    .line 1550
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    const-string v3, "RatioThresh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1552
    :try_start_3
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1556
    .local v2, "floatValue":F
    nop

    .line 1555
    nop

    .line 1557
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-lez v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_7

    .line 1559
    :cond_6
    const-string v3, "RatioThresh value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1560
    return v4

    .line 1553
    .end local v2    # "floatValue":F
    :catch_3
    move-exception v2

    .line 1554
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "TQE parameter: RatioThresh Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1555
    return v4

    .line 1564
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const/16 v2, 0x3e8

    return v2
.end method
