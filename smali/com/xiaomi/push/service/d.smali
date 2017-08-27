.class public Lcom/xiaomi/push/service/d;
.super Lcom/xiaomi/channel/commonutils/c/h;
.source "GeoFenceDBCleaner.java"


# instance fields
.field private beL:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/h;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaomi/push/service/d;->beL:Lcom/xiaomi/push/service/XMPushService;

    .line 22
    return-void
.end method


# virtual methods
.method public getJobId()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xf

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 31
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/g;->eg(Landroid/content/Context;)Lcom/xiaomi/push/service/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/g;->Jk()Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/a/a;

    .line 33
    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->Kf()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/xiaomi/push/service/d;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/service/g;->eg(Landroid/content/Context;)Lcom/xiaomi/push/service/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/service/g;->a(Lcom/xiaomi/push/service/a/a;)I

    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeofenceDbCleaner delete a geofence message failed message_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->getContent()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/v;->D([B)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/xiaomi/push/service/d;->beL:Lcom/xiaomi/push/service/XMPushService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v6, v6, v3}, Lcom/xiaomi/push/service/v;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)V

    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method
