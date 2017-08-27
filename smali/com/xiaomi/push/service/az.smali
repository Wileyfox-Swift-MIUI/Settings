.class Lcom/xiaomi/push/service/az;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/xiaomi/push/service/az;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xiaomi/push/service/az;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/D;->d(Lcom/xiaomi/push/service/XMPushService;)V

    .line 203
    iget-object v0, p0, Lcom/xiaomi/push/service/az;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/xiaomi/push/service/az;->bhm:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->cq(Z)V

    .line 206
    :cond_0
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "prepare the mi push account."

    return-object v0
.end method
