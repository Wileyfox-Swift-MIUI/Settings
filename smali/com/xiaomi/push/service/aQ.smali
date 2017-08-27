.class Lcom/xiaomi/push/service/aQ;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/xiaomi/push/service/aQ;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1316
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1317
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/xiaomi/push/service/aQ;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/i;->quit()V

    .line 1322
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1326
    const-string v0, "ask the job queue to quit"

    return-object v0
.end method
