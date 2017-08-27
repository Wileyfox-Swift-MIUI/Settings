.class Lcom/xiaomi/push/service/av;
.super Ljava/lang/Object;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/smack/g;


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/xiaomi/push/service/av;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/d/b;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/xiaomi/push/service/av;->bhm:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/aK;

    iget-object v2, p0, Lcom/xiaomi/push/service/av;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/push/service/aK;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/d/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 138
    return-void
.end method

.method public b(Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xiaomi/push/service/av;->bhm:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/aS;

    iget-object v2, p0, Lcom/xiaomi/push/service/av;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/push/service/aS;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 133
    return-void
.end method
