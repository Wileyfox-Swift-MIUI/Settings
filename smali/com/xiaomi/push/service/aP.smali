.class public abstract Lcom/xiaomi/push/service/aP;
.super Lcom/xiaomi/push/service/l;
.source "XMPushService.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/l;-><init>(I)V

    .line 1355
    return-void
.end method


# virtual methods
.method public abstract Gr()V
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1359
    iget v0, p0, Lcom/xiaomi/push/service/aP;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/aP;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JOB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/aP;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 1362
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/aP;->Gr()V

    .line 1363
    return-void
.end method
