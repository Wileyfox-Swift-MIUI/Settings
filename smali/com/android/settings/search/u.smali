.class public Lcom/android/settings/search/u;
.super Ljava/lang/Object;
.source "SearchUpdator.java"


# static fields
.field private static arR:Lcom/android/settings/search/u;


# instance fields
.field private arO:Lcom/android/settings/search/x;

.field private arP:Lcom/android/settings/search/w;

.field private arQ:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/search/u;->arQ:I

    .line 56
    iput-object p1, p0, Lcom/android/settings/search/u;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/settings/search/u;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/u;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/android/settings/search/u;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/android/settings/search/u;->arQ:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/search/u;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/search/u;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 243
    const-string v1, "content://com.xiaomi.providers.appindex/functions"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    const-string v0, "additional_settings"

    aput-object v0, v4, v6

    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 228
    const/4 v0, -0x1

    if-ne p5, v0, :cond_0

    .line 229
    iget p5, p0, Lcom/android/settings/search/u;->arQ:I

    :cond_0
    move v6, v7

    .line 232
    :goto_0
    if-ge v6, p5, :cond_2

    .line 234
    const/16 v0, 0xa

    if-ge v6, v0, :cond_1

    .line 235
    const-string v1, "content://com.xiaomi.providers.appindex/functions"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    const-string v0, "additional_settings"

    aput-object v0, v4, v7

    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 232
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 237
    :cond_1
    const-string v1, "content://com.xiaomi.providers.appindex/functions"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    const-string v0, "additional_settings"

    aput-object v0, v4, v7

    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/android/settings/search/u;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/search/u;->cs(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/search/u;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/u;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 247
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 248
    :goto_0
    if-ge v0, p3, :cond_0

    .line 249
    aget-object v2, p4, v0

    aget-object v3, p5, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/u;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/u;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "search_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_1
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings/search/u;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/search/u;->arQ:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings/search/u;I)I
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/search/u;->cM(I)I

    move-result v0

    return v0
.end method

.method private bY(Ljava/lang/String;)J
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 209
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/u;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.xiaomi.providers.appindex/functions"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "search_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/search/u;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 212
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "additional_settings"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 220
    if-eqz v2, :cond_0

    .line 221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_0
    :goto_0
    return-wide v0

    .line 220
    :cond_1
    if-eqz v2, :cond_2

    .line 221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_2
    :goto_1
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 218
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 220
    if-eqz v1, :cond_2

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 220
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_3

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 220
    :catchall_1
    move-exception v0

    move-object v6, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 217
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private cM(I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v2, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/u;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080047

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 116
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v3, v0

    .line 120
    :goto_0
    const/4 v0, 0x1

    if-eq v3, v0, :cond_5

    .line 121
    if-nez v3, :cond_1

    .line 141
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    move v3, v0

    .line 146
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move v3, v1

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/String;

    const-string v4, "id"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    if-ne v4, p1, :cond_2

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 130
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x64
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-le v0, p1, :cond_0

    move v0, v1

    .line 151
    :goto_2
    if-eqz v2, :cond_3

    .line 152
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 155
    :cond_3
    :goto_3
    return v0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    :try_start_5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 148
    :catch_2
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 149
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 151
    if-eqz v2, :cond_3

    .line 152
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    .line 135
    :catch_3
    move-exception v0

    .line 136
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 152
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v0

    .line 142
    :catch_4
    move-exception v0

    .line 143
    :try_start_8
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 144
    :catch_5
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static declared-synchronized cr(Landroid/content/Context;)Lcom/android/settings/search/u;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/android/settings/search/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/search/u;->arR:Lcom/android/settings/search/u;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/settings/search/u;

    invoke-direct {v0, p0}, Lcom/android/settings/search/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/search/u;->arR:Lcom/android/settings/search/u;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/settings/search/u;->arR:Lcom/android/settings/search/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private cs(Landroid/content/Context;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    const-wide/16 v6, 0x1

    .line 159
    invoke-static {}, Lcom/android/b/a;->zW()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const-string v0, "1100"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    and-long v2, v0, v8

    const-string v4, "11"

    const-string v0, "11"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->cM(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;I)V

    .line 161
    const-string v0, "0600"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    and-long v2, v0, v8

    const-string v4, "06"

    const-string v0, "06"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->cM(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;I)V

    .line 162
    const-string v0, "1504"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    and-long/2addr v0, v8

    const-string v2, "1504"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 163
    const-string v0, "2100"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    and-long/2addr v0, v8

    const-string v2, "2100"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 171
    :goto_0
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const-string v0, "1550"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    and-long/2addr v0, v8

    const-string v2, "1550"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 177
    :goto_1
    invoke-static {p1}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/b/a;->zW()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    :cond_0
    const-string v0, "0700"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    or-long v2, v0, v6

    const-string v4, "07"

    const-string v0, "07"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->cM(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;I)V

    .line 183
    :goto_2
    return-void

    .line 165
    :cond_1
    const-string v0, "1100"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    or-long v2, v0, v6

    const-string v4, "11"

    const-string v0, "11"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->cM(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;I)V

    .line 166
    const-string v0, "0600"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    or-long v2, v0, v6

    const-string v4, "06"

    const-string v0, "06"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->cM(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;I)V

    .line 167
    const-string v0, "1504"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    or-long/2addr v0, v6

    const-string v2, "1504"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 168
    const-string v0, "2100"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    or-long/2addr v0, v6

    const-string v2, "2100"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_2
    const-string v0, "1550"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    or-long/2addr v0, v6

    const-string v2, "1550"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 180
    :cond_3
    const-string v0, "0700"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    and-long v2, v0, v8

    const-string v4, "07"

    const-string v0, "07"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->cM(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;I)V

    goto :goto_2
.end method

.method private f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v5, -0x1

    const-wide/16 v8, 0x1

    .line 186
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/fE;->K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    const-string v0, "0000"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    .line 192
    and-long v2, v0, v8

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 194
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    const-string v4, "00"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;I)V

    .line 205
    :cond_2
    :goto_0
    return-void

    .line 197
    :cond_3
    const-string v0, "0000"

    invoke-direct {p0, v0}, Lcom/android/settings/search/u;->bY(Ljava/lang/String;)J

    move-result-wide v0

    .line 199
    and-long v2, v0, v8

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 201
    or-long v2, v0, v8

    const-string v4, "00"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/u;->a(Landroid/content/Context;JLjava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public uP()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/search/u;->arP:Lcom/android/settings/search/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/search/u;->arP:Lcom/android/settings/search/w;

    invoke-virtual {v0}, Lcom/android/settings/search/w;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/search/u;->arP:Lcom/android/settings/search/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/w;->cancel(Z)Z

    .line 71
    :cond_0
    new-instance v0, Lcom/android/settings/search/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/w;-><init>(Lcom/android/settings/search/u;Lcom/android/settings/search/v;)V

    iput-object v0, p0, Lcom/android/settings/search/u;->arP:Lcom/android/settings/search/w;

    .line 72
    iget-object v0, p0, Lcom/android/settings/search/u;->arP:Lcom/android/settings/search/w;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method public uQ()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/search/u;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/search/ReverseSearchService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const-string v1, "ReverseSearchExtraKey"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/android/settings/search/u;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    return-void
.end method

.method public y(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-object v0, p0, Lcom/android/settings/search/u;->arO:Lcom/android/settings/search/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/search/u;->arO:Lcom/android/settings/search/x;

    invoke-virtual {v0}, Lcom/android/settings/search/x;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/search/u;->arO:Lcom/android/settings/search/x;

    invoke-virtual {v0, v2}, Lcom/android/settings/search/x;->cancel(Z)Z

    .line 87
    :cond_0
    new-instance v0, Lcom/android/settings/search/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/x;-><init>(Lcom/android/settings/search/u;Lcom/android/settings/search/v;)V

    iput-object v0, p0, Lcom/android/settings/search/u;->arO:Lcom/android/settings/search/x;

    .line 88
    iget-object v0, p0, Lcom/android/settings/search/u;->arO:Lcom/android/settings/search/x;

    new-array v1, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/search/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void
.end method
