.class Lcom/xiaomi/push/service/aE;
.super Lcom/xiaomi/push/service/aP;
.source "XMPushService.java"


# instance fields
.field final synthetic bhq:Ljava/util/ArrayList;

.field final synthetic bhr:Lcom/xiaomi/push/service/aD;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/aD;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/xiaomi/push/service/aE;->bhr:Lcom/xiaomi/push/service/aD;

    iput-object p3, p0, Lcom/xiaomi/push/service/aE;->bhq:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 6

    .prologue
    .line 376
    iget-object v0, p0, Lcom/xiaomi/push/service/aE;->bhr:Lcom/xiaomi/push/service/aD;

    iget-object v0, v0, Lcom/xiaomi/push/service/aD;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 377
    iget-object v0, p0, Lcom/xiaomi/push/service/aE;->bhr:Lcom/xiaomi/push/service/aD;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/aD;->a(Lcom/xiaomi/push/service/aD;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    iget-object v0, p0, Lcom/xiaomi/push/service/aE;->bhq:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/ah;->b(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 382
    const-string v4, "uploadWay"

    const-string v5, "longXMPushService"

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->ac(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->bmK:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v1, v2, v0, v4}, Lcom/xiaomi/push/service/D;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 385
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 386
    iget-object v4, p0, Lcom/xiaomi/push/service/aE;->bhr:Lcom/xiaomi/push/service/aD;

    iget-object v4, v4, Lcom/xiaomi/push/service/aD;->bhm:Lcom/xiaomi/push/service/XMPushService;

    const/4 v5, 0x1

    invoke-static {v4, v1, v0, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[BZ)V

    goto :goto_0

    .line 389
    :cond_0
    const-string v0, "Get a null XmPushActionNotification when TinyDataHelper.transToTriftObj() in XMPushService."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 391
    :cond_1
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const-string v0, "Send tiny data."

    return-object v0
.end method
