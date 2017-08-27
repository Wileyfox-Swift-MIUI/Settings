.class Lcom/xiaomi/push/service/aT;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;

.field bhw:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Z)V
    .locals 1

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/xiaomi/push/service/aT;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1638
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1639
    iput-boolean p2, p0, Lcom/xiaomi/push/service/aT;->bhw:Z

    .line 1640
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 3

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/xiaomi/push/service/aT;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/push/service/aT;->bhw:Z

    if-nez v0, :cond_0

    .line 1647
    invoke-static {}, Lcom/xiaomi/e/j;->Ln()V

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aT;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/push/service/aT;->bhw:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->cB(Z)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    :cond_1
    :goto_0
    return-void

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 1652
    iget-object v1, p0, Lcom/xiaomi/push/service/aT;->bhm:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1659
    const-string v0, "send ping.."

    return-object v0
.end method
