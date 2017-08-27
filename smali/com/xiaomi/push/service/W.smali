.class public Lcom/xiaomi/push/service/W;
.super Lcom/xiaomi/push/service/ag;
.source "PushHostManagerFactory.java"

# interfaces
.implements Lcom/xiaomi/c/i;


# instance fields
.field private beH:Lcom/xiaomi/push/service/XMPushService;

.field private bgr:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/xiaomi/push/service/ag;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/xiaomi/push/service/W;->beH:Lcom/xiaomi/push/service/XMPushService;

    .line 46
    return-void
.end method

.method public static e(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 7

    .prologue
    .line 35
    new-instance v0, Lcom/xiaomi/push/service/W;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/W;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 36
    invoke-static {}, Lcom/xiaomi/push/service/ae;->JH()Lcom/xiaomi/push/service/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/push/service/ag;)V

    .line 38
    const-class v6, Lcom/xiaomi/c/f;

    monitor-enter v6

    .line 39
    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/c/f;->a(Lcom/xiaomi/c/i;)V

    .line 40
    const/4 v1, 0x0

    new-instance v2, Lcom/xiaomi/push/service/X;

    invoke-direct {v2}, Lcom/xiaomi/push/service/X;-><init>()V

    const-string v3, "0"

    const-string v4, "push"

    const-string v5, "2.2"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/c/f;->a(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    monitor-exit v6

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/j;Ljava/lang/String;)Lcom/xiaomi/c/f;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/xiaomi/push/service/Y;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaomi/push/service/Y;-><init>(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/j;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/b/b;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public d(Lcom/xiaomi/push/b/e;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Ik()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Ij()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/push/service/W;->bgr:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch bucket :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Ij()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/push/service/W;->bgr:J

    .line 111
    invoke-static {}, Lcom/xiaomi/c/f;->Hs()Lcom/xiaomi/c/f;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/xiaomi/c/f;->clear()V

    .line 113
    invoke-virtual {v0}, Lcom/xiaomi/c/f;->Hu()V

    .line 115
    iget-object v2, p0, Lcom/xiaomi/push/service/W;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->Ka()Lcom/xiaomi/smack/a;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v3}, Lcom/xiaomi/smack/a;->KF()Lcom/xiaomi/smack/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/smack/c;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/c/f;->dI(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/xiaomi/c/b;->Ho()Ljava/util/ArrayList;

    move-result-object v4

    .line 120
    const/4 v2, 0x1

    .line 121
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {v3}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 129
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const-string v0, "bucket changed, force reconnect"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/xiaomi/push/service/W;->beH:Lcom/xiaomi/push/service/XMPushService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 133
    iget-object v0, p0, Lcom/xiaomi/push/service/W;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->cq(Z)V

    .line 138
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
