.class Lcom/xiaomi/push/service/aU;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;

.field bhu:Lcom/xiaomi/push/service/S;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V
    .locals 1

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/xiaomi/push/service/aU;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1510
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aU;->bhu:Lcom/xiaomi/push/service/S;

    .line 1511
    iput-object p2, p0, Lcom/xiaomi/push/service/aU;->bhu:Lcom/xiaomi/push/service/S;

    .line 1512
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 6

    .prologue
    .line 1517
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aU;->bhu:Lcom/xiaomi/push/service/S;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object v0, p0, Lcom/xiaomi/push/service/aU;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aU;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/aU;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v2, v2, Lcom/xiaomi/push/service/S;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->Y(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    iget-object v0, p0, Lcom/xiaomi/push/service/aU;->bhu:Lcom/xiaomi/push/service/S;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgc:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1522
    iget-object v0, p0, Lcom/xiaomi/push/service/aU;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aU;->bhu:Lcom/xiaomi/push/service/S;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/push/service/S;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    :goto_0
    return-void

    .line 1523
    :catch_0
    move-exception v0

    .line 1524
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 1525
    iget-object v1, p0, Lcom/xiaomi/push/service/aU;->bhm:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rebind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aU;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
