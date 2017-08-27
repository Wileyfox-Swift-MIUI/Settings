.class public Lcom/xiaomi/push/service/am;
.super Ljava/lang/Object;
.source "TinyDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field bgS:Lcom/xiaomi/push/service/an;

.field bgT:Ljava/lang/String;

.field final synthetic bgU:Lcom/xiaomi/push/service/ak;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/ak;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/xiaomi/push/service/am;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xiaomi/push/service/am;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-static {v0}, Lcom/xiaomi/push/service/ak;->b(Lcom/xiaomi/push/service/ak;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/am;->bgT:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/am;->bgS:Lcom/xiaomi/push/service/an;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/xiaomi/push/service/am;->bgU:Lcom/xiaomi/push/service/ak;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add uploader, provider is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/am;->bgT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ak;->a(Lcom/xiaomi/push/service/ak;Ljava/lang/String;)Z

    .line 135
    return-void
.end method
