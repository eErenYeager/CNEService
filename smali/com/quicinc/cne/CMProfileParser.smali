.class public Lcom/quicinc/cne/CMProfileParser;
.super Ljava/lang/Object;
.source "CMProfileParser.java"


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "CORE"

.field private static mCNE:Lcom/quicinc/cne/CNE;

.field private static mFileName:Ljava/lang/String;

.field private static mProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/quicinc/cne/CNE$CMProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFile(Lcom/quicinc/cne/CNE;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "cne"    # Lcom/quicinc/cne/CNE;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/quicinc/cne/CNE;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/quicinc/cne/CNE$CMProfile;",
            ">;"
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "br":Ljava/io/BufferedReader;
    sput-object p0, Lcom/quicinc/cne/CMProfileParser;->mCNE:Lcom/quicinc/cne/CNE;

    .line 35
    sput-object p1, Lcom/quicinc/cne/CMProfileParser;->mFileName:Ljava/lang/String;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v1, "profileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    invoke-static {}, Lcom/quicinc/cne/CMProfileParser;->validateAndBuildProfiles()V

    .line 41
    sget-object v2, Lcom/quicinc/cne/CMProfileParser;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 42
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/quicinc/cne/CNE$CMProfile;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quicinc/cne/CNE$CMProfile;

    .line 44
    .local v3, "currProfile":Lcom/quicinc/cne/CNE$CMProfile;
    invoke-virtual {v3}, Lcom/quicinc/cne/CNE$CMProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .end local v3    # "currProfile":Lcom/quicinc/cne/CNE$CMProfile;
    goto :goto_0

    .line 47
    :cond_0
    return-object v1
.end method

.method private static parseXML(Ljava/io/InputStream;)V
    .locals 13
    .param p0, "is"    # Ljava/io/InputStream;

    .line 72
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 73
    .local v0, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 74
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 77
    .local v3, "eventType":I
    const/4 v4, 0x0

    .line 79
    .local v4, "currentProfile":Lcom/quicinc/cne/CNE$CMProfile;
    const-string v5, ""

    .line 80
    .local v5, "text":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_8

    .line 81
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "tagname":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 166
    const-string v6, "CORE"

    goto/16 :goto_1

    .line 100
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 102
    goto/16 :goto_2

    .line 105
    :pswitch_1
    const-string v8, "profile"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    sget-object v6, Lcom/quicinc/cne/CMProfileParser;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v6, "CORE"

    const-string v8, "added a new profile"

    invoke-static {v6, v8}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 109
    :cond_0
    const-string v8, "RSSIAddThreshold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v8, :cond_2

    .line 110
    const-string v8, "CORE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found add: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "addThresholds":[Ljava/lang/String;
    if-eqz v8, :cond_1

    array-length v11, v8

    if-ne v11, v10, :cond_1

    .line 132
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/quicinc/cne/CNE$CMProfile;->setAdd_2_4(I)V

    .line 133
    aget-object v6, v8, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/quicinc/cne/CNE$CMProfile;->setAdd_5(I)V

    .line 134
    .end local v8    # "addThresholds":[Ljava/lang/String;
    goto/16 :goto_2

    .line 120
    .restart local v8    # "addThresholds":[Ljava/lang/String;
    :cond_1
    const-string v2, "Add thresholds not specified correctly. Cannot proceed further!"

    .line 122
    .local v2, "errorStr":Ljava/lang/String;
    const-string v6, "CORE"

    invoke-static {v6, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    .end local v2    # "errorStr":Ljava/lang/String;
    .end local v8    # "addThresholds":[Ljava/lang/String;
    :cond_2
    const-string v8, "RSSIDropThreshold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 135
    const-string v8, "CORE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found drop: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "dropThresholds":[Ljava/lang/String;
    if-eqz v8, :cond_3

    array-length v11, v8

    if-ne v11, v10, :cond_3

    .line 157
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/quicinc/cne/CNE$CMProfile;->setDrop_2_4(I)V

    .line 158
    aget-object v6, v8, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/quicinc/cne/CNE$CMProfile;->setDrop_5(I)V

    .line 159
    .end local v8    # "dropThresholds":[Ljava/lang/String;
    goto/16 :goto_2

    .line 145
    .restart local v8    # "dropThresholds":[Ljava/lang/String;
    :cond_3
    const-string v2, "Drop thresholds not specified correctly. Cannot proceed further!"

    .line 147
    .restart local v2    # "errorStr":Ljava/lang/String;
    const-string v6, "CORE"

    invoke-static {v6, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 159
    .end local v2    # "errorStr":Ljava/lang/String;
    .end local v8    # "dropThresholds":[Ljava/lang/String;
    :cond_4
    const-string v6, "profiles"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 160
    const-string v6, "CORE"

    const-string v8, "End tag of profiles"

    invoke-static {v6, v8}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 162
    :cond_5
    const-string v6, "CORE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Encountered unknown tag - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    goto/16 :goto_2

    .line 84
    :pswitch_2
    const-string v6, "profile"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 86
    new-instance v6, Lcom/quicinc/cne/CNE$CMProfile;

    sget-object v8, Lcom/quicinc/cne/CMProfileParser;->mCNE:Lcom/quicinc/cne/CNE;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v6, v8}, Lcom/quicinc/cne/CNE$CMProfile;-><init>(Lcom/quicinc/cne/CNE;)V

    move-object v4, v6

    .line 87
    const-string v6, "id"

    invoke-interface {v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "profileID":Ljava/lang/String;
    const-string v8, "CORE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found a new profile with ID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4, v6}, Lcom/quicinc/cne/CNE$CMProfile;->setProfileName(Ljava/lang/String;)V

    .line 90
    .end local v6    # "profileID":Ljava/lang/String;
    goto :goto_2

    :cond_6
    const-string v6, "profiles"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 92
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/quicinc/cne/CMProfileParser;->mProfiles:Ljava/util/ArrayList;

    .line 93
    const-string v6, "CORE"

    const-string v8, "Found profiles"

    invoke-static {v6, v8}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 95
    :cond_7
    const-string v6, "CORE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not processed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    goto :goto_2

    .line 166
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tag - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not processed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 170
    .end local v7    # "tagname":Ljava/lang/String;
    goto/16 :goto_0

    .line 179
    .end local v3    # "eventType":I
    .end local v4    # "currentProfile":Lcom/quicinc/cne/CNE$CMProfile;
    .end local v5    # "text":Ljava/lang/String;
    :cond_8
    nop

    .line 178
    nop

    .line 181
    invoke-static {}, Lcom/quicinc/cne/CMProfileParser;->printProfiles()V

    .line 182
    return-void

    .line 175
    .end local v0    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CORE"

    const-string v2, "IOException"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v1, "CORE"

    const-string v2, "XmlPullParserException"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 174
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "XmlPullParserException"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static printProfiles()V
    .locals 5

    .line 185
    sget-object v0, Lcom/quicinc/cne/CMProfileParser;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/quicinc/cne/CNE$CMProfile;>;"
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/quicinc/cne/CMProfileParser;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " profiles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/CNE$CMProfile;

    .line 190
    .local v1, "currProfile":Lcom/quicinc/cne/CNE$CMProfile;
    const-string v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v1    # "currProfile":Lcom/quicinc/cne/CNE$CMProfile;
    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public static validateAndBuildProfiles()V
    .locals 3

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/quicinc/cne/CMProfileParser;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 54
    invoke-static {v0}, Lcom/quicinc/cne/CMProfileParser;->parseXML(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    nop

    .line 60
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "ioe1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    .end local v1    # "ioe1":Ljava/io/IOException;
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 55
    :catch_1
    move-exception v1

    .line 56
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .end local v1    # "ioe":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 60
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 66
    :goto_1
    return-void

    .line 58
    :goto_2
    nop

    .line 59
    if-eqz v0, :cond_1

    .line 60
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 62
    :catch_2
    move-exception v2

    .line 63
    .local v2, "ioe1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "ioe1":Ljava/io/IOException;
    nop

    .line 64
    :cond_1
    :goto_3
    throw v1
.end method
