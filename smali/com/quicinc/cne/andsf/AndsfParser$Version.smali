.class public Lcom/quicinc/cne/andsf/AndsfParser$Version;
.super Ljava/lang/Object;
.source "AndsfParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/AndsfParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# static fields
.field private static final MAJOR:I = 0x4

.field private static final MINOR:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt()I
    .locals 1

    .line 57
    const/16 v0, 0x199

    return v0
.end method

.method public static getString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public static matchVersion(Ljava/lang/String;)Z
    .locals 5
    .param p0, "version"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "array":[Ljava/lang/String;
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "major":I
    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "array":[Ljava/lang/String;
    move v1, v4

    .line 75
    .local v1, "minor":I
    nop

    .line 74
    nop

    .line 76
    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_0

    move v0, v3

    nop

    :cond_0
    return v0

    .line 71
    .end local v1    # "minor":I
    .end local v2    # "major":I
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "PLCY:ANDSF"

    const-string v3, "NumberFormatException"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 74
    return v0
.end method
