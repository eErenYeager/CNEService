.class final enum Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;
.super Ljava/lang/Enum;
.source "CMProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CMProfileTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATUS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

.field public static final enum CREATED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

.field public static final enum INCONCLUSIVE:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

.field public static final enum MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

.field public static final enum NOT_MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

.field public static final enum STARTED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

.field public static final enum STOPPED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 40
    new-instance v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->CREATED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    new-instance v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->STARTED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    new-instance v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    const-string v1, "INCONCLUSIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->INCONCLUSIVE:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    new-instance v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    const-string v1, "MET"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    new-instance v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    const-string v1, "NOT_MET"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->NOT_MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    new-instance v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    const-string v1, "STOPPED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->STOPPED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    sget-object v1, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->CREATED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->STARTED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->INCONCLUSIVE:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->NOT_MET:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->STOPPED:Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->$VALUES:[Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;
    .locals 1

    .line 40
    sget-object v0, Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->$VALUES:[Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    invoke-virtual {v0}, [Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/quicinc/cne/CMProfileTracker$STATUS_TYPE;

    return-object v0
.end method
