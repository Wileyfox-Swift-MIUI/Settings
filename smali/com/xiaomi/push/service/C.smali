.class final Lcom/xiaomi/push/service/C;
.super Lcom/xiaomi/push/service/aP;
.source "MIPushEventProcessor.java"


# instance fields
.field final synthetic bfm:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

.field final synthetic bfr:Z

.field final synthetic bfs:Z

.field final synthetic bft:Z


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)V
    .locals 0

    .prologue
    .line 569
    iput-object p2, p0, Lcom/xiaomi/push/service/C;->bfm:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/C;->bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    iput-boolean p4, p0, Lcom/xiaomi/push/service/C;->bfr:Z

    iput-boolean p5, p0, Lcom/xiaomi/push/service/C;->bfs:Z

    iput-boolean p6, p0, Lcom/xiaomi/push/service/C;->bft:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 5

    .prologue
    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/C;->bfm:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/C;->bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    iget-boolean v2, p0, Lcom/xiaomi/push/service/C;->bfr:Z

    iget-boolean v3, p0, Lcom/xiaomi/push/service/C;->bfs:Z

    iget-boolean v4, p0, Lcom/xiaomi/push/service/C;->bft:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/service/v;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/xiaomi/push/service/C;->bfm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/D;->e(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 580
    iget-object v1, p0, Lcom/xiaomi/push/service/C;->bfm:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    const-string v0, "send wrong message ack for message."

    return-object v0
.end method
