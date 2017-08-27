.class public Lcom/android/settings/search/r;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field private arF:Lcom/android/settings/search/ReverseSearchService;

.field private arG:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/settings/search/r;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/android/settings/search/s;

    invoke-direct {v0, p0}, Lcom/android/settings/search/s;-><init>(Lcom/android/settings/search/r;)V

    iput-object v0, p0, Lcom/android/settings/search/r;->arG:Landroid/content/ServiceConnection;

    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/search/r;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/search/ReverseSearchService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    iget-object v1, p0, Lcom/android/settings/search/r;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/search/r;->arG:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 39
    return-void
.end method

.method private B(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 62
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 63
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Lcom/android/settings/search/t;

    invoke-direct {v0, v4}, Lcom/android/settings/search/t;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 79
    :goto_0
    return-object v0

    .line 67
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 71
    invoke-direct {p0, v0}, Lcom/android/settings/search/r;->bX(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 73
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    invoke-direct {p0, v1}, Lcom/android/settings/search/r;->C(Ljava/util/List;)Ljava/util/List;

    :goto_2
    move-object v0, v1

    .line 79
    goto :goto_0

    .line 77
    :cond_4
    new-instance v0, Lcom/android/settings/search/t;

    invoke-direct {v0, v4}, Lcom/android/settings/search/t;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 158
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/search/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    :goto_0
    if-eqz v1, :cond_0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":string/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 166
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    return-object v0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0
.end method

.method private C(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 135
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/t;

    invoke-virtual {v0}, Lcom/android/settings/search/t;->uL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-object p1

    .line 138
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 139
    :goto_1
    if-ge v1, v3, :cond_0

    .line 140
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/t;

    .line 141
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/search/t;->uL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/search/t;->uL()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/search/r;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    move v1, v2

    .line 144
    :goto_2
    if-ge v0, v3, :cond_2

    .line 145
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 146
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    .line 149
    :cond_2
    add-int/lit8 v0, v3, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 150
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 139
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/search/r;Lcom/android/settings/search/ReverseSearchService;)Lcom/android/settings/search/ReverseSearchService;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings/search/r;->arF:Lcom/android/settings/search/ReverseSearchService;

    return-object p1
.end method

.method private bX(Ljava/lang/String;)Ljava/util/List;
    .locals 18

    .prologue
    .line 83
    const/4 v7, 0x0

    .line 84
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 86
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/search/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.xiaomi.providers.appindex/search_suggest_query/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "is_settings = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "true"

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 87
    const/4 v15, 0x0

    .line 88
    const/4 v13, 0x0

    move-object/from16 v16, v15

    .line 89
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 90
    const-string v1, "suggest_text_1"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v1, "suggest_intent_action"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v1, "suggest_intent_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    const-string v1, "suggest_icon_1"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    const-string v1, "suggest_shortcut_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 95
    const-string v1, "suggest_intent_extra_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    .line 97
    :goto_1
    const/4 v12, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v10, 0x0

    .line 100
    const/4 v11, 0x0

    .line 101
    if-eqz v1, :cond_1

    .line 102
    array-length v3, v1

    if-lez v3, :cond_5

    const/4 v3, 0x0

    aget-object v3, v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/android/settings/search/r;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 103
    :goto_2
    array-length v3, v1

    const/4 v7, 0x1

    if-le v3, v7, :cond_6

    const/4 v3, 0x1

    aget-object v9, v1, v3

    .line 104
    :goto_3
    array-length v3, v1

    const/4 v7, 0x2

    if-le v3, v7, :cond_7

    const/4 v3, 0x2

    aget-object v10, v1, v3

    .line 105
    :goto_4
    array-length v3, v1

    const/4 v7, 0x3

    if-le v3, v7, :cond_8

    const/4 v3, 0x3

    aget-object v1, v1, v3

    :goto_5
    move-object v11, v1

    .line 107
    :cond_1
    if-eqz v12, :cond_9

    const-string v1, "\\/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_6
    if-eqz v1, :cond_a

    array-length v3, v1

    const/4 v7, 0x1

    if-le v3, v7, :cond_a

    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 109
    :goto_7
    if-eqz v1, :cond_b

    array-length v7, v1

    const/4 v15, 0x1

    if-le v7, v15, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v1, v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v15, 0x1

    aget-object v1, v1, v15

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 110
    :goto_8
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    new-instance v1, Lcom/android/settings/search/t;

    const/4 v7, 0x2

    invoke-direct {v1, v7}, Lcom/android/settings/search/t;-><init>(I)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v13, 0x0

    .line 114
    :cond_2
    new-instance v1, Lcom/android/settings/search/t;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/android/settings/search/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :cond_3
    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v13, 0x1

    move-object/from16 v16, v15

    .line 122
    goto/16 :goto_0

    .line 96
    :cond_4
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    goto/16 :goto_1

    .line 102
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 103
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 104
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 105
    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    .line 107
    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    .line 108
    :cond_a
    const/4 v3, 0x0

    goto :goto_7

    .line 109
    :cond_b
    const/4 v1, 0x0

    move-object v15, v1

    goto :goto_8

    .line 126
    :cond_c
    if-eqz v14, :cond_d

    .line 127
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_d
    :goto_9
    return-object v17

    .line 123
    :catch_0
    move-exception v1

    move-object v2, v7

    .line 124
    :goto_a
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    if-eqz v2, :cond_d

    .line 127
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 126
    :catchall_0
    move-exception v1

    move-object v14, v7

    :goto_b
    if-eqz v14, :cond_e

    .line 127
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1

    .line 126
    :catchall_1
    move-exception v1

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v14, v2

    goto :goto_b

    .line 123
    :catch_1
    move-exception v1

    move-object v2, v14

    goto :goto_a
.end method


# virtual methods
.method public bW(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/r;->arF:Lcom/android/settings/search/ReverseSearchService;

    if-nez v1, :cond_1

    .line 49
    :cond_0
    new-instance v1, Lcom/android/settings/search/t;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/settings/search/t;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_0
    return-object v0

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/search/r;->bX(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    invoke-direct {p0, v0}, Lcom/android/settings/search/r;->C(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/settings/search/r;->arF:Lcom/android/settings/search/ReverseSearchService;

    invoke-virtual {v0, p1}, Lcom/android/settings/search/ReverseSearchService;->bU(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/android/settings/search/r;->B(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/search/r;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/search/r;->arG:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/r;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method
