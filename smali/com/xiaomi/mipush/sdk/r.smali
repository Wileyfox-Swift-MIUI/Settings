.class Lcom/xiaomi/mipush/sdk/r;
.super Landroid/database/ContentObserver;
.source "PushServiceClient.java"


# instance fields
.field final synthetic baE:Lcom/xiaomi/mipush/sdk/q;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/q;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/r;->baE:Lcom/xiaomi/mipush/sdk/q;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->baE:Lcom/xiaomi/mipush/sdk/q;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/r;->baE:Lcom/xiaomi/mipush/sdk/q;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/q;->a(Lcom/xiaomi/mipush/sdk/q;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/Z;->eq(Landroid/content/Context;)Lcom/xiaomi/push/service/Z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/Z;->JC()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/q;->a(Lcom/xiaomi/mipush/sdk/q;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 326
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->baE:Lcom/xiaomi/mipush/sdk/q;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/q;->b(Lcom/xiaomi/mipush/sdk/q;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->baE:Lcom/xiaomi/mipush/sdk/q;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/q;->a(Lcom/xiaomi/mipush/sdk/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 328
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->baE:Lcom/xiaomi/mipush/sdk/q;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/q;->a(Lcom/xiaomi/mipush/sdk/q;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->baE:Lcom/xiaomi/mipush/sdk/q;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/q;->Hb()V

    .line 332
    :cond_0
    return-void
.end method
