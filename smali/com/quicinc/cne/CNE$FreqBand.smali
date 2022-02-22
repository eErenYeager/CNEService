.class public final enum Lcom/quicinc/cne/CNE$FreqBand;
.super Ljava/lang/Enum;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FreqBand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/quicinc/cne/CNE$FreqBand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/quicinc/cne/CNE$FreqBand;

.field public static final enum _2GHz:Lcom/quicinc/cne/CNE$FreqBand;

.field public static final enum _5GHz:Lcom/quicinc/cne/CNE$FreqBand;


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 491
    new-instance v0, Lcom/quicinc/cne/CNE$FreqBand;

    const-string v1, "_2GHz"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/quicinc/cne/CNE$FreqBand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    new-instance v0, Lcom/quicinc/cne/CNE$FreqBand;

    const-string v1, "_5GHz"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/quicinc/cne/CNE$FreqBand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/quicinc/cne/CNE$FreqBand;->_5GHz:Lcom/quicinc/cne/CNE$FreqBand;

    .line 489
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/quicinc/cne/CNE$FreqBand;

    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_5GHz:Lcom/quicinc/cne/CNE$FreqBand;

    aput-object v1, v0, v3

    sput-object v0, Lcom/quicinc/cne/CNE$FreqBand;->$VALUES:[Lcom/quicinc/cne/CNE$FreqBand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "freq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 493
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 494
    iput p3, p0, Lcom/quicinc/cne/CNE$FreqBand;->val:I

    .line 495
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quicinc/cne/CNE$FreqBand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 489
    const-class v0, Lcom/quicinc/cne/CNE$FreqBand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/CNE$FreqBand;

    return-object v0
.end method

.method public static values()[Lcom/quicinc/cne/CNE$FreqBand;
    .locals 1

    .line 489
    sget-object v0, Lcom/quicinc/cne/CNE$FreqBand;->$VALUES:[Lcom/quicinc/cne/CNE$FreqBand;

    invoke-virtual {v0}, [Lcom/quicinc/cne/CNE$FreqBand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/quicinc/cne/CNE$FreqBand;

    return-object v0
.end method


# virtual methods
.method public getFreq()I
    .locals 1

    .line 497
    iget v0, p0, Lcom/quicinc/cne/CNE$FreqBand;->val:I

    return v0
.end method
