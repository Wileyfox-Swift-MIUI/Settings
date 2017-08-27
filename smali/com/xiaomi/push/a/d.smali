.class Lcom/xiaomi/push/a/d;
.super Lcom/xiaomi/channel/commonutils/c/n;
.source "LogUploader.java"


# instance fields
.field final synthetic bcF:Lcom/xiaomi/push/a/b;

.field bcG:Lcom/xiaomi/channel/commonutils/c/n;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/a/b;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/xiaomi/push/a/d;->bcF:Lcom/xiaomi/push/a/b;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/n;-><init>()V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->bcF:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/a/f;

    .line 270
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/a/f;->HC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->bcF:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/c/n;

    iput-object v0, p0, Lcom/xiaomi/push/a/d;->bcG:Lcom/xiaomi/channel/commonutils/c/n;

    .line 272
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->bcG:Lcom/xiaomi/channel/commonutils/c/n;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/n;->Gr()V

    .line 274
    :cond_0
    return-void
.end method

.method public Gs()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->bcG:Lcom/xiaomi/channel/commonutils/c/n;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->bcG:Lcom/xiaomi/channel/commonutils/c/n;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/n;->Gs()V

    .line 281
    :cond_0
    return-void
.end method
