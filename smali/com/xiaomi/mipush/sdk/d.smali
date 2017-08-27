.class public Lcom/xiaomi/mipush/sdk/d;
.super Ljava/lang/Object;
.source "GeoFenceRegMessageProcessor.java"


# static fields
.field private static volatile bai:Lcom/xiaomi/mipush/sdk/d;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "GeoFenceRegMessageProcessor."

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->TAG:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private GK()Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/e;->ef(Landroid/content/Context;)Lcom/xiaomi/push/service/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/e;->Jj()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;-><init>()V

    .line 167
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 169
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->e(Ljava/util/Set;)Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    .line 172
    return-object v1
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/GeoFencing;Z)V
    .locals 5

    .prologue
    .line 130
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 131
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    const-string v0, "-1"

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 132
    if-eqz p2, :cond_0

    sget-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpy:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fq(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 133
    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->H([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 135
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/q;->dZ(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/q;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->bmK:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/xiaomi/mipush/sdk/q;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor.report geo_fencing id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string v0, "geo_reg"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 137
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpA:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, "geo_unreg"

    goto :goto_1
.end method

.method private c(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/h;->eh(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/h;->ei(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Nm()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {v1}, Lorg/apache/thrift/TException;->printStackTrace()V

    goto :goto_0
.end method

.method public static dI(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->bai:Lcom/xiaomi/mipush/sdk/d;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/xiaomi/mipush/sdk/d;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->bai:Lcom/xiaomi/mipush/sdk/d;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/xiaomi/mipush/sdk/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/d;->bai:Lcom/xiaomi/mipush/sdk/d;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->bai:Lcom/xiaomi/mipush/sdk/d;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public GJ()V
    .locals 6

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->eh(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->ei(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/d;->GK()Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 151
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    const-string v3, "-1"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 152
    sget-object v3, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpC:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fq(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 153
    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->H([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 155
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/q;->dZ(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/q;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ActionType;->bmK:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/mipush/sdk/q;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeoFenceRegMessageProcessor.sync_geo_data. geos size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->Mx()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V
    .locals 6

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/d;->c(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registration convert geofence object failed notification_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/e;->ef(Landroid/content/Context;)Lcom/xiaomi/push/service/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/e;->b(Lcom/xiaomi/xmpush/thrift/GeoFencing;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeoFenceRegMessageProcessor. insert a new geofence failed about geo_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 64
    :cond_1
    new-instance v1, Lcom/xiaomi/mipush/sdk/e;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaomi/mipush/sdk/e;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/e;->a(Lcom/xiaomi/xmpush/thrift/GeoFencing;)Z

    .line 67
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/d;->a(Lcom/xiaomi/xmpush/thrift/GeoFencing;Z)V

    .line 68
    const-string v0, "receive geo reg notification"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/d;->c(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregistration convert geofence object failed notification_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/e;->ef(Landroid/content/Context;)Lcom/xiaomi/push/service/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/e;->ex(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeoFenceRegMessageProcessor. delete a geofence about geo_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " falied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/g;->eg(Landroid/content/Context;)Lcom/xiaomi/push/service/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/g;->ey(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeoFenceRegMessageProcessor. delete all geofence messages about geo_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 91
    :cond_2
    new-instance v1, Lcom/xiaomi/mipush/sdk/e;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/d;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaomi/mipush/sdk/e;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/mipush/sdk/e;->dq(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/d;->a(Lcom/xiaomi/xmpush/thrift/GeoFencing;Z)V

    .line 95
    const-string v0, "receive geo unreg notification"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
