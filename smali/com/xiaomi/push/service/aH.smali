.class Lcom/xiaomi/push/service/aH;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/xiaomi/push/service/aH;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1121
    iget-object v0, p0, Lcom/xiaomi/push/service/aH;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/xiaomi/push/service/aH;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->a(ILjava/lang/Exception;)V

    .line 1123
    iget-object v0, p0, Lcom/xiaomi/push/service/aH;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/a;

    .line 1125
    :cond_0
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    const-string v0, "disconnect for service destroy."

    return-object v0
.end method
