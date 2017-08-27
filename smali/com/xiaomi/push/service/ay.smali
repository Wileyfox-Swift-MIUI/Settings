.class Lcom/xiaomi/push/service/ay;
.super Lcom/xiaomi/smack/c;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/xiaomi/push/service/ay;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/smack/c;-><init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V

    return-void
.end method


# virtual methods
.method public Ke()[B
    .locals 3

    .prologue
    .line 160
    :try_start_0
    new-instance v0, Lcom/xiaomi/push/b/e;

    invoke-direct {v0}, Lcom/xiaomi/push/b/e;-><init>()V

    .line 161
    invoke-static {}, Lcom/xiaomi/push/service/ae;->JH()Lcom/xiaomi/push/service/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/ae;->HE()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/e;->eX(I)Lcom/xiaomi/push/b/e;

    .line 162
    invoke-virtual {v0}, Lcom/xiaomi/push/b/e;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOBBString err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    goto :goto_0
.end method
