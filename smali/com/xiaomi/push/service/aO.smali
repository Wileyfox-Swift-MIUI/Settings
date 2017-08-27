.class Lcom/xiaomi/push/service/aO;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/xiaomi/push/service/aO;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1395
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aO;->mIntent:Landroid/content/Intent;

    .line 1396
    iput-object p2, p0, Lcom/xiaomi/push/service/aO;->mIntent:Landroid/content/Intent;

    .line 1397
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/xiaomi/push/service/aO;->bhm:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/aO;->mIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    .line 1402
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle intent action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aO;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
