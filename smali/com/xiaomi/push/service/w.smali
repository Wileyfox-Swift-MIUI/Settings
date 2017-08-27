.class final Lcom/xiaomi/push/service/w;
.super Lcom/xiaomi/push/service/aP;
.source "MIPushEventProcessor.java"


# instance fields
.field final synthetic bfm:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 0

    .prologue
    .line 363
    iput-object p2, p0, Lcom/xiaomi/push/service/w;->bfm:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/w;->bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 3

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/w;->bfm:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/w;->bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 370
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/w;->bfn:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nd()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v1, v2}, Lcom/xiaomi/push/service/D;->S(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/D;->e(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 373
    iget-object v1, p0, Lcom/xiaomi/push/service/w;->bfm:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string v0, "send app absent message."

    return-object v0
.end method
