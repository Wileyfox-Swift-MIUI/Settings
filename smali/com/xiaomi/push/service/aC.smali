.class Lcom/xiaomi/push/service/aC;
.super Ljava/lang/Object;
.source "XMPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bhn:Ljava/lang/String;

.field final synthetic bho:Ljava/lang/String;

.field final synthetic bhp:Lcom/xiaomi/push/service/aB;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/aB;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/xiaomi/push/service/aC;->bhp:Lcom/xiaomi/push/service/aB;

    iput-object p2, p0, Lcom/xiaomi/push/service/aC;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/push/service/aC;->bhn:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/aC;->bho:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 291
    iget-object v0, p0, Lcom/xiaomi/push/service/aC;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/g;->eg(Landroid/content/Context;)Lcom/xiaomi/push/service/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aC;->bhn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/g;->ez(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/a/a;

    .line 293
    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->getAction()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/push/service/aC;->bho:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/XMPushService;->n(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->Kf()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/xiaomi/push/service/aC;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/g;->eg(Landroid/content/Context;)Lcom/xiaomi/push/service/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/service/g;->a(Lcom/xiaomi/push/service/a/a;)I

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->getContent()[B

    move-result-object v2

    .line 302
    if-nez v2, :cond_2

    .line 303
    const-string v0, "Geo canBeShownMessage content null"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 308
    invoke-static {v2, v4, v5}, Lcom/xiaomi/push/service/v;->a([BJ)Landroid/content/Intent;

    move-result-object v3

    .line 309
    if-nez v3, :cond_3

    .line 310
    const-string v0, "Geo canBeShownMessage intent null"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/push/service/aC;->bhp:Lcom/xiaomi/push/service/aB;

    iget-object v4, v4, Lcom/xiaomi/push/service/aB;->bhm:Lcom/xiaomi/push/service/XMPushService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Lcom/xiaomi/push/service/v;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[BLandroid/content/Intent;Z)V

    .line 314
    iget-object v2, p0, Lcom/xiaomi/push/service/aC;->bhp:Lcom/xiaomi/push/service/aB;

    iget-object v2, v2, Lcom/xiaomi/push/service/aB;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/service/g;->eg(Landroid/content/Context;)Lcom/xiaomi/push/service/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/service/g;->a(Lcom/xiaomi/push/service/a/a;)I

    move-result v2

    .line 315
    if-nez v2, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show a exit geofence message. then remove this message failed. message_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_4
    return-void
.end method
