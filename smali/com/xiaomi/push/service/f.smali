.class public Lcom/xiaomi/push/service/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GeoFenceDatabaseHelper.java"


# static fields
.field private static final beP:[Ljava/lang/String;

.field private static final beQ:[Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final beO:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v4

    const-string v1, "appId"

    aput-object v1, v0, v5

    const-string v1, "INTEGER NOT NULL"

    aput-object v1, v0, v6

    const-string v1, "package_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "center_longtitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "center_lantitude"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "circle_radius"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "polygon_point"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "coordinate_provider"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "current_status"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/push/service/f;->beP:[Ljava/lang/String;

    .line 73
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "message_id"

    aput-object v1, v0, v3

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v4

    const-string v1, "geo_id"

    aput-object v1, v0, v5

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v6

    const-string v1, "content"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BLOB NOT NULL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deadline"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/push/service/f;->beQ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 27
    const-string v0, "geofencing.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    const-string v0, "GeoFenceDatabaseHelper."

    iput-object v0, p0, Lcom/xiaomi/push/service/f;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/f;->beO:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private r(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CREATE TABLE geofence(id TEXT PRIMARY KEY ,"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/xiaomi/push/service/f;->beP:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 63
    if-eqz v0, :cond_0

    .line 64
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    sget-object v2, Lcom/xiaomi/push/service/f;->beP:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/service/f;->beP:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private s(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CREATE TABLE geoMessage("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/xiaomi/push/service/f;->beQ:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 85
    if-eqz v0, :cond_0

    .line 86
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    sget-object v2, Lcom/xiaomi/push/service/f;->beQ:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/service/f;->beP:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, ",PRIMARY KEY(message_id,geo_id));"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 32
    iget-object v1, p0, Lcom/xiaomi/push/service/f;->beO:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/f;->r(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/f;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    const-string v0, "GeoFenceDatabaseHelper. create tables"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 41
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
