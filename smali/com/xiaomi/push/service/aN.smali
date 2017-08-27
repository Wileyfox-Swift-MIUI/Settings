.class public Lcom/xiaomi/push/service/aN;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;

.field public bhv:Ljava/lang/Exception;

.field public reason:I


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/xiaomi/push/service/aN;->bhm:Lcom/xiaomi/push/service/XMPushService;

    .line 1596
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    .line 1597
    iput p2, p0, Lcom/xiaomi/push/service/aN;->reason:I

    .line 1598
    iput-object p3, p0, Lcom/xiaomi/push/service/aN;->bhv:Ljava/lang/Exception;

    .line 1599
    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 3

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/xiaomi/push/service/aN;->bhm:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/push/service/aN;->reason:I

    iget-object v2, p0, Lcom/xiaomi/push/service/aN;->bhv:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 1603
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1607
    const-string v0, "disconnect the connection."

    return-object v0
.end method
