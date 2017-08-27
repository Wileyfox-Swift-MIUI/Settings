.class public Lcom/xiaomi/push/service/aL;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/xiaomi/push/service/aL;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1574
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1575
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/xiaomi/push/service/aL;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->JU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/xiaomi/push/service/aL;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->k(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1583
    :goto_0
    return-void

    .line 1581
    :cond_0
    const-string v0, "should not connect. quit the job."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1587
    const-string v0, "do reconnect.."

    return-object v0
.end method
