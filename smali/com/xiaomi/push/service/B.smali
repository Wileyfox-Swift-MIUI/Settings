.class final Lcom/xiaomi/push/service/B;
.super Lcom/xiaomi/push/service/aP;
.source "MIPushEventProcessor.java"


# instance fields
.field final synthetic bfm:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

.field final synthetic bfp:Ljava/lang/String;

.field final synthetic bfq:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 535
    iput-object p2, p0, Lcom/xiaomi/push/service/B;->bfm:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/B;->bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    iput-object p4, p0, Lcom/xiaomi/push/service/B;->bfp:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/B;->bfq:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 4

    .prologue
    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/B;->bfm:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/B;->bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/v;->b(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 542
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    const-string v2, "error"

    iget-object v3, p0, Lcom/xiaomi/push/service/B;->bfp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ac(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    const-string v2, "reason"

    iget-object v3, p0, Lcom/xiaomi/push/service/B;->bfq:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ac(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/xiaomi/push/service/B;->bfm:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/D;->e(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 547
    iget-object v1, p0, Lcom/xiaomi/push/service/B;->bfm:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    const-string v0, "send wrong message ack for message."

    return-object v0
.end method
