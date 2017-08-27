.class Lcom/xiaomi/push/service/aG;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic bht:[B

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/xiaomi/push/service/aG;->bhm:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/aG;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/aG;->bht:[B

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 3

    .prologue
    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aG;->bhm:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/aG;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/aG;->bht:[B

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/D;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    return-void

    .line 899
    :catch_0
    move-exception v0

    .line 900
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 901
    iget-object v1, p0, Lcom/xiaomi/push/service/aG;->bhm:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    const-string v0, "send mi push message"

    return-object v0
.end method
