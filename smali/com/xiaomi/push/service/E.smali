.class final Lcom/xiaomi/push/service/E;
.super Ljava/lang/Object;
.source "MIPushHelper.java"

# interfaces
.implements Lcom/xiaomi/push/service/U;


# instance fields
.field final synthetic bfu:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/xiaomi/push/service/E;->bfu:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgd:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/xiaomi/push/service/E;->bfu:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/u;->b(Lcom/xiaomi/push/service/XMPushService;)V

    .line 116
    iget-object v0, p0, Lcom/xiaomi/push/service/E;->bfu:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/u;->c(Lcom/xiaomi/push/service/XMPushService;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaomi/push/service/E;->bfu:Lcom/xiaomi/push/service/XMPushService;

    const v1, 0x42c1d81

    const-string v2, " the push is not connected."

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/u;->b(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
