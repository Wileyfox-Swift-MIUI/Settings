.class public Lcom/xiaomi/push/service/g;
.super Ljava/lang/Object;
.source "GeoFenceMessageDao.java"


# static fields
.field private static volatile beR:Lcom/xiaomi/push/service/g;


# instance fields
.field private beM:Lcom/xiaomi/push/service/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/xiaomi/push/service/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/g;->beM:Lcom/xiaomi/push/service/f;

    .line 27
    return-void
.end method

.method public static eg(Landroid/content/Context;)Lcom/xiaomi/push/service/g;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/xiaomi/push/service/g;->beR:Lcom/xiaomi/push/service/g;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/xiaomi/push/service/g;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/g;->beR:Lcom/xiaomi/push/service/g;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/xiaomi/push/service/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/g;->beR:Lcom/xiaomi/push/service/g;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/g;->beR:Lcom/xiaomi/push/service/g;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized q(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 206
    const-string v0, "SELECT * FROM geoMessage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized Jk()Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 174
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 175
    iget-object v0, p0, Lcom/xiaomi/push/service/g;->beM:Lcom/xiaomi/push/service/f;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/g;->q(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    if-eqz v1, :cond_1

    .line 182
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    new-instance v3, Lcom/xiaomi/push/service/a/a;

    invoke-direct {v3}, Lcom/xiaomi/push/service/a/a;-><init>()V

    .line 184
    const-string v4, "message_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/a/a;->setMessageId(Ljava/lang/String;)V

    .line 185
    const-string v4, "geo_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/a/a;->eN(Ljava/lang/String;)V

    .line 186
    const-string v4, "content"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/a/a;->F([B)V

    .line 187
    const-string v4, "action"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/a/a;->setAction(I)V

    .line 188
    const-string v4, "deadline"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/push/service/a/a;->K(J)V

    .line 189
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized R(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 133
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 144
    :goto_0
    monitor-exit p0

    return-object v0

    .line 137
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/g;->Jk()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/a/a;

    .line 139
    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->Kg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 144
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/a/a;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 98
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 99
    invoke-virtual {p1}, Lcom/xiaomi/push/service/a/a;->Kg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/push/service/a/a;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/push/service/g;->R(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/a/a;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaomi/push/service/g;->beM:Lcom/xiaomi/push/service/f;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 102
    const-string v0, "geoMessage"

    const-string v3, "geo_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/a/a;->Kg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ey(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 115
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    monitor-exit p0

    return v0

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/g;->beM:Lcom/xiaomi/push/service/f;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 120
    const-string v0, "geoMessage"

    const-string v2, "geo_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 121
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ez(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 165
    :goto_0
    monitor-exit p0

    return-object v0

    .line 158
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/g;->Jk()Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/a/a;

    .line 161
    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->Kg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    .line 165
    goto :goto_0
.end method

.method public declared-synchronized j(Ljava/util/ArrayList;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 89
    :goto_0
    monitor-exit p0

    return v0

    .line 75
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/g;->beM:Lcom/xiaomi/push/service/f;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 78
    const-string v5, "geoMessage"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 79
    const-wide/16 v8, -0x1

    cmp-long v0, v8, v6

    if-nez v0, :cond_2

    move v0, v1

    .line 84
    :goto_1
    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 87
    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
