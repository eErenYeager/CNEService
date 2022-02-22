.class Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CqeThreshold"
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

    .line 739
    iput-object p1, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    .line 740
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    .line 741
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    .line 742
    const-string v0, "CqeThreshold: Putting attributes..."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 743
    move-object v0, p2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 744
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string v1, "units"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 745
    .local v1, "threshUnits":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->unit:Ljava/lang/String;

    .line 746
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->id:Ljava/lang/String;

    .line 747
    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->apid:Ljava/lang/String;

    .line 748
    return-void
.end method

.method static synthetic access$200(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/andsf/Extension$CqeThreshold;

    .line 731
    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->prontoParameterValidation()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/andsf/Extension$CqeThreshold;

    .line 731
    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->addToDatabase()V

    return-void
.end method

.method static synthetic access$400(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/andsf/Extension$CqeThreshold;

    .line 731
    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->romeParameterValidation()I

    move-result v0

    return v0
.end method

.method private addToDatabase()V
    .locals 3

    .line 1374
    const-string v0, "CqeThreshold: adding CQE Thresholds to database."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "Type"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "Value"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "Units"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "id"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string v1, "apid"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->apid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const-string v0, "CqeThreshold: finished"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1385
    return-void
.end method

.method private prontoParameterValidation()I
    .locals 10

    .line 751
    const-string v0, "validating CQE Threshold for Pronto"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 755
    const/16 v0, -0x63

    .line 756
    .local v0, "dropValue":I
    const/16 v1, -0xa

    .line 759
    .local v1, "addValue":I
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v3, "RSSIAddThreshold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x3e8

    const/16 v4, -0xa

    const/16 v5, -0x63

    const/4 v6, 0x1

    const/4 v7, -0x3

    if-eqz v2, :cond_2

    .line 760
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RSSIAddThreshold"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    const-string v2, "Adding DUPLICATE RSSIAddThreshold."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 762
    return v7

    .line 764
    :cond_0
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RSSIAddThreshold"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :try_start_0
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 770
    nop

    .line 771
    if-lt v1, v5, :cond_1

    if-le v1, v4, :cond_2e

    .line 773
    :cond_1
    const-string v2, "RSSIAddThreshold value out of range"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 774
    return v7

    .line 767
    :catch_0
    move-exception v2

    .line 768
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RSSIAddThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 769
    return v7

    .line 777
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "RSSIDropThreshold"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 778
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RSSIDropThreshold"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 779
    const-string v2, "Adding DUPLICATE RSSIDropThreshold."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 780
    return v7

    .line 782
    :cond_3
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RSSIDropThreshold"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :try_start_1
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 788
    nop

    .line 789
    if-lt v0, v5, :cond_4

    if-le v0, v4, :cond_2e

    .line 791
    :cond_4
    const-string v2, "RSSIDropThreshold value out of range"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 792
    return v7

    .line 785
    :catch_1
    move-exception v2

    .line 786
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RSSIDropThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 787
    return v7

    .line 795
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "RSSIModelThreshold"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 796
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RSSIModelThreshold"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 797
    const-string v2, "Adding DUPLICATE RSSIModelThreshold."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 798
    return v7

    .line 800
    :cond_6
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RSSIModelThreshold"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :try_start_2
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 806
    .local v2, "value":I
    nop

    .line 805
    nop

    .line 807
    if-lt v2, v5, :cond_7

    if-le v2, v4, :cond_2e

    .line 809
    :cond_7
    const-string v3, "RSSIModelThreshold value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 810
    return v7

    .line 803
    .end local v2    # "value":I
    :catch_2
    move-exception v2

    .line 804
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RSSIModelThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 805
    return v7

    .line 813
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "RSSIAveragingInterval"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v8, 0xe10

    if-eqz v2, :cond_b

    .line 814
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "RSSIAveragingInterval"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 815
    const-string v2, "Adding DUPLICATE RSSIAveragingInterval."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 816
    return v7

    .line 818
    :cond_9
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "RSSIAveragingInterval"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :try_start_3
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 824
    .local v2, "value":I
    nop

    .line 823
    nop

    .line 825
    if-lt v2, v6, :cond_a

    if-le v2, v8, :cond_2e

    .line 827
    :cond_a
    const-string v3, "RSSIAveragingInterval value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 828
    return v7

    .line 821
    .end local v2    # "value":I
    :catch_3
    move-exception v2

    .line 822
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RSSIAveragingInterval Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 823
    return v7

    .line 831
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v9, "RSSIMacTimerThreshold"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 832
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RSSIMacTimerThreshold"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 833
    const-string v2, "Adding DUPLICATE RSSIMacTimerThreshold."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 834
    return v7

    .line 836
    :cond_c
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RSSIMacTimerThreshold"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :try_start_4
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 842
    .local v2, "value":I
    nop

    .line 841
    nop

    .line 843
    if-lt v2, v5, :cond_d

    if-gt v2, v4, :cond_d

    if-lt v2, v0, :cond_d

    if-le v2, v1, :cond_2e

    .line 845
    :cond_d
    const-string v3, "RSSIMacTimerThreshold value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 846
    return v7

    .line 839
    .end local v2    # "value":I
    :catch_4
    move-exception v2

    .line 840
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RSSIMacTimerThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 841
    return v7

    .line 849
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v4, "CQETimer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 850
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "CQETimer"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 851
    const-string v2, "Adding DUPLICATE CQETimer."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 852
    return v7

    .line 854
    :cond_f
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "CQETimer"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :try_start_5
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 860
    .local v2, "value":I
    nop

    .line 859
    nop

    .line 861
    if-ltz v2, :cond_10

    if-le v2, v8, :cond_2e

    .line 863
    :cond_10
    const-string v3, "CQETimer value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 864
    return v7

    .line 857
    .end local v2    # "value":I
    :catch_5
    move-exception v2

    .line 858
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: CQETimer Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 859
    return v7

    .line 867
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v4, "MACHysteresisTimer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 868
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "MACHysteresisTimer"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 869
    const-string v2, "Adding DUPLICATE MACHysteresisTimer."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 870
    return v7

    .line 872
    :cond_12
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "MACHysteresisTimer"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :try_start_6
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 878
    .local v2, "value":I
    nop

    .line 877
    nop

    .line 879
    const/16 v4, 0xa

    if-lt v2, v4, :cond_13

    if-le v2, v8, :cond_2e

    .line 881
    :cond_13
    const-string v3, "MACHysteresisTimer value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 882
    return v7

    .line 875
    .end local v2    # "value":I
    :catch_6
    move-exception v2

    .line 876
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: MACHysteresisTimer Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 877
    return v7

    .line 885
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_14
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v4, "MACStatsAveragingAlpha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_17

    .line 886
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "MACStatsAveragingAlpha"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 887
    const-string v2, "Adding DUPLICATE MACStatsAveragingAlpha."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 888
    return v7

    .line 890
    :cond_15
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "MACStatsAveragingAlpha"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    :try_start_7
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 896
    .local v2, "floatValue":F
    nop

    .line 895
    nop

    .line 897
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_16

    cmpl-float v4, v2, v5

    if-lez v4, :cond_2e

    .line 899
    :cond_16
    const-string v3, "MACStatsAveragingAlpha value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 900
    return v7

    .line 893
    .end local v2    # "floatValue":F
    :catch_7
    move-exception v2

    .line 894
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: MACStatsAveragingAlpha Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 895
    return v7

    .line 903
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_17
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "FrameCntThreshold"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 904
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "FrameCntThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 905
    const-string v2, "Adding DUPLICATE FrameCntThreshold."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 906
    return v7

    .line 908
    :cond_18
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "FrameCntThreshold"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :try_start_8
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    .line 914
    .local v2, "value":I
    nop

    .line 913
    nop

    .line 915
    if-ltz v2, :cond_19

    if-le v2, v3, :cond_2e

    .line 917
    :cond_19
    const-string v3, "FrameCntThreshold value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 918
    return v7

    .line 911
    .end local v2    # "value":I
    :catch_8
    move-exception v2

    .line 912
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: FrameCntThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 913
    return v7

    .line 921
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1a
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "MACMibThreshold2a"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v8, 0x42c80000    # 100.0f

    if-eqz v2, :cond_1d

    .line 922
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v5, "MACMibThreshold2a"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 923
    const-string v2, "Adding DUPLICATE MACMibThreshold2a."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 924
    return v7

    .line 926
    :cond_1b
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v5, "MACMibThreshold2a"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    :try_start_9
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    .line 932
    .local v2, "floatValue":F
    nop

    .line 931
    nop

    .line 933
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_1c

    cmpl-float v4, v2, v8

    if-lez v4, :cond_2e

    .line 935
    :cond_1c
    const-string v3, "MACMibThreshold value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 936
    return v7

    .line 929
    .end local v2    # "floatValue":F
    :catch_9
    move-exception v2

    .line 930
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: MACMibThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 931
    return v7

    .line 939
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1d
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v9, "MACMibThreshold2b"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 940
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v5, "MACMibThreshold2b"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 941
    const-string v2, "Adding DUPLICATE MACMibThreshold2b."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 942
    return v7

    .line 944
    :cond_1e
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v5, "MACMibThreshold2b"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :try_start_a
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    .line 950
    .local v2, "floatValue":F
    nop

    .line 949
    nop

    .line 951
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_1f

    cmpl-float v4, v2, v8

    if-lez v4, :cond_2e

    .line 953
    :cond_1f
    const-string v3, "MACMibThreshold value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 954
    return v7

    .line 947
    .end local v2    # "floatValue":F
    :catch_a
    move-exception v2

    .line 948
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: MACMibThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 949
    return v7

    .line 957
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_20
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v4, "ColdStartThreshold"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 958
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "ColdStartThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 959
    const-string v2, "Adding DUPLICATE MACMibThreshold2b."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 960
    return v7

    .line 962
    :cond_21
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "ColdStartThreshold"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :try_start_b
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    .line 968
    .local v2, "value":I
    nop

    .line 967
    nop

    .line 969
    if-ltz v2, :cond_22

    if-le v2, v3, :cond_2e

    .line 970
    :cond_22
    const-string v3, "ColdStartThreshold value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 971
    return v7

    .line 965
    .end local v2    # "value":I
    :catch_b
    move-exception v2

    .line 966
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: ColdStartThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 967
    return v7

    .line 975
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_23
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v4, "RetryMetricWeight2a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v2, :cond_26

    .line 976
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RetryMetricWeight2a"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 977
    const-string v2, "Adding DUPLICATE RetryMetricWeight2a."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 978
    return v7

    .line 980
    :cond_24
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RetryMetricWeight2a"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    :try_start_c
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c

    .line 986
    .local v2, "floatValue":F
    nop

    .line 985
    nop

    .line 987
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_25

    cmpl-float v4, v2, v5

    if-lez v4, :cond_2e

    .line 989
    :cond_25
    const-string v3, "RetryMetricWeight value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 990
    return v7

    .line 983
    .end local v2    # "floatValue":F
    :catch_c
    move-exception v2

    .line 984
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RetryMetricWeight Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 985
    return v7

    .line 993
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_26
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "RetryMetricWeight2b"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 994
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RetryMetricWeight2b"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 995
    const-string v2, "Adding DUPLICATE RetryMetricWeight2b."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 996
    return v7

    .line 998
    :cond_27
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "RetryMetricWeight2b"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :try_start_d
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d

    .line 1004
    .local v2, "floatValue":F
    nop

    .line 1003
    nop

    .line 1005
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_28

    cmpl-float v4, v2, v5

    if-lez v4, :cond_2e

    .line 1007
    :cond_28
    const-string v3, "RetryMetricWeight value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1008
    return v7

    .line 1001
    .end local v2    # "floatValue":F
    :catch_d
    move-exception v2

    .line 1002
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RetryMetricWeight Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1003
    return v7

    .line 1011
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_29
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "MultiRetryMetricWeight2a"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1012
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "MultiRetryMetricWeight2a"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1013
    const-string v2, "Adding DUPLICATE MultiRetryMetricWeight2a."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1014
    return v7

    .line 1016
    :cond_2a
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "MultiRetryMetricWeight2a"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    :try_start_e
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_e

    .line 1022
    .local v2, "floatValue":F
    nop

    .line 1021
    nop

    .line 1023
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_2b

    cmpl-float v4, v2, v5

    if-lez v4, :cond_2e

    .line 1025
    :cond_2b
    const-string v3, "MultiRetryMetricWeight value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1026
    return v7

    .line 1019
    .end local v2    # "floatValue":F
    :catch_e
    move-exception v2

    .line 1020
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: MultiRetryMetricWeight Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1021
    return v7

    .line 1029
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2c
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "MultiRetryMetricWeight2b"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1030
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "MultiRetryMetricWeight2b"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1031
    const-string v2, "Adding DUPLICATE MultiRetryMetricWeight2b."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1032
    return v7

    .line 1034
    :cond_2d
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v8, "MultiRetryMetricWeight2b"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    :try_start_f
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_f

    .line 1040
    .local v2, "floatValue":F
    nop

    .line 1039
    nop

    .line 1041
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_2f

    cmpl-float v4, v2, v5

    if-lez v4, :cond_2e

    goto :goto_0

    .line 1051
    .end local v2    # "floatValue":F
    :cond_2e
    return v3

    .line 1043
    .restart local v2    # "floatValue":F
    :cond_2f
    :goto_0
    const-string v3, "MultiRetryMetricWeight value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1044
    return v7

    .line 1037
    .end local v2    # "floatValue":F
    :catch_f
    move-exception v2

    .line 1038
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: MultiRetryMetricWeight Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1039
    return v7

    .line 1048
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_30
    const-string v2, "Unsupported CQE parameter."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1049
    return v7
.end method

.method private romeParameterValidation()I
    .locals 11

    .line 1055
    const-string v0, "validating CQE Threshold for Rome"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1058
    const/16 v0, -0x63

    .line 1059
    .local v0, "dropValue":I
    const/16 v1, -0xa

    .line 1061
    .local v1, "addValue":I
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v3, "RSSIAddThreshold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, -0xa

    const/16 v4, -0x63

    const/4 v5, 0x1

    const/4 v6, -0x3

    if-eqz v2, :cond_2

    .line 1062
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v7, "RSSIAddThreshold"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1063
    const-string v2, "Adding DUPLICATE RSSIAddThreshold."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1064
    return v6

    .line 1066
    :cond_0
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v7, "RSSIAddThreshold"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    :try_start_0
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1072
    nop

    .line 1073
    if-lt v1, v4, :cond_1

    if-le v1, v3, :cond_31

    .line 1075
    :cond_1
    const-string v2, "RSSIAddThreshold value out of range"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1076
    return v6

    .line 1069
    :catch_0
    move-exception v2

    .line 1070
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RSSIAddThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1071
    return v6

    .line 1079
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v7, "RSSIDropThreshold"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1080
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v7, "RSSIDropThreshold"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1081
    const-string v2, "Adding DUPLICATE RSSIDropThreshold."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1082
    return v6

    .line 1084
    :cond_3
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v7, "RSSIDropThreshold"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    :try_start_1
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 1090
    nop

    .line 1091
    if-lt v0, v4, :cond_4

    if-le v0, v3, :cond_31

    .line 1093
    :cond_4
    const-string v2, "RSSIDropThreshold value out of range"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1094
    return v6

    .line 1087
    :catch_1
    move-exception v2

    .line 1088
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RSSIDropThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1089
    return v6

    .line 1097
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v7, "RSSIAveragingInterval"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v7, 0xe10

    if-eqz v2, :cond_8

    .line 1098
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "RSSIAveragingInterval"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1099
    const-string v2, "Adding DUPLICATE RSSIAveragingInterval."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1100
    return v6

    .line 1102
    :cond_6
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "RSSIAveragingInterval"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    :try_start_2
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1108
    .local v2, "value":I
    nop

    .line 1107
    nop

    .line 1109
    if-lt v2, v5, :cond_7

    if-le v2, v7, :cond_31

    .line 1111
    :cond_7
    const-string v3, "RSSIAveragingInterval value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1112
    return v6

    .line 1105
    .end local v2    # "value":I
    :catch_2
    move-exception v2

    .line 1106
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RSSIAveragingInterval Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1107
    return v6

    .line 1115
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "RSSIMacTimerThreshold"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1116
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v7, "RSSIMacTimerThreshold"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1117
    const-string v2, "Adding DUPLICATE RSSIMacTimerThreshold."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1118
    return v6

    .line 1120
    :cond_9
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v7, "RSSIMacTimerThreshold"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    :try_start_3
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1126
    .local v2, "value":I
    nop

    .line 1125
    nop

    .line 1127
    if-lt v2, v4, :cond_a

    if-gt v2, v3, :cond_a

    if-lt v2, v0, :cond_a

    if-le v2, v1, :cond_31

    .line 1129
    :cond_a
    const-string v3, "RSSIMacTimerThreshold value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1130
    return v6

    .line 1123
    .end local v2    # "value":I
    :catch_3
    move-exception v2

    .line 1124
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RSSIMacTimerThreshold Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1125
    return v6

    .line 1133
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v3, "CQETimer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1134
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "CQETimer"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1135
    const-string v2, "Adding DUPLICATE CQETimer."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1136
    return v6

    .line 1138
    :cond_c
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "CQETimer"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    :try_start_4
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1144
    .local v2, "value":I
    nop

    .line 1143
    nop

    .line 1145
    if-ltz v2, :cond_d

    if-le v2, v7, :cond_31

    .line 1147
    :cond_d
    const-string v3, "CQETimer value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1148
    return v6

    .line 1141
    .end local v2    # "value":I
    :catch_4
    move-exception v2

    .line 1142
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: CQETimer Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1143
    return v6

    .line 1151
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v3, "MACHysteresisTimer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_11

    .line 1152
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "MACHysteresisTimer"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1153
    const-string v2, "Adding DUPLICATE MACHysteresisTimer."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1154
    return v6

    .line 1156
    :cond_f
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "MACHysteresisTimer"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :try_start_5
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1162
    .local v2, "value":I
    nop

    .line 1161
    nop

    .line 1163
    if-lt v2, v3, :cond_10

    if-le v2, v7, :cond_31

    .line 1165
    :cond_10
    const-string v3, "MACHysteresisTimer value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1166
    return v6

    .line 1159
    .end local v2    # "value":I
    :catch_5
    move-exception v2

    .line 1160
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: MACHysteresisTimer Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1161
    return v6

    .line 1169
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v4, "MACStatsAveragingAlpha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v2, :cond_14

    .line 1170
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "MACStatsAveragingAlpha"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1171
    const-string v2, "Adding DUPLICATE MACStatsAveragingAlpha."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1172
    return v6

    .line 1174
    :cond_12
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "MACStatsAveragingAlpha"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    :try_start_6
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1180
    .local v2, "floatValue":F
    nop

    .line 1179
    nop

    .line 1181
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_13

    cmpl-float v3, v2, v4

    if-lez v3, :cond_31

    .line 1183
    :cond_13
    const-string v3, "MACStatsAveragingAlpha value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1184
    return v6

    .line 1177
    .end local v2    # "floatValue":F
    :catch_6
    move-exception v2

    .line 1178
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: MACStatsAveragingAlpha Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1179
    return v6

    .line 1187
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_14
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "RMP_THR"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1188
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "RMP_THR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1189
    const-string v2, "Adding DUPLICATE RMP_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1190
    return v6

    .line 1192
    :cond_15
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "RMP_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    :try_start_7
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1198
    .local v2, "floatValue":F
    nop

    .line 1197
    nop

    .line 1199
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_16

    cmpl-float v3, v2, v4

    if-lez v3, :cond_31

    .line 1201
    :cond_16
    const-string v3, "RMP_THR value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1202
    return v6

    .line 1195
    .end local v2    # "floatValue":F
    :catch_7
    move-exception v2

    .line 1196
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RMP_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1197
    return v6

    .line 1205
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_17
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v8, "RMP_CNT_THR"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v8, 0xfde8

    if-eqz v2, :cond_1a

    .line 1206
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "RMP_CNT_THR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1207
    const-string v2, "Adding DUPLICATE RMP_CNT_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1208
    return v6

    .line 1210
    :cond_18
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "RMP_CNT_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    :try_start_8
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1216
    .local v2, "value":I
    nop

    .line 1215
    nop

    .line 1217
    if-ltz v2, :cond_19

    if-le v2, v8, :cond_31

    .line 1219
    :cond_19
    const-string v3, "RMP_CNT_THR value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1220
    return v6

    .line 1213
    .end local v2    # "value":I
    :catch_8
    move-exception v2

    .line 1214
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RMP_CNT_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1215
    return v6

    .line 1223
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1a
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v9, "RX_MCS_THR"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1224
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "RX_MCS_THR"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1225
    const-string v2, "Adding DUPLICATE RX_MCS_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1226
    return v6

    .line 1228
    :cond_1b
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "RX_MCS_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    :try_start_9
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1231
    .local v2, "value":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX_MCS_THR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1235
    nop

    .line 1234
    nop

    .line 1236
    if-ltz v2, :cond_1c

    if-le v2, v3, :cond_31

    .line 1238
    :cond_1c
    return v6

    .line 1232
    .end local v2    # "value":I
    :catch_9
    move-exception v2

    .line 1233
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RX_MCS_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1234
    return v6

    .line 1241
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1d
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v9, "RX_BW_THR"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x3

    if-eqz v2, :cond_20

    .line 1242
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "RX_BW_THR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1243
    const-string v2, "Adding DUPLICATE RX_BW_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1244
    return v6

    .line 1246
    :cond_1e
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "RX_BW_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :try_start_a
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    .line 1252
    .local v2, "value":I
    nop

    .line 1251
    nop

    .line 1253
    if-ltz v2, :cond_1f

    if-le v2, v9, :cond_31

    .line 1255
    :cond_1f
    const-string v3, "RX_BW_THR value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1256
    return v6

    .line 1249
    .end local v2    # "value":I
    :catch_a
    move-exception v2

    .line 1250
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: RX_BW_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1251
    return v6

    .line 1259
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_20
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v10, "TMD_THR"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1260
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TMD_THR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1261
    const-string v2, "Adding DUPLICATE TMD_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1262
    return v6

    .line 1264
    :cond_21
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TMD_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    :try_start_b
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    .line 1270
    .local v2, "floatValue":F
    nop

    .line 1269
    nop

    .line 1271
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_22

    cmpl-float v3, v2, v4

    if-lez v3, :cond_31

    .line 1273
    :cond_22
    const-string v3, "TMD_THR value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1274
    return v6

    .line 1267
    .end local v2    # "floatValue":F
    :catch_b
    move-exception v2

    .line 1268
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: TMD_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1269
    return v6

    .line 1277
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_23
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v10, "TMD_CNT_THR"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1278
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TMD_CNT_THR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1279
    const-string v2, "Adding DUPLICATE TMD_CNT_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1280
    return v6

    .line 1282
    :cond_24
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TMD_CNT_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    :try_start_c
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c

    .line 1288
    .local v2, "value":I
    nop

    .line 1287
    nop

    .line 1289
    if-ltz v2, :cond_25

    if-le v2, v8, :cond_31

    .line 1291
    :cond_25
    const-string v3, "RetryMetricWeight value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1292
    return v6

    .line 1285
    .end local v2    # "value":I
    :catch_c
    move-exception v2

    .line 1286
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: TMD_CNT_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1287
    return v6

    .line 1295
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_26
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v10, "TMR_THR"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1296
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TMR_THR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1297
    const-string v2, "Adding DUPLICATE TMR_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1298
    return v6

    .line 1300
    :cond_27
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TMR_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    :try_start_d
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d

    .line 1306
    .local v2, "floatValue":F
    nop

    .line 1305
    nop

    .line 1307
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_28

    cmpl-float v3, v2, v4

    if-lez v3, :cond_31

    .line 1309
    :cond_28
    const-string v3, "TMR_THR value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1310
    return v6

    .line 1303
    .end local v2    # "floatValue":F
    :catch_d
    move-exception v2

    .line 1304
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: TMR_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1305
    return v6

    .line 1313
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_29
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v4, "TMR_CNT_THR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1314
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TMR_CNT_THR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1315
    const-string v2, "Adding DUPLICATE TMR_CNT_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1316
    return v6

    .line 1318
    :cond_2a
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TMR_CNT_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    :try_start_e
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_e

    .line 1324
    .local v2, "value":I
    nop

    .line 1323
    nop

    .line 1325
    if-ltz v2, :cond_2b

    if-le v2, v8, :cond_31

    .line 1327
    :cond_2b
    const-string v3, "TMR_CNT_THR value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1328
    return v6

    .line 1321
    .end local v2    # "value":I
    :catch_e
    move-exception v2

    .line 1322
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: TMR_CNT_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1323
    return v6

    .line 1331
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2c
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v4, "TX_MCS_THR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1332
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "TX_MCS_THR"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1333
    const-string v2, "Adding DUPLICATE TX_MCS_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1334
    return v6

    .line 1336
    :cond_2d
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v4, "TX_MCS_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    :try_start_f
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_f

    .line 1342
    .local v2, "value":I
    nop

    .line 1341
    nop

    .line 1343
    if-ltz v2, :cond_2e

    if-le v2, v3, :cond_31

    .line 1345
    :cond_2e
    const-string v3, "TX_MCS_THR value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1346
    return v6

    .line 1339
    .end local v2    # "value":I
    :catch_f
    move-exception v2

    .line 1340
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: TX_MCS_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1341
    return v6

    .line 1349
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2f
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string v3, "TX_BW_THR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1350
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TX_BW_THR"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1351
    const-string v2, "Adding DUPLICATE TX_BW_THR."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1352
    return v6

    .line 1354
    :cond_30
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v2, v2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string v3, "TX_BW_THR"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    :try_start_10
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_10

    .line 1360
    .local v2, "value":I
    nop

    .line 1359
    nop

    .line 1361
    if-ltz v2, :cond_32

    if-le v2, v9, :cond_31

    goto :goto_0

    .line 1371
    .end local v2    # "value":I
    :cond_31
    const/16 v2, 0x3e8

    return v2

    .line 1363
    .restart local v2    # "value":I
    :cond_32
    :goto_0
    const-string v3, "TX_BW_THR value out of range"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1364
    return v6

    .line 1357
    .end local v2    # "value":I
    :catch_10
    move-exception v2

    .line 1358
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CQE parameter: TX_BW_THR Number Format Exception"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1359
    return v6

    .line 1368
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_33
    const-string v2, "Unsupported CQE parameter."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1369
    return v6
.end method
