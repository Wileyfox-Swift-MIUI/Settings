.class public Lcom/xiaomi/push/service/e;
.super Ljava/lang/Object;
.source "GeoFenceDao.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static volatile beN:Lcom/xiaomi/push/service/e;


# instance fields
.field private beM:Lcom/xiaomi/push/service/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "GeoFenceDao."

    sput-object v0, Lcom/xiaomi/push/service/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/xiaomi/push/service/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/e;->beM:Lcom/xiaomi/push/service/f;

    .line 36
    return-void
.end method

.method private declared-synchronized N(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 260
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/push/service/e;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " points unvalidated"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 280
    :goto_0
    monitor-exit p0

    return-object v0

    .line 264
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/Location;

    .line 269
    if-eqz v0, :cond_2

    .line 272
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 273
    const-string v5, "point_lantitude"

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 274
    const-string v5, "point_longtitude"

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 280
    goto :goto_0

    .line 277
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static ef(Landroid/content/Context;)Lcom/xiaomi/push/service/e;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/xiaomi/push/service/e;->beN:Lcom/xiaomi/push/service/e;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/xiaomi/push/service/e;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/e;->beN:Lcom/xiaomi/push/service/e;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/xiaomi/push/service/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/e;->beN:Lcom/xiaomi/push/service/e;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/e;->beN:Lcom/xiaomi/push/service/e;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized g(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/GeoType;
    .locals 6

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/xmpush/thrift/GeoType;->values()[Lcom/xiaomi/xmpush/thrift/GeoType;

    move-result-object v2

    .line 292
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 293
    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    :goto_1
    monitor-exit p0

    return-object v0

    .line 292
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/Location;
    .locals 4

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :try_start_1
    const-string v1, "center_lantitude"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/Location;->e(D)Lcom/xiaomi/xmpush/thrift/Location;

    .line 310
    const-string v1, "center_longtitude"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/Location;->d(D)Lcom/xiaomi/xmpush/thrift/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :goto_0
    monitor-exit p0

    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :try_start_1
    const-string v0, "polygon_points"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 332
    new-instance v4, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V

    .line 333
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 334
    const-string v5, "point_lantitude"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xiaomi/xmpush/thrift/Location;->e(D)Lcom/xiaomi/xmpush/thrift/Location;

    .line 335
    const-string v5, "point_longtitude"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xiaomi/xmpush/thrift/Location;->d(D)Lcom/xiaomi/xmpush/thrift/Location;

    .line 336
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 341
    :goto_1
    monitor-exit p0

    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    const/4 v0, 0x0

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    const-string v0, "coordinate_provider"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 363
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 364
    const-string v0, "SELECT * FROM geofence"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized Jj()Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 55
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 56
    iget-object v0, p0, Lcom/xiaomi/push/service/e;->beM:Lcom/xiaomi/push/service/f;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 57
    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/e;->q(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v2

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    if-eqz v2, :cond_7

    .line 64
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;-><init>()V

    .line 66
    const-string v4, "id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->eZ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 67
    const-string v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->fa(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 68
    const-string v4, "appId"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->N(J)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 69
    const-string v4, "package_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->fb(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 70
    const-string v4, "create_time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->O(J)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 73
    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/e;->g(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/GeoType;

    move-result-object v4

    .line 74
    if-nez v4, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/push/service/e;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "findAllGeoFencing: geo type null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_0
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->a(Lcom/xiaomi/xmpush/thrift/GeoType;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    const-string v5, "Circle"

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/GeoType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/e;->h(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->a(Lcom/xiaomi/xmpush/thrift/Location;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 83
    const-string v4, "circle_radius"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->c(D)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :cond_1
    :goto_1
    :try_start_3
    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/e;->j(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-result-object v4

    .line 97
    if-nez v4, :cond_5

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/push/service/e;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "findAllGeoFencing: geo Coordinate Provider null "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 84
    :cond_2
    :try_start_4
    const-string v5, "Polygon"

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/GeoType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/e;->i(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v4

    .line 86
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/push/service/e;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "findAllGeoFencing: geo points null or size<3"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 90
    :cond_4
    :try_start_6
    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Q(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 101
    :cond_5
    :try_start_7
    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->a(Lcom/xiaomi/xmpush/thrift/CoordinateProvider;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 102
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 104
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 108
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized Q(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 178
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 179
    const-string v1, "Enter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Leave"

    .line 180
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Unknown"

    .line 181
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 189
    :goto_0
    monitor-exit p0

    return v0

    .line 184
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 185
    const-string v1, "current_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/xiaomi/push/service/e;->beM:Lcom/xiaomi/push/service/f;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 187
    const-string v2, "geofence"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 188
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/xiaomi/xmpush/thrift/GeoFencing;)J
    .locals 4

    .prologue
    .line 199
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 200
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 201
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "appId"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LA()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "package_name"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "create_time"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCreateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LE()Lcom/xiaomi/xmpush/thrift/GeoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/GeoType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "center_longtitude"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LF()Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "center_lantitude"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LF()Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "circle_radius"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LH()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 210
    const-string v1, "polygon_point"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LJ()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/e;->N(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "coordinate_provider"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LL()Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "current_status"

    const-string v2, "Unknown"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/xiaomi/push/service/e;->beM:Lcom/xiaomi/push/service/f;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 215
    const-string v2, "geofence"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 216
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-wide v2

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ev(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 3

    .prologue
    .line 118
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaomi/push/service/e;->Jj()Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 121
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ew(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 154
    iget-object v0, p0, Lcom/xiaomi/push/service/e;->beM:Lcom/xiaomi/push/service/f;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;->q(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_2

    .line 157
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "current_status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaomi/push/service/e;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "findGeoStatueByGeoId: geo current statue is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " geoId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return-object v0

    .line 165
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_2
    const-string v0, "Unknown"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ex(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 226
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/c/o;->cf(Z)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/e;->ev(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/xiaomi/push/service/e;->beM:Lcom/xiaomi/push/service/f;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 230
    const-string v0, "geofence"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 231
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    monitor-exit p0

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
