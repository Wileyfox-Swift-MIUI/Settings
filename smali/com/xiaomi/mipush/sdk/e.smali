.class public Lcom/xiaomi/mipush/sdk/e;
.super Ljava/lang/Object;
.source "GeoFenceRegister.java"


# instance fields
.field private final baj:I

.field private final bak:D

.field private final bal:Ljava/lang/String;

.field private bam:Lcom/xiaomi/b/a/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/e;->baj:I

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mipush/sdk/e;->bak:D

    .line 19
    const-string v0, "com.xiaomi.mipushdemo"

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->bal:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/e;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/e;->GL()V

    .line 27
    return-void
.end method

.method private GL()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/xiaomi/b/a/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->bam:Lcom/xiaomi/b/a/a;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/xmpush/thrift/GeoFencing;)Z
    .locals 12

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LF()Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LH()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LF()Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v4

    .line 39
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->bam:Lcom/xiaomi/b/a/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/e;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/Location;->getLatitude()D

    move-result-wide v2

    .line 41
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/Location;->getLongitude()D

    move-result-wide v4

    .line 42
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LH()D

    move-result-wide v6

    double-to-float v6, v6

    const-wide/16 v7, -0x1

    const-string v9, "com.xiaomi.xmsf"

    .line 45
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v10

    .line 46
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LL()Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->name()Ljava/lang/String;

    move-result-object v11

    .line 39
    invoke-virtual/range {v0 .. v11}, Lcom/xiaomi/b/a/a;->a(Landroid/content/Context;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dq(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->bam:Lcom/xiaomi/b/a/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/e;->mContext:Landroid/content/Context;

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/b/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
