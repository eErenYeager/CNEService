.class public Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;
.super Ljava/lang/Object;
.source "DbConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/DbConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndsfDatabaseStructure"
.end annotation


# instance fields
.field IsrpProperties:Lcom/quicinc/cne/andsf/DbConnection$Table;

.field cBool:Ljava/lang/String;

.field cInt:Ljava/lang/String;

.field cKey:Ljava/lang/String;

.field cText:Ljava/lang/String;

.field cUInt:Ljava/lang/String;

.field public tableNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/quicinc/cne/andsf/DbConnection$Table;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/quicinc/cne/andsf/DbConnection;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/andsf/DbConnection;)V
    .locals 19
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/DbConnection;

    move-object/from16 v0, p0

    .line 262
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->this$0:Lcom/quicinc/cne/andsf/DbConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    iput-object v2, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    .line 257
    const-string v2, "INTEGER"

    iput-object v2, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    .line 258
    const-string v2, "UNSIGNED INTEGER"

    iput-object v2, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    .line 259
    const-string v2, "TEXT"

    iput-object v2, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    .line 260
    const-string v2, "BOOL"

    iput-object v2, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    .line 263
    const-string v2, "Creating Database structure"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 264
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    .line 267
    new-instance v2, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v3, "andsf_data"

    invoke-direct {v2, v1, v3}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 268
    .local v2, "andsfData":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v3, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v4, "Version"

    invoke-virtual {v2, v3, v4}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v3, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v4, "Timestamp"

    invoke-virtual {v2, v3, v4}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v3, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v3, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v3, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v4, "isrp"

    invoke-direct {v3, v1, v4}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 274
    .local v3, "isrpProps":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v4, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    const-string v5, "isrp_id"

    invoke-virtual {v3, v4, v5}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v4, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v5, "Roaming"

    invoke-virtual {v3, v4, v5}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v4, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v5, "PLMN"

    invoke-virtual {v3, v4, v5}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v4, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v5, "UpdatePolicy"

    invoke-virtual {v3, v4, v5}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v4, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v4, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v4, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v5, "flowbased"

    invoke-direct {v4, v1, v5}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 282
    .local v4, "flowbasedProps":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v5, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    const-string v6, "flow_id"

    invoke-virtual {v4, v5, v6}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v5, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v6, "isrp_id"

    invoke-virtual {v4, v5, v6}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v5, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v6, "RulePriority"

    invoke-virtual {v4, v5, v6}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v5, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v5, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v5, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v6, "ip_flows"

    invoke-direct {v5, v1, v6}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 289
    .local v5, "ipFlows":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    const-string v7, "ip_flows_id"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v7, "flow_id"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v7, "AddressType"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    const-string v7, "StartSourceIPAddress"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    const-string v7, "EndSourceIPAddress"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    const-string v7, "StartDestIPAddress"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    const-string v7, "EndDestIPAddress"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v7, "ProtocolType"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v7, "StartSourcePortNumber"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v7, "EndSourcePortNumber"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v7, "StartDestPortNumber"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v7, "EndDestPortNumber"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v7, "AppName"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v7, "SecondaryAccessId"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v7, "Direction"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v7, "QoS"

    invoke-virtual {v5, v6, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v6, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v6, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v7, "routing_criteria"

    invoke-direct {v6, v1, v7}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 310
    .local v6, "routingCriteria":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v7, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    const-string v8, "rc_id"

    invoke-virtual {v6, v7, v8}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v7, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v8, "flow_id"

    invoke-virtual {v6, v7, v8}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v7, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v7, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v7, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v8, "time_of_day"

    invoke-direct {v7, v1, v8}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 316
    .local v7, "timeOfDay":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v8, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    const-string v9, "tod_id"

    invoke-virtual {v7, v8, v9}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v8, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v9, "rc_id"

    invoke-virtual {v7, v8, v9}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v8, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v9, "TimeStart"

    invoke-virtual {v7, v8, v9}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v8, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v9, "TimeStop"

    invoke-virtual {v7, v8, v9}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v8, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v9, "DateStart"

    invoke-virtual {v7, v8, v9}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v8, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v9, "DateStop"

    invoke-virtual {v7, v8, v9}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v8, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v8, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v9, v7, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v8, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v9, "routing_rule"

    invoke-direct {v8, v1, v9}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 326
    .local v8, "routingRule":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v9, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    const-string v10, "rr_id"

    invoke-virtual {v8, v9, v10}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v9, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v10, "flow_id"

    invoke-virtual {v8, v9, v10}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v9, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    const-string v10, "AccessTechnology"

    invoke-virtual {v8, v9, v10}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v9, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v10, "AccessId"

    invoke-virtual {v8, v9, v10}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v9, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v10, "SecondaryAccessId"

    invoke-virtual {v8, v9, v10}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v9, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v10, "AccessNetworkPriority"

    invoke-virtual {v8, v9, v10}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v9, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v10, v8, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v9, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v10, v8, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v9, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v10, "wqe"

    invoke-direct {v9, v1, v10}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 336
    .local v9, "wqeDetails":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v10, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    const-string v11, "BQE_Disabled"

    invoke-virtual {v9, v10, v11}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v10, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    const-string v11, "ICD_Disabled"

    invoke-virtual {v9, v10, v11}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v10, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    const-string v11, "MaxAuthTime"

    invoke-virtual {v9, v10, v11}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v10, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    const-string v11, "IcdBanRetest"

    invoke-virtual {v9, v10, v11}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v10, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v11, v9, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v10, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v11, v9, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v10, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v11, "bqe_apids"

    invoke-direct {v10, v1, v11}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 344
    .local v10, "bqeApIds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v11, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v12, "Id"

    invoke-virtual {v10, v11, v12}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v11, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v12, "apId"

    invoke-virtual {v10, v11, v12}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v11, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v12, v10, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v11, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v12, v10, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v11, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v12, "bqe_thresholds"

    invoke-direct {v11, v1, v12}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 350
    .local v11, "bqeThresholds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v12, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v13, "Id"

    invoke-virtual {v11, v12, v13}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v12, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v13, "SubRAT_Type"

    invoke-virtual {v11, v12, v13}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v12, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v13, "Threshold"

    invoke-virtual {v11, v12, v13}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v12, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v13, "Threshold_Units"

    invoke-virtual {v11, v12, v13}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v12, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v13, v11, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v12, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v13, v11, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v12, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v13, "cqe_thresholds"

    invoke-direct {v12, v1, v13}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 358
    .local v12, "cqeThresholds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v13, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v14, "Type"

    invoke-virtual {v12, v13, v14}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v13, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v14, "Value"

    invoke-virtual {v12, v13, v14}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v13, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v14, "Units"

    invoke-virtual {v12, v13, v14}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v13, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v14, "id"

    invoke-virtual {v12, v13, v14}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v13, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v14, "apid"

    invoke-virtual {v12, v13, v14}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v13, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v14, v12, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v13, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v14, v12, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v13, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v14, "tqe_thresholds"

    invoke-direct {v13, v1, v14}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 367
    .local v13, "tqeThresholds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v14, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v15, "Type"

    invoke-virtual {v13, v14, v15}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v14, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v15, "Value"

    invoke-virtual {v13, v14, v15}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v14, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v15, "Units"

    invoke-virtual {v13, v14, v15}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v14, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v15, "id"

    invoke-virtual {v13, v14, v15}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v14, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v15, "apid"

    invoke-virtual {v13, v14, v15}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v14, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v15, v13, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v14, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v15, v13, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v14, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v15, "auth_apps"

    invoke-direct {v14, v1, v15}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 376
    .local v14, "authApps":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v15, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v16, v2

    const-string v2, "Appname"

    .end local v2    # "andsfData":Lcom/quicinc/cne/andsf/DbConnection$Table;
    .local v16, "andsfData":Lcom/quicinc/cne/andsf/DbConnection$Table;
    invoke-virtual {v14, v15, v2}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v15, v14, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v2, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v15, v14, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v2, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v15, "icd_config_set"

    invoke-direct {v2, v1, v15}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 381
    .local v2, "icdConfigSet":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v15, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v17, v3

    const-string v3, "config_type"

    .end local v3    # "isrpProps":Lcom/quicinc/cne/andsf/DbConnection$Table;
    .local v17, "isrpProps":Lcom/quicinc/cne/andsf/DbConnection$Table;
    invoke-virtual {v2, v15, v3}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v3, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v15, v2, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v3, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v3, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v3, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string v15, "icd_apids"

    invoke-direct {v3, v1, v15}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 386
    .local v3, "icdApIds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    iget-object v15, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    const-string v1, "apId"

    invoke-virtual {v3, v15, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v1, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    iget-object v15, v3, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v1, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v1, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    iget-object v15, v3, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method
