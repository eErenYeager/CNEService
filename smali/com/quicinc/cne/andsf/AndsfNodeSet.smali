.class public abstract Lcom/quicinc/cne/andsf/AndsfNodeSet;
.super Ljava/lang/Object;
.source "AndsfNodeSet.java"


# instance fields
.field public data:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/AndsfNodeSet;->data:Landroid/content/ContentValues;

    return-void
.end method

.method private getChildValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .line 19
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 20
    .local v0, "val":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract assignValues(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public inspectChildren(Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 30
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 31
    .local v0, "nl":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 32
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 33
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/quicinc/cne/andsf/AndsfNodeSet;->getChildValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "val":Ljava/lang/String;
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/quicinc/cne/andsf/AndsfNodeSet;->assignValues(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
