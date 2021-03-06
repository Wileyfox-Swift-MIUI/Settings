.class public Lcom/xiaomi/push/service/t;
.super Lcom/xiaomi/push/service/aP;
.source "MIPushAppRegisterJob.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private bae:Ljava/lang/String;

.field private beH:Lcom/xiaomi/push/service/XMPushService;

.field private packageName:Ljava/lang/String;

.field private payload:[B


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 25
    iput-object p1, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    .line 26
    iput-object p2, p0, Lcom/xiaomi/push/service/t;->packageName:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/xiaomi/push/service/t;->payload:[B

    .line 28
    iput-object p3, p0, Lcom/xiaomi/push/service/t;->appId:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/xiaomi/push/service/t;->bae:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/q;->el(Landroid/content/Context;)Lcom/xiaomi/push/service/p;

    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/t;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/t;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/service/t;->bae:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/xiaomi/push/service/q;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/p;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 45
    :goto_0
    if-nez v0, :cond_2

    .line 46
    const-string v0, "no account for mipush"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    const v1, 0x42c1d82

    const-string v2, "no account."

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/u;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 76
    :cond_0
    :goto_1
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 43
    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->eI(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    iget-object v1, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/p;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/D;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V

    .line 55
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/S;)V

    .line 60
    :goto_2
    iget-object v1, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    :try_start_1
    iget-object v1, v0, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v2, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgd:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v1, v2, :cond_4

    .line 64
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/t;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/t;->payload:[B

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/D;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    :try_end_1
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 68
    :catch_2
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 70
    iget-object v1, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_1

    .line 57
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/S;

    goto :goto_2

    .line 65
    :cond_4
    :try_start_2
    iget-object v1, v0, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v2, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v1, v2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/aI;

    iget-object v3, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/push/service/aI;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V
    :try_end_2
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->beH:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->cq(Z)V

    goto :goto_1
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "register app"

    return-object v0
.end method
