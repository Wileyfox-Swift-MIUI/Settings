.class public Lcom/xiaomi/push/service/ao;
.super Ljava/lang/Object;
.source "TinyDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bgU:Lcom/xiaomi/push/service/ak;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/ak;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xiaomi/push/service/ao;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/ao;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xiaomi/push/service/ao;->context:Landroid/content/Context;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xiaomi/push/service/ao;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-static {v0}, Lcom/xiaomi/push/service/ak;->a(Lcom/xiaomi/push/service/ak;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "[TinyDataManager]: please do not init TinyDataManager repeatly."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ao;->bgU:Lcom/xiaomi/push/service/ak;

    iget-object v1, p0, Lcom/xiaomi/push/service/ao;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ak;->a(Lcom/xiaomi/push/service/ak;Landroid/content/Context;)Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/xiaomi/push/service/ai;

    iget-object v1, p0, Lcom/xiaomi/push/service/ao;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/ai;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v1, p0, Lcom/xiaomi/push/service/ao;->bgU:Lcom/xiaomi/push/service/ak;

    const-string v2, "SHORT_UPLOADER_FROM_SELF"

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/ak;->a(Lcom/xiaomi/push/service/an;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaomi/push/service/ao;->bgU:Lcom/xiaomi/push/service/ak;

    const-string v1, "Init"

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ak;->a(Lcom/xiaomi/push/service/ak;Ljava/lang/String;)Z

    goto :goto_0
.end method
