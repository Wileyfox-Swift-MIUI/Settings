.class Lcom/xiaomi/push/service/aF;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic bhs:I

.field final synthetic bht:[B

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/xiaomi/push/service/aF;->bhm:Lcom/xiaomi/push/service/XMPushService;

    iput p3, p0, Lcom/xiaomi/push/service/aF;->bhs:I

    iput-object p4, p0, Lcom/xiaomi/push/service/aF;->bht:[B

    iput-object p5, p0, Lcom/xiaomi/push/service/aF;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 3

    .prologue
    .line 764
    iget-object v0, p0, Lcom/xiaomi/push/service/aF;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/q;->em(Landroid/content/Context;)V

    .line 765
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->eG(Ljava/lang/String;)V

    .line 766
    iget v0, p0, Lcom/xiaomi/push/service/aF;->bhs:I

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/a;->eG(I)V

    .line 767
    iget-object v0, p0, Lcom/xiaomi/push/service/aF;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->g(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/c;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/smack/c;->KP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/c;->setHost(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/xiaomi/push/service/aF;->bhm:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/aF;->bht:[B

    iget-object v2, p0, Lcom/xiaomi/push/service/aF;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->c([BLjava/lang/String;)V

    .line 769
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    const-string v0, "clear account cache."

    return-object v0
.end method
