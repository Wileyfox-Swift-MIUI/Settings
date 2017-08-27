.class Lcom/xiaomi/push/service/aq;
.super Ljava/lang/Object;
.source "TinyDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bgU:Lcom/xiaomi/push/service/ak;

.field bgV:Lcom/xiaomi/push/service/aj;


# direct methods
.method private constructor <init>(Lcom/xiaomi/push/service/ak;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/xiaomi/push/service/aq;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/ak;Lcom/xiaomi/push/service/al;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/aq;-><init>(Lcom/xiaomi/push/service/ak;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 281
    iget-object v1, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    iget-object v1, v1, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    iget-boolean v1, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    iget-object v1, v1, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    const-string v2, "push_sdk_channel"

    iput-object v2, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    invoke-static {}, Lcom/xiaomi/push/service/ah;->JL()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/push/service/aj;->id:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/xiaomi/push/service/aq;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-static {v1}, Lcom/xiaomi/push/service/ak;->e(Lcom/xiaomi/push/service/ak;)Lcom/xiaomi/push/service/an;

    move-result-object v3

    .line 291
    const/4 v2, 0x0

    .line 292
    const/4 v1, 0x0

    .line 294
    if-nez v3, :cond_0

    .line 295
    const-string v2, "uploader is null"

    move v1, v0

    .line 299
    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/xiaomi/push/service/aq;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-virtual {v4}, Lcom/xiaomi/push/service/ak;->JN()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    const-string v2, "TinyDataManager need init"

    move v1, v0

    .line 304
    :cond_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    iget-object v4, v4, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 305
    const-string v2, "request channel is null"

    move v1, v0

    .line 309
    :cond_2
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    invoke-interface {v3, v4}, Lcom/xiaomi/push/service/an;->a(Lcom/xiaomi/push/service/aj;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 310
    const-string v1, "uploader refuse upload"

    .line 314
    :goto_1
    if-eqz v0, :cond_4

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is added to pending list. Pending Reason is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/xiaomi/push/service/aq;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-static {v0}, Lcom/xiaomi/push/service/ak;->d(Lcom/xiaomi/push/service/ak;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :goto_2
    return-void

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    iget-object v1, v1, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    iget-object v2, p0, Lcom/xiaomi/push/service/aq;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-static {v2}, Lcom/xiaomi/push/service/ak;->c(Lcom/xiaomi/push/service/ak;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/aj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is uploaded immediately."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    iget-object v1, p0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v3, v0}, Lcom/xiaomi/push/service/an;->k(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_5
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method
