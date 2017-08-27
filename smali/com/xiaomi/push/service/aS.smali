.class Lcom/xiaomi/push/service/aS;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field private bgD:Lcom/xiaomi/smack/packet/e;

.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/xiaomi/push/service/aS;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1375
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aS;->bgD:Lcom/xiaomi/smack/packet/e;

    .line 1376
    iput-object p2, p0, Lcom/xiaomi/push/service/aS;->bgD:Lcom/xiaomi/smack/packet/e;

    .line 1377
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/xiaomi/push/service/aS;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->j(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aS;->bgD:Lcom/xiaomi/smack/packet/e;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PacketSync;->d(Lcom/xiaomi/smack/packet/e;)V

    .line 1382
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1386
    const-string v0, "receive a message."

    return-object v0
.end method
