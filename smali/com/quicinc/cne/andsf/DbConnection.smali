.class public Lcom/quicinc/cne/andsf/DbConnection;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;,
        Lcom/quicinc/cne/andsf/DbConnection$Table;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "andsf.db"

.field private static andsfStruct:Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

.field private static dbAbsolutePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const-string v0, "andsf.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    const-string v0, "andsf.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 38
    new-instance v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

    invoke-direct {v0, p0}, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;-><init>(Lcom/quicinc/cne/andsf/DbConnection;)V

    sput-object v0, Lcom/quicinc/cne/andsf/DbConnection;->andsfStruct:Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

    .line 39
    const-string v0, "andsf.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/quicinc/cne/andsf/DbConnection;->dbAbsolutePath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private commitExt(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/Extension;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ext"    # Lcom/quicinc/cne/andsf/Extension;

    .line 154
    const-string v0, "Committing WQE extension to db"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 155
    iget-object v0, p2, Lcom/quicinc/cne/andsf/Extension;->bqeApIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 156
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "bqe_apids"

    invoke-virtual {p0, p1, v2, v1}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 157
    .end local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p2, Lcom/quicinc/cne/andsf/Extension;->authApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 159
    .local v1, "appname":Landroid/content/ContentValues;
    const-string v2, "auth_apps"

    invoke-virtual {p0, p1, v2, v1}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 160
    .end local v1    # "appname":Landroid/content/ContentValues;
    goto :goto_1

    .line 161
    :cond_1
    iget-object v0, p2, Lcom/quicinc/cne/andsf/Extension;->bqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;

    .line 162
    .local v1, "bt":Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    const-string v2, "bqe_thresholds"

    iget-object v3, v1, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 163
    .end local v1    # "bt":Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    goto :goto_2

    .line 164
    :cond_2
    iget-object v0, p2, Lcom/quicinc/cne/andsf/Extension;->icdApIdSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 165
    .local v1, "icdApId":Landroid/content/ContentValues;
    const-string v2, "icd_apids"

    invoke-virtual {p0, p1, v2, v1}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 166
    .end local v1    # "icdApId":Landroid/content/ContentValues;
    goto :goto_3

    .line 167
    :cond_3
    iget-object v0, p2, Lcom/quicinc/cne/andsf/Extension;->icdConfigSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 168
    .local v1, "icdConfig":Landroid/content/ContentValues;
    const-string v2, "icd_config_set"

    invoke-virtual {p0, p1, v2, v1}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 169
    .end local v1    # "icdConfig":Landroid/content/ContentValues;
    goto :goto_4

    .line 171
    :cond_4
    const-string v0, "wqe"

    iget-object v1, p2, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 173
    const-string v0, "Committing CQE extension to db"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 174
    iget-object v0, p2, Lcom/quicinc/cne/andsf/Extension;->cqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;

    .line 175
    .local v1, "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    const-string v2, "cqe_thresholds"

    iget-object v3, v1, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 176
    .end local v1    # "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    goto :goto_5

    .line 178
    :cond_5
    const-string v0, "Committing TQE extension to db"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 179
    iget-object v0, p2, Lcom/quicinc/cne/andsf/Extension;->tqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;

    .line 180
    .local v1, "tt":Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
    const-string v2, "tqe_thresholds"

    iget-object v3, v1, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 181
    .end local v1    # "tt":Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
    goto :goto_6

    .line 182
    :cond_6
    return-void
.end method

.method private commitRC(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "flowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;",
            ">;I)V"
        }
    .end annotation

    .line 144
    .local p2, "routingCriteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;>;"
    const-string v0, "Committing RoutingCriteria to db"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;

    .line 146
    .local v1, "rc":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;
    iget-object v2, v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;->data:Landroid/content/ContentValues;

    const-string v3, "flow_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v2, "routing_criteria"

    iget-object v3, v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 148
    .local v2, "rc_id":I
    iget-object v3, v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;->mTimeOfDay:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2}, Lcom/quicinc/cne/andsf/DbConnection;->commitTod(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V

    .line 149
    .end local v1    # "rc":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;
    .end local v2    # "rc_id":I
    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method private commitRR(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "flowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;",
            ">;I)V"
        }
    .end annotation

    .line 134
    .local p2, "rRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;>;"
    const-string v0, "Committing RoutingRule to db"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;

    .line 136
    .local v1, "rr":Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;
    iget-object v2, v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->data:Landroid/content/ContentValues;

    const-string v3, "flow_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string v2, "routing_rule"

    iget-object v3, v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 138
    .end local v1    # "rr":Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method private commitTod(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "rc_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;",
            ">;I)V"
        }
    .end annotation

    .line 108
    .local p2, "tods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;>;"
    const-string v0, "Committing TODs to db"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;

    .line 110
    .local v1, "tod":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;
    iget-object v2, v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->data:Landroid/content/ContentValues;

    const-string v3, "rc_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v2, "time_of_day"

    iget-object v3, v1, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 112
    .end local v1    # "tod":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;
    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/quicinc/cne/andsf/DbConnection;->andsfStruct:Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

    iget-object v1, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    .line 58
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .local v0, "tables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/quicinc/cne/andsf/DbConnection$Table;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/quicinc/cne/andsf/DbConnection$Table;

    .line 61
    .local v2, "t":Lcom/quicinc/cne/andsf/DbConnection$Table;
    invoke-virtual {v2}, Lcom/quicinc/cne/andsf/DbConnection$Table;->getCreateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    .end local v2    # "t":Lcom/quicinc/cne/andsf/DbConnection$Table;
    goto :goto_0

    .line 63
    :cond_0
    const-string v1, "Created tables"

    invoke-static {v1}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v1, 0x1

    return v1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PLCY:ANDSF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating tables"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x0

    return v2
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    const-string v0, "PLCY:ANDSF"

    const-string v1, "Dropping tables"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/quicinc/cne/andsf/DbConnection;->andsfStruct:Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

    iget-object v1, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    .line 76
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "s":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_1

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "PLCY:ANDSF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t drop table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public commitAndsf(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "andsfData"    # Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    .line 186
    const-string v0, "Committing ANDSF to db"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 187
    iget-object v0, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->isrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/andsf/IsrpDetails;

    .line 188
    .local v1, "isrpDetails":Lcom/quicinc/cne/andsf/IsrpDetails;
    const-string v2, "isrp"

    iget-object v3, v1, Lcom/quicinc/cne/andsf/IsrpDetails;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 190
    .local v2, "isrp_id":I
    iget-object v3, v1, Lcom/quicinc/cne/andsf/IsrpDetails;->flowBased:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/quicinc/cne/andsf/FlowBased;

    .line 191
    .local v4, "ibt":Lcom/quicinc/cne/andsf/FlowBased;
    invoke-virtual {p0, p1, v4, v2}, Lcom/quicinc/cne/andsf/DbConnection;->commitFlow(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/FlowBased;I)V

    .line 192
    .end local v4    # "ibt":Lcom/quicinc/cne/andsf/FlowBased;
    goto :goto_1

    .line 193
    .end local v1    # "isrpDetails":Lcom/quicinc/cne/andsf/IsrpDetails;
    .end local v2    # "isrp_id":I
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {p0, p1, v0}, Lcom/quicinc/cne/andsf/DbConnection;->commitExt(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/Extension;)V

    .line 197
    :cond_2
    iget-object v0, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->data:Landroid/content/ContentValues;

    if-eqz v0, :cond_3

    .line 198
    const-string v0, "andsf_data"

    iget-object v1, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 200
    :cond_3
    const-string v0, "PLCY:ANDSF"

    const-string v1, "commited ANDSF"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public commitFlow(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/FlowBased;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "flowBased"    # Lcom/quicinc/cne/andsf/FlowBased;
    .param p3, "isrp_id"    # I

    .line 117
    const-string v0, "Committing FlowBased to db"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 118
    iget-object v0, p2, Lcom/quicinc/cne/andsf/FlowBased;->data:Landroid/content/ContentValues;

    const-string v1, "isrp_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v0, "flowbased"

    iget-object v1, p2, Lcom/quicinc/cne/andsf/FlowBased;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 121
    .local v0, "flowId":I
    iget-object v1, p2, Lcom/quicinc/cne/andsf/FlowBased;->ipFlows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;

    .line 122
    .local v2, "ipF":Lcom/quicinc/cne/andsf/FlowBased$IpFlow;
    iget-object v3, v2, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    const-string v4, "flow_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v3, "ip_flows"

    iget-object v4, v2, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v3, v4}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 124
    .end local v2    # "ipF":Lcom/quicinc/cne/andsf/FlowBased$IpFlow;
    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p2, Lcom/quicinc/cne/andsf/FlowBased;->routingCriterion:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0}, Lcom/quicinc/cne/andsf/DbConnection;->commitRC(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V

    .line 128
    iget-object v1, p2, Lcom/quicinc/cne/andsf/FlowBased;->routingRules:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0}, Lcom/quicinc/cne/andsf/DbConnection;->commitRR(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V

    .line 129
    return-void
.end method

.method public commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 98
    .local v0, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 99
    const-string v2, "PLCY:ANDSF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Commit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public copyDatabase(Ljava/lang/String;)V
    .locals 6
    .param p1, "dbPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "andsf.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 400
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 402
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 403
    invoke-virtual {v1, v2, v0}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v1    # "f":Ljava/io/File;
    goto :goto_0

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "PLCY:ANDSF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating file failure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/quicinc/cne/andsf/DbConnection;->dbAbsolutePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 414
    .local v3, "buff":[B
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    if-lez v4, :cond_0

    .line 415
    invoke-virtual {v2, v3, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 417
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 418
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 419
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copied db to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/quicinc/cne/andsf/DbConnection;->dbAbsolutePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "buff":[B
    .end local v5    # "len":I
    nop

    .line 430
    return-void

    .line 426
    :catch_1
    move-exception v0

    .line 427
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copy file failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLCY:ANDSF"

    invoke-static {v2, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    throw v0

    .line 423
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 424
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLCY:ANDSF"

    invoke-static {v2, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/DbConnection;->createTables(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/DbConnection;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/DbConnection;->createTables(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string v0, "PLCY:ANDSF"

    const-string v1, "Error creating tables, ANDSF parser failed"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 90
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/andsf/DbConnection;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    return-void
.end method
