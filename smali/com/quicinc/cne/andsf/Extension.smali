.class public Lcom/quicinc/cne/andsf/Extension;
.super Lcom/quicinc/cne/andsf/AndsfNodeSet;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/andsf/Extension$TqeThreshold;,
        Lcom/quicinc/cne/andsf/Extension$CqeThreshold;,
        Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    }
.end annotation


# static fields
.field static final DEFAULT_RAT_WLAN_CHIPSET_OEM:Ljava/lang/String; = "WCN"

.field static final MAX_NUMBER_APIDS:I = 0x80

.field static final MAX_NUMBER_BQE_THRESHOLDS:I = 0x2

.field static final MAX_NUMBER_ICD_CONFIG_SET:I = 0x1


# instance fields
.field authApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field bqeApIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field bqeThresholds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/quicinc/cne/andsf/Extension$BqeThreshold;",
            ">;"
        }
    .end annotation
.end field

.field cqeThresholdTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field cqeThresholds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/quicinc/cne/andsf/Extension$CqeThreshold;",
            ">;"
        }
    .end annotation
.end field

.field icdApIdSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field icdConfigSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field productId:Ljava/lang/String;

.field tqeThresholds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/quicinc/cne/andsf/Extension$TqeThreshold;",
            ">;"
        }
    .end annotation
.end field

.field wlanChipsetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .line 47
    invoke-direct {p0}, Lcom/quicinc/cne/andsf/AndsfNodeSet;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->bqeThresholds:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->bqeApIds:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->icdConfigSet:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->icdApIdSet:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholds:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->tqeThresholds:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->authApps:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    .line 48
    const-string v1, "ro.board.platform"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "productName":Ljava/lang/String;
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    const-string v3, "apq8084"

    const-string v4, "Rome"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    const-string v3, "msm8994"

    const-string v4, "Rome"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    const-string v3, "msm8992"

    const-string v4, "Rome"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    const-string v3, "msm8996"

    const-string v4, "Rome"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v2, "persist.cne.rat.wlan.chip.oem"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "wlanChipOem":Ljava/lang/String;
    const/4 v2, 0x0

    .line 56
    .local v2, "isWlanChipsetNonQc":Z
    if-eqz v0, :cond_0

    .line 57
    const/4 v2, 0x1

    .line 60
    :cond_0
    if-eqz v2, :cond_1

    .line 61
    const-string v3, "Pronto"

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_1
    if-eqz v1, :cond_2

    .line 65
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    .line 69
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    const-string v4, "Rome"

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v3, v4, :cond_3

    .line 70
    const-string v3, "Pronto"

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    .line 71
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x10

    invoke-direct {v3, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    goto :goto_1

    .line 75
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x11

    invoke-direct {v3, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    .line 78
    :goto_1
    return-void
.end method

.method private handleBQEExtension(Lorg/w3c/dom/Element;)I
    .locals 22
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    .line 95
    move-object/from16 v1, p1

    const-string v2, "BQEExtension: Handling InterfacManager "

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 97
    const-string v2, "InterfaceManager"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 99
    .local v2, "wqe":Lorg/w3c/dom/NodeList;
    const-string v3, "BQE_Disabled"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 100
    .local v3, "bqeDisabled":Lorg/w3c/dom/Node;
    const-string v5, "ICD_Disabled"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 101
    .local v5, "icdDisabled":Lorg/w3c/dom/Node;
    const-string v6, "BQEExtension: checking BQE_Disabled ICD_Disabled tags"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 103
    const/4 v6, -0x3

    if-eqz v3, :cond_16

    if-nez v5, :cond_0

    .line 104
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move v3, v6

    goto/16 :goto_a

    .line 108
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "valBqe":Ljava/lang/String;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "valIcd":Ljava/lang/String;
    if-eqz v7, :cond_15

    if-nez v8, :cond_1

    .line 113
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    goto/16 :goto_9

    .line 117
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BQEExtension: BQE_Disabled "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ICD_Disabled "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 119
    const-string v9, "true"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "false"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v9, "true"

    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "false"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 125
    :cond_3
    const-string v4, "BQEExtension: BQE_Disabled or ICD_Disabled value is not true or false"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 127
    return v6

    .line 122
    :cond_4
    :goto_0
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/quicinc/cne/andsf/Extension;->inspectChildren(Lorg/w3c/dom/Node;)V

    .line 130
    const-string v9, "BQEExtension: Handling Authentication"

    invoke-static {v9}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 131
    const-string v9, "Authentication"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 132
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/quicinc/cne/andsf/Extension;->inspectChildren(Lorg/w3c/dom/Node;)V

    .line 134
    const-string v9, "BQEExtension: Handling BQE_Thresholds"

    invoke-static {v9}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 135
    const-string v9, "BQE_Thresholds"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 136
    .local v9, "thresholds":Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .line 137
    .local v10, "isDefaultSet":Z
    if-nez v9, :cond_5

    .line 138
    const-string v4, "BQEExtension: missing BQE_Thresholds tag"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 139
    return v6

    .line 141
    :cond_5
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_6

    .line 142
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BQEExtension: Num bqe threshold: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " exceeds max, using only first "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 147
    :cond_6
    move v11, v10

    move v10, v4

    .local v10, "i":I
    .local v11, "isDefaultSet":Z
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v10, v13, :cond_13

    .line 148
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    .line 149
    .local v13, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string v14, "Id"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 150
    .local v14, "id":Lorg/w3c/dom/Node;
    const-string v15, "0"

    .line 151
    .local v15, "idVal":Ljava/lang/String;
    if-eqz v14, :cond_11

    .line 152
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 161
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lorg/w3c/dom/Element;

    const-string v6, "apIds"

    .line 162
    invoke-interface {v12, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 163
    .local v6, "apIds":Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .line 166
    .local v12, "apIdValue":Ljava/lang/String;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_c

    .line 167
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    move-object/from16 v17, v2

    const-string v2, "Type"

    .line 168
    .end local v2    # "wqe":Lorg/w3c/dom/NodeList;
    .local v17, "wqe":Lorg/w3c/dom/NodeList;
    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_b

    const-string v4, "SSID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 170
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    goto/16 :goto_4

    .line 177
    :cond_7
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v18, v2

    const-string v2, "apId"

    .line 178
    .end local v2    # "type":Ljava/lang/String;
    .local v18, "type":Ljava/lang/String;
    invoke-interface {v4, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 179
    .local v2, "apIdNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move-object/from16 v19, v3

    const/16 v3, 0x80

    .end local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .local v19, "bqeDisabled":Lorg/w3c/dom/Node;
    if-le v4, v3, :cond_8

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BQEExtension: Num apIds: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exceeds max, using only first "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 183
    :cond_8
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    move-object/from16 v20, v5

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .end local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    .local v20, "icdDisabled":Lorg/w3c/dom/Node;
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 184
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 185
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 186
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v3, "data":Landroid/content/ContentValues;
    const-string v5, "Id"

    invoke-virtual {v3, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v5, "apId"

    invoke-virtual {v3, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v5, v0, Lcom/quicinc/cne/andsf/Extension;->bqeApIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v3    # "data":Landroid/content/ContentValues;
    goto :goto_3

    .line 191
    :cond_9
    const-string v3, "BQEExtension: ignoring this node apIdVal is null or empty"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 183
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v20

    const/16 v3, 0x80

    goto :goto_2

    .line 195
    .end local v2    # "apIdNodeList":Lorg/w3c/dom/NodeList;
    .end local v4    # "j":I
    .end local v18    # "type":Ljava/lang/String;
    :cond_a
    goto :goto_5

    .line 170
    .end local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    .local v2, "type":Ljava/lang/String;
    .local v3, "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    .restart local v18    # "type":Ljava/lang/String;
    .restart local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    :goto_4
    const-string v2, "BQEExtension: Attribute Type in apIds is null or not SSID ignoring this Node"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 172
    goto/16 :goto_7

    .line 196
    .end local v17    # "wqe":Lorg/w3c/dom/NodeList;
    .end local v18    # "type":Ljava/lang/String;
    .end local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    .local v2, "wqe":Lorg/w3c/dom/NodeList;
    .restart local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    :cond_c
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    .end local v2    # "wqe":Lorg/w3c/dom/NodeList;
    .end local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    .restart local v17    # "wqe":Lorg/w3c/dom/NodeList;
    .restart local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    if-nez v11, :cond_10

    .line 197
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v2, "data":Landroid/content/ContentValues;
    const-string v3, "Id"

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v3, v0, Lcom/quicinc/cne/andsf/Extension;->bqeApIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const/4 v11, 0x1

    .line 201
    .end local v2    # "data":Landroid/content/ContentValues;
    nop

    .line 210
    :goto_5
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "RadioTechnology"

    .line 211
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 212
    .local v2, "subRats":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_d

    .line 213
    const-string v3, "BQEExtension: missing RadioTechnology tags."

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 214
    const/4 v3, -0x3

    return v3

    .line 216
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BQEExtension: RadioTechnology getLength ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 217
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_e

    .line 218
    const-string v3, "BQE Extension: Total number of radio technology mismatches."

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 219
    const/4 v3, -0x3

    return v3

    .line 221
    :cond_e
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_6
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_12

    .line 223
    new-instance v4, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;

    invoke-direct {v4, v0}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;-><init>(Lcom/quicinc/cne/andsf/Extension;)V

    .line 224
    .local v4, "bt":Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    iget-object v5, v0, Lcom/quicinc/cne/andsf/Extension;->bqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->access$000(Lcom/quicinc/cne/andsf/Extension$BqeThreshold;Lorg/w3c/dom/Node;)I

    move-result v5

    move-object/from16 v21, v6

    const/4 v6, -0x3

    if-ne v5, v6, :cond_f

    .line 226
    .end local v6    # "apIds":Lorg/w3c/dom/NodeList;
    .local v21, "apIds":Lorg/w3c/dom/NodeList;
    const-string v5, "BQEExtension: BQE parameter validation failed."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 227
    return v6

    .line 229
    :cond_f
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v4, v5, v15}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->access$100(Lcom/quicinc/cne/andsf/Extension$BqeThreshold;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 221
    .end local v4    # "bt":Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v21

    goto :goto_6

    .line 202
    .end local v2    # "subRats":Lorg/w3c/dom/NodeList;
    .end local v3    # "k":I
    .end local v21    # "apIds":Lorg/w3c/dom/NodeList;
    .restart local v6    # "apIds":Lorg/w3c/dom/NodeList;
    :cond_10
    move-object/from16 v21, v6

    .end local v6    # "apIds":Lorg/w3c/dom/NodeList;
    .restart local v21    # "apIds":Lorg/w3c/dom/NodeList;
    const-string v2, "BQEExtension: Multiple default nodes not allowed ignoring this Node"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 204
    goto :goto_7

    .line 155
    .end local v12    # "apIdValue":Ljava/lang/String;
    .end local v17    # "wqe":Lorg/w3c/dom/NodeList;
    .end local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    .end local v21    # "apIds":Lorg/w3c/dom/NodeList;
    .local v2, "wqe":Lorg/w3c/dom/NodeList;
    .local v3, "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    :cond_11
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    .end local v2    # "wqe":Lorg/w3c/dom/NodeList;
    .end local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    .restart local v17    # "wqe":Lorg/w3c/dom/NodeList;
    .restart local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    const-string v2, "BQEExtension: Attribute Id in BQE_Thresholds not defined ignoring this Node"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 157
    nop

    .line 147
    .end local v13    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v14    # "id":Lorg/w3c/dom/Node;
    .end local v15    # "idVal":Ljava/lang/String;
    :cond_12
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    const/4 v4, 0x0

    const/4 v6, -0x3

    const/4 v12, 0x2

    goto/16 :goto_1

    .line 235
    .end local v10    # "i":I
    .end local v17    # "wqe":Lorg/w3c/dom/NodeList;
    .end local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    .restart local v2    # "wqe":Lorg/w3c/dom/NodeList;
    .restart local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    .end local v2    # "wqe":Lorg/w3c/dom/NodeList;
    .end local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    .restart local v17    # "wqe":Lorg/w3c/dom/NodeList;
    .restart local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    const-string v2, "AuthApps"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 236
    .local v2, "authAppNode":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const-string v5, "Appname"

    .line 237
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 238
    .local v3, "authAppNodeList":Lorg/w3c/dom/NodeList;
    nop

    .local v4, "i":I
    :goto_8
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_14

    .line 239
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v5, "data":Landroid/content/ContentValues;
    const-string v6, "Appname"

    .line 241
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 240
    invoke-virtual {v5, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v6, v0, Lcom/quicinc/cne/andsf/Extension;->authApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v5    # "data":Landroid/content/ContentValues;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 245
    .end local v4    # "i":I
    :cond_14
    const/16 v4, 0x3e8

    return v4

    .line 113
    .end local v9    # "thresholds":Lorg/w3c/dom/NodeList;
    .end local v11    # "isDefaultSet":Z
    .end local v17    # "wqe":Lorg/w3c/dom/NodeList;
    .end local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    .local v2, "wqe":Lorg/w3c/dom/NodeList;
    .local v3, "bqeDisabled":Lorg/w3c/dom/Node;
    .local v5, "icdDisabled":Lorg/w3c/dom/Node;
    :cond_15
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    .end local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    .restart local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    :goto_9
    const-string v3, "BQEExtension: missing BQE_Disabled or ICD_Disabled value"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 114
    const/4 v3, -0x3

    return v3

    .line 104
    .end local v7    # "valBqe":Ljava/lang/String;
    .end local v8    # "valIcd":Ljava/lang/String;
    .end local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    .restart local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    :cond_16
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move v3, v6

    .end local v3    # "bqeDisabled":Lorg/w3c/dom/Node;
    .end local v5    # "icdDisabled":Lorg/w3c/dom/Node;
    .restart local v19    # "bqeDisabled":Lorg/w3c/dom/Node;
    .restart local v20    # "icdDisabled":Lorg/w3c/dom/Node;
    :goto_a
    const-string v4, "BQEExtension: No BQE_Disabled or ICD_Disabled tag found."

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 105
    return v3
.end method

.method private handleCQEExtension(Lorg/w3c/dom/Element;)I
    .locals 17
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    .line 536
    const-string v1, "CQEExtension: Handling CQE extension"

    invoke-static {v1}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 537
    const-string v1, "CQE"

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 538
    .local v1, "cqeTag":Lorg/w3c/dom/NodeList;
    const/4 v3, -0x3

    if-nez v1, :cond_0

    .line 539
    const-string v4, "CQEExtension: missing CQE tag"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 540
    return v3

    .line 542
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CQEExtension: CQE tag entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 544
    const/4 v4, 0x0

    move v5, v4

    .local v5, "index":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 545
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_1

    .line 546
    const-string v6, "CQEExtension: missing items under current CQE tag."

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 547
    goto :goto_1

    .line 549
    :cond_1
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 550
    .local v6, "attrs":Lorg/w3c/dom/NamedNodeMap;
    if-nez v6, :cond_2

    .line 551
    const-string v7, "CQEExtension: no attributes found for current CQE tag"

    invoke-static {v7}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 552
    goto :goto_1

    .line 554
    :cond_2
    const-string v7, "prodId"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 555
    .local v7, "prodId":Lorg/w3c/dom/Node;
    if-nez v7, :cond_3

    .line 556
    goto :goto_1

    .line 558
    :cond_3
    iget-object v8, v0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 559
    goto :goto_2

    .line 544
    .end local v6    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "prodId":Lorg/w3c/dom/Node;
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 562
    :cond_5
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 563
    const-string v4, "CQEExtension: No matching CQE tag found"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 564
    return v3

    .line 566
    :cond_6
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v7, "CQE_Thresholds"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 567
    .local v6, "thresholds":Lorg/w3c/dom/NodeList;
    if-nez v6, :cond_7

    .line 568
    const-string v4, "CQEExtension: missing CQE_Thresholds tag, using default."

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 569
    return v3

    .line 571
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CQEExtension: thresholds length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 572
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_8

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CQEExtension: Number of CQE_Thresholds elements "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is greater than 2"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 575
    return v3

    .line 577
    :cond_8
    move v7, v4

    .local v7, "i":I
    :goto_3
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_14

    .line 581
    iget-object v8, v0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 583
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CQEExtension: Processing threshold item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 584
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_9

    .line 585
    const-string v4, "CQEExtension: missing items under CQE_Thresholds tag."

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 586
    return v3

    .line 588
    :cond_9
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 589
    .local v8, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string v9, "Id"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 590
    .local v9, "id":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x80

    if-le v10, v11, :cond_a

    .line 591
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CQEExtension:  Id value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is greater than 128"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 591
    invoke-static {v10}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 593
    goto/16 :goto_7

    .line 595
    :cond_a
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    const-string v12, "apIds"

    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 596
    .local v10, "apids":Lorg/w3c/dom/NodeList;
    if-nez v10, :cond_b

    .line 597
    const-string v4, "CQEExtension: missing tag apIds under CQE_Thresholds"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 598
    return v3

    .line 600
    :cond_b
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-nez v12, :cond_c

    .line 601
    const-string v11, "CQEExtension: Handling cqe thresholds for default apid"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 602
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v0, v11, v9, v12}, Lcom/quicinc/cne/andsf/Extension;->handleCqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v11

    if-ne v11, v3, :cond_11

    .line 603
    return v3

    .line 608
    :cond_c
    invoke-interface {v10, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string v13, "Type"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 609
    .local v12, "type":Ljava/lang/String;
    const-string v13, "SSID"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 611
    invoke-interface {v10, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    const-string v14, "apId"

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 612
    .local v13, "apid":Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-le v14, v11, :cond_d

    .line 614
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CQEExtension: Apid length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " exceeds max, handling first "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 614
    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 617
    :cond_d
    move v14, v4

    .local v14, "j":I
    :goto_4
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v15

    if-ge v14, v15, :cond_f

    .line 618
    iget-object v15, v0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 619
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CQEExtension: Handling cqe thresholds for apid "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-interface {v13, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 619
    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 621
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v13, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-direct {v0, v4, v9, v15}, Lcom/quicinc/cne/andsf/Extension;->handleCqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v4

    if-ne v4, v3, :cond_e

    .line 623
    return v3

    .line 617
    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_4

    .line 626
    .end local v13    # "apid":Lorg/w3c/dom/NodeList;
    .end local v14    # "j":I
    :cond_f
    goto :goto_5

    .line 629
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CQEExtension: Apid type "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is not supported"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 633
    .end local v12    # "type":Ljava/lang/String;
    :cond_11
    :goto_5
    const/4 v4, 0x0

    .line 634
    .local v4, "totalTags":I
    const-string v11, "Rome"

    iget-object v12, v0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 635
    const/16 v4, 0x11

    goto :goto_6

    .line 638
    :cond_12
    const/16 v4, 0x10

    .line 640
    :goto_6
    iget-object v11, v0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-eq v11, v4, :cond_13

    .line 641
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing at least one CQE parameter tag. count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    .line 642
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 641
    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 643
    return v3

    .line 577
    .end local v4    # "totalTags":I
    .end local v8    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "id":Lorg/w3c/dom/Node;
    .end local v10    # "apids":Lorg/w3c/dom/NodeList;
    :cond_13
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 646
    .end local v7    # "i":I
    :cond_14
    const/16 v3, 0x3e8

    return v3
.end method

.method private handleCqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I
    .locals 6
    .param p1, "thresholdNode"    # Lorg/w3c/dom/Node;
    .param p2, "idNode"    # Lorg/w3c/dom/Node;
    .param p3, "apidNode"    # Lorg/w3c/dom/Node;

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCqeThresholds: thresholdNode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 653
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 654
    .local v0, "details":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CQE Thresholds details length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    const-string v2, "Pronto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x3

    if-eqz v1, :cond_3

    .line 656
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 657
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 658
    .local v2, "thresholdTypeNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSSIAddThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 659
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSSIDropThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 660
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSSIModelThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 661
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSSIAveragingInterval"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 662
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSSIMacTimerThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 663
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CQETimer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 664
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MACHysteresisTimer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 665
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MACStatsAveragingAlpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 666
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FrameCntThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 667
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ColdStartThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 668
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MACMibThreshold2a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 669
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MACMibThreshold2b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 670
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RetryMetricWeight2a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 671
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RetryMetricWeight2b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 672
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MultiRetryMetricWeight2a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 673
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MultiRetryMetricWeight2b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 676
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding new CqeThreshold item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 676
    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 679
    new-instance v4, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;

    invoke-direct {v4, p0, v2, p2, p3}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;-><init>(Lcom/quicinc/cne/andsf/Extension;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 680
    .local v4, "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-static {v4}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->access$200(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 682
    const-string v5, "CQE parameter validation failed."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 683
    return v3

    .line 685
    :cond_1
    invoke-static {v4}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->access$300(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)V

    .line 656
    .end local v2    # "thresholdTypeNode":Lorg/w3c/dom/Node;
    .end local v4    # "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .line 689
    .end local v2    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    const-string v4, "Rome"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 690
    nop

    .restart local v2    # "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 691
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 692
    .local v2, "thresholdTypeNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSSIAddThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 693
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSSIDropThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 694
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSSIAveragingInterval"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 695
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSSIMacTimerThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 696
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CQETimer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 697
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MACHysteresisTimer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 698
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MACStatsAveragingAlpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 699
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RMP_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 700
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RMP_CNT_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 701
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RX_MCS_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 702
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RX_BW_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 703
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMD_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 704
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMD_CNT_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 705
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMR_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 706
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMR_CNT_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 707
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TX_MCS_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 708
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TX_BW_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 711
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding new CqeThreshold item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 711
    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 713
    new-instance v4, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;

    invoke-direct {v4, p0, v2, p2, p3}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;-><init>(Lcom/quicinc/cne/andsf/Extension;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 714
    .restart local v4    # "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-static {v4}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->access$400(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)I

    move-result v5

    if-ne v5, v3, :cond_5

    .line 716
    const-string v5, "CQE parameter validation failed."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 717
    return v3

    .line 719
    :cond_5
    invoke-static {v4}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->access$300(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)V

    .line 690
    .end local v2    # "thresholdTypeNode":Lorg/w3c/dom/Node;
    .end local v4    # "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    :cond_6
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto/16 :goto_1

    .line 728
    .end local v2    # "i":I
    :cond_7
    const/16 v1, 0x3e8

    return v1

    .line 724
    :cond_8
    const-string v1, "Unknown productId"

    invoke-static {v1}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 725
    return v3
.end method

.method private handleICDExtension(Lorg/w3c/dom/Element;)I
    .locals 17
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    .line 454
    const-string v1, "Handling ICD"

    invoke-static {v1}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, "isIcdDefaultSet":Z
    const/4 v2, 0x0

    .line 457
    .local v2, "configTypeVal":Ljava/lang/String;
    const-string v3, "ICD"

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 458
    .local v3, "icd":Lorg/w3c/dom/NodeList;
    const/4 v5, -0x3

    if-nez v3, :cond_0

    .line 459
    const-string v6, "missing icd tag. using default."

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 460
    return v5

    .line 462
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 463
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Num icd tags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " exceeds max ICD tags allowed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 465
    return v5

    .line 467
    :cond_1
    const/4 v6, 0x0

    move v8, v1

    move v1, v6

    .local v1, "i":I
    .local v8, "isIcdDefaultSet":Z
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v1, v9, :cond_c

    .line 468
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_2

    .line 469
    const-string v6, "missing items under icd tag."

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 470
    return v5

    .line 472
    :cond_2
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 473
    .local v9, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "config-type"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 474
    .local v10, "configType":Lorg/w3c/dom/Node;
    if-eqz v10, :cond_b

    .line 475
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 476
    const-string v11, "disabled"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "enabled"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 477
    const-string v6, "Value for attribute config-type in ICD is not correct, setting to default"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 479
    return v5

    .line 486
    :cond_3
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    const-string v12, "apIds"

    .line 487
    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 488
    .local v11, "icdApIds":Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .line 489
    .local v12, "icdApIdValue":Ljava/lang/String;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_9

    .line 490
    invoke-interface {v11, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string v14, "Type"

    .line 491
    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 492
    .local v13, "icdApiType":Ljava/lang/String;
    if-eqz v13, :cond_8

    const-string v14, "SSID"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto/16 :goto_3

    .line 498
    :cond_4
    invoke-interface {v11, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string v15, "apId"

    .line 499
    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 500
    .local v14, "icdApIdNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    const/16 v7, 0x80

    if-le v15, v7, :cond_5

    .line 501
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Num apIds: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " exceeds max, using only first "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 505
    :cond_5
    move v5, v6

    .local v5, "j":I
    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v15

    if-ge v5, v15, :cond_7

    .line 506
    invoke-interface {v14, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    invoke-interface {v15, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 507
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_6

    .line 508
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v15, "data":Landroid/content/ContentValues;
    const-string v6, "apId"

    invoke-virtual {v15, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v6, v0, Lcom/quicinc/cne/andsf/Extension;->icdApIdSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v15    # "data":Landroid/content/ContentValues;
    goto :goto_2

    .line 512
    :cond_6
    const-string v6, "ignoring this node apIdVal is null or empty"

    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 505
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_1

    .line 516
    .end local v5    # "j":I
    .end local v13    # "icdApiType":Ljava/lang/String;
    .end local v14    # "icdApIdNodeList":Lorg/w3c/dom/NodeList;
    :cond_7
    goto :goto_4

    .line 493
    .restart local v13    # "icdApiType":Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v5, "Attribute Type in ICD apIds is null or not SSID, reverting to default"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 495
    const/4 v5, -0x3

    return v5

    .line 517
    .end local v13    # "icdApiType":Ljava/lang/String;
    :cond_9
    if-nez v8, :cond_a

    .line 518
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 519
    .local v5, "data":Landroid/content/ContentValues;
    const-string v6, "apId"

    invoke-virtual {v5, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v6, v0, Lcom/quicinc/cne/andsf/Extension;->icdApIdSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const/4 v5, 0x1

    .line 522
    .end local v8    # "isIcdDefaultSet":Z
    .local v5, "isIcdDefaultSet":Z
    nop

    .line 467
    move v8, v5

    goto :goto_4

    .line 523
    .end local v5    # "isIcdDefaultSet":Z
    .restart local v8    # "isIcdDefaultSet":Z
    :cond_a
    const-string v5, "Multiple default nodes not allowed  ignoring this Node"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 525
    nop

    .line 467
    .end local v9    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "configType":Lorg/w3c/dom/Node;
    .end local v11    # "icdApIds":Lorg/w3c/dom/NodeList;
    .end local v12    # "icdApIdValue":Ljava/lang/String;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 483
    .restart local v9    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v10    # "configType":Lorg/w3c/dom/Node;
    :cond_b
    const-string v5, "Attribute config-type in ICD not defined, setting to default"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 484
    const/4 v5, -0x3

    return v5

    .line 529
    .end local v1    # "i":I
    .end local v9    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "configType":Lorg/w3c/dom/Node;
    :cond_c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 530
    .local v1, "config_set":Landroid/content/ContentValues;
    const-string v5, "config_type"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v5, v0, Lcom/quicinc/cne/andsf/Extension;->icdConfigSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    const/16 v5, 0x3e8

    return v5
.end method

.method private handleTQEExtension(Lorg/w3c/dom/Element;)I
    .locals 13
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    .line 1389
    const-string v0, "TQEExtension: Handling TQE extension"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1390
    const-string v0, "TQE_Thresholds"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1391
    .local v0, "thresholds":Lorg/w3c/dom/NodeList;
    const/4 v1, -0x3

    if-nez v0, :cond_0

    .line 1392
    const-string v2, "TQEExtension: missing TQE_Thresholds tag, using default."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1393
    return v1

    .line 1395
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TQEExtension: thresholds length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1396
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 1397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TQEExtension: Number of TQE_Thresholds elements "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is greater than 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1397
    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1399
    return v1

    .line 1401
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 1402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TQEExtension: Processing threshold item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1403
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1404
    const-string v2, "TQEExtension: missing items under TQE_Thresholds tag."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1405
    return v1

    .line 1407
    :cond_2
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 1408
    .local v4, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string v5, "Id"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 1409
    .local v5, "id":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x80

    if-le v6, v7, :cond_3

    .line 1410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TQEExtension:  Id value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is greater than 128"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1410
    invoke-static {v6}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1412
    goto/16 :goto_2

    .line 1414
    :cond_3
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v8, "apIds"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1415
    .local v6, "apids":Lorg/w3c/dom/NodeList;
    if-nez v6, :cond_4

    .line 1416
    const-string v2, "TQEExtension: missing tag apIds under TQE_Thresholds"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1417
    return v1

    .line 1419
    :cond_4
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-nez v8, :cond_5

    .line 1420
    const-string v7, "TQEExtension: Handling tqe thresholds for default apid"

    invoke-static {v7}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1421
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v5, v8}, Lcom/quicinc/cne/andsf/Extension;->handleTqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v7

    if-ne v7, v1, :cond_a

    .line 1422
    return v1

    .line 1427
    :cond_5
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "Type"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 1428
    .local v8, "type":Ljava/lang/String;
    const-string v9, "SSID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1430
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    const-string v10, "apId"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1431
    .local v9, "apid":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-le v10, v7, :cond_6

    .line 1433
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TQEExtension: Apid length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " exceeds max, handling first "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1433
    invoke-static {v10}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1436
    :cond_6
    move v10, v2

    .local v10, "j":I
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 1437
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TQEExtension: Handling tqe thresholds for apid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1437
    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1439
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-direct {p0, v11, v5, v12}, Lcom/quicinc/cne/andsf/Extension;->handleTqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v11

    if-ne v11, v1, :cond_7

    .line 1441
    return v1

    .line 1436
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1444
    .end local v9    # "apid":Lorg/w3c/dom/NodeList;
    .end local v10    # "j":I
    :cond_8
    goto :goto_2

    .line 1447
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TQEExtension: Apid type "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not supported"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1401
    .end local v4    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "id":Lorg/w3c/dom/Node;
    .end local v6    # "apids":Lorg/w3c/dom/NodeList;
    .end local v8    # "type":Ljava/lang/String;
    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1451
    .end local v3    # "i":I
    :cond_b
    const/16 v1, 0x3e8

    return v1
.end method

.method private handleTqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I
    .locals 6
    .param p1, "thresholdNode"    # Lorg/w3c/dom/Node;
    .param p2, "idNode"    # Lorg/w3c/dom/Node;
    .param p3, "apidNode"    # Lorg/w3c/dom/Node;

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTqeThresholds: thresholdNode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1457
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1458
    .local v0, "details":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "details length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1459
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1460
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1461
    .local v2, "thresholdTypeNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BBD_Disabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1462
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DBD_Disabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1463
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DGIMThresh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1464
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DBDTputThresh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1465
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TQETimeWindow"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1466
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RatioThresh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1469
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding new TqeThreshold item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1471
    new-instance v3, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;

    invoke-direct {v3, p0, v2, p2, p3}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;-><init>(Lcom/quicinc/cne/andsf/Extension;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 1472
    .local v3, "ct":Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension;->tqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    invoke-static {v3}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->access$500(Lcom/quicinc/cne/andsf/Extension$TqeThreshold;)I

    move-result v4

    const/4 v5, -0x3

    if-ne v4, v5, :cond_1

    .line 1474
    const-string v4, "TQE parameter validation failed."

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1475
    return v5

    .line 1477
    :cond_1
    invoke-static {v3}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->access$600(Lcom/quicinc/cne/andsf/Extension$TqeThreshold;)V

    .line 1459
    .end local v2    # "thresholdTypeNode":Lorg/w3c/dom/Node;
    .end local v3    # "ct":Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1480
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x3e8

    return v1
.end method


# virtual methods
.method public assignValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1584
    const-string v0, "BQE_Disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    const-string v1, "BQE_Disabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1587
    :cond_0
    const-string v0, "ICD_Disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    const-string v1, "ICD_Disabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1590
    :cond_1
    const-string v0, "MaxAuthTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1591
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    const-string v1, "MaxAuthTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1593
    :cond_2
    const-string v0, "IcdBanRetest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1594
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    const-string v1, "IcdBanRetest"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    :cond_3
    :goto_0
    return-void
.end method

.method public handleExtension(Lorg/w3c/dom/Element;)I
    .locals 2
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    .line 81
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension;->handleBQEExtension(Lorg/w3c/dom/Element;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension;->handleCQEExtension(Lorg/w3c/dom/Element;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension;->handleTQEExtension(Lorg/w3c/dom/Element;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension;->handleICDExtension(Lorg/w3c/dom/Element;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 85
    const-string v0, "Extension: successfully handle Extension node."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 86
    return v1

    .line 89
    :cond_0
    const-string v0, "Extension: error in handle Extension node."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 90
    const/4 v0, -0x3

    return v0
.end method
