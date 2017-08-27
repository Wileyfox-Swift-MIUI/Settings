.class Lcom/xiaomi/push/service/aJ;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field private final bhu:Lcom/xiaomi/push/service/S;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/S;)V
    .locals 1

    .prologue
    .line 1477
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1478
    iput-object p1, p0, Lcom/xiaomi/push/service/aJ;->bhu:Lcom/xiaomi/push/service/S;

    .line 1479
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1483
    iget-object v0, p0, Lcom/xiaomi/push/service/aJ;->bhu:Lcom/xiaomi/push/service/S;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x15

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1485
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1494
    instance-of v0, p1, Lcom/xiaomi/push/service/aJ;

    if-nez v0, :cond_0

    .line 1495
    const/4 v0, 0x0

    .line 1497
    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/xiaomi/push/service/aJ;

    iget-object v0, p1, Lcom/xiaomi/push/service/aJ;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v0, v0, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/service/aJ;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind time out. chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aJ;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/xiaomi/push/service/aJ;->bhu:Lcom/xiaomi/push/service/S;

    iget-object v0, v0, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
