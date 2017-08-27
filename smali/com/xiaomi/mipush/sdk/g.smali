.class public Lcom/xiaomi/mipush/sdk/g;
.super Ljava/lang/Object;
.source "MessageHandleService.java"


# instance fields
.field private bao:Lcom/xiaomi/mipush/sdk/p;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/xiaomi/mipush/sdk/p;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/g;->bao:Lcom/xiaomi/mipush/sdk/p;

    .line 101
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/g;->intent:Landroid/content/Intent;

    .line 102
    return-void
.end method


# virtual methods
.method public GM()Lcom/xiaomi/mipush/sdk/p;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->bao:Lcom/xiaomi/mipush/sdk/p;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->intent:Landroid/content/Intent;

    return-object v0
.end method
