.class Lcom/xiaomi/push/service/aW;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;

.field bhu:Lcom/xiaomi/push/service/S;

.field bhx:I

.field bhy:Ljava/lang/String;

.field reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/xiaomi/push/service/aW;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1545
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aW;->bhu:Lcom/xiaomi/push/service/S;

    .line 1546
    iput-object p2, p0, Lcom/xiaomi/push/service/aW;->bhu:Lcom/xiaomi/push/service/S;

    .line 1547
    iput p3, p0, Lcom/xiaomi/push/service/aW;->bhx:I

    .line 1548
    iput-object p4, p0, Lcom/xiaomi/push/service/aW;->bhy:Ljava/lang/String;

    .line 1549
    iput-object p5, p0, Lcom/xiaomi/push/service/aW;->reason:Ljava/lang/String;

    .line 1550
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 6

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/xiaomi/push/service/aW;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v0, v0, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/aW;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1556
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aW;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aW;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/aW;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v2, v2, Lcom/xiaomi/push/service/S;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->Y(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aW;->bhu:Lcom/xiaomi/push/service/S;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iget v2, p0, Lcom/xiaomi/push/service/aW;->bhx:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/push/service/aW;->reason:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/service/aW;->bhy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1563
    return-void

    .line 1557
    :catch_0
    move-exception v0

    .line 1558
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 1559
    iget-object v1, p0, Lcom/xiaomi/push/service/aW;->bhm:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbind the channel. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aW;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
