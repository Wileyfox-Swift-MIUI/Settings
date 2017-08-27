.class Lcom/xiaomi/push/service/aK;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field private bgE:Lcom/xiaomi/d/b;

.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/d/b;)V
    .locals 1

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/xiaomi/push/service/aK;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1415
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aK;->bgE:Lcom/xiaomi/d/b;

    .line 1416
    iput-object p2, p0, Lcom/xiaomi/push/service/aK;->bgE:Lcom/xiaomi/d/b;

    .line 1417
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/xiaomi/push/service/aK;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->j(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aK;->bgE:Lcom/xiaomi/d/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PacketSync;->c(Lcom/xiaomi/d/b;)V

    .line 1422
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1426
    const-string v0, "receive a message."

    return-object v0
.end method
