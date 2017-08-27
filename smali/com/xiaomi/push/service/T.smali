.class Lcom/xiaomi/push/service/T;
.super Ljava/lang/Object;
.source "PushClientsManager.java"

# interfaces
.implements Lcom/xiaomi/push/service/U;


# instance fields
.field final synthetic bga:Lcom/xiaomi/push/service/S;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/S;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/xiaomi/push/service/T;->bga:Lcom/xiaomi/push/service/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V
    .locals 4

    .prologue
    .line 226
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgc:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->bga:Lcom/xiaomi/push/service/S;

    invoke-static {v0}, Lcom/xiaomi/push/service/S;->c(Lcom/xiaomi/push/service/S;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/T;->bga:Lcom/xiaomi/push/service/S;

    invoke-static {v1}, Lcom/xiaomi/push/service/S;->b(Lcom/xiaomi/push/service/S;)Lcom/xiaomi/push/service/aJ;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;J)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->bga:Lcom/xiaomi/push/service/S;

    invoke-static {v0}, Lcom/xiaomi/push/service/S;->c(Lcom/xiaomi/push/service/S;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/T;->bga:Lcom/xiaomi/push/service/S;

    invoke-static {v1}, Lcom/xiaomi/push/service/S;->b(Lcom/xiaomi/push/service/S;)Lcom/xiaomi/push/service/aJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/aP;)V

    goto :goto_0
.end method
