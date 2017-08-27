.class Lcom/xiaomi/push/service/aI;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;

.field bhu:Lcom/xiaomi/push/service/S;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V
    .locals 1

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/xiaomi/push/service/aI;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1435
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aI;->bhu:Lcom/xiaomi/push/service/S;

    .line 1436
    iput-object p2, p0, Lcom/xiaomi/push/service/aI;->bhu:Lcom/xiaomi/push/service/S;

    .line 1437
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 6

    .prologue
    .line 1442
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aI;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1443
    const-string v0, "trying bind while the connection is not created, quit!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 1464
    :goto_0
    return-void

    .line 1447
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aI;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/aI;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v2, v2, Lcom/xiaomi/push/service/S;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 1449
    if-nez v0, :cond_1

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore bind because the channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aI;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 1462
    iget-object v1, p0, Lcom/xiaomi/push/service/aI;->bhm:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0

    .line 1451
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v2, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v1, v2, :cond_2

    .line 1452
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgc:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v1, p0, Lcom/xiaomi/push/service/aI;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/push/service/S;)V

    .line 1455
    iget-object v1, p0, Lcom/xiaomi/push/service/aI;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/e/j;->b(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V

    goto :goto_0

    .line 1457
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying duplicate bind, ingore! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aI;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
