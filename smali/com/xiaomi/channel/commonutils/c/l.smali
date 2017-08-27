.class Lcom/xiaomi/channel/commonutils/c/l;
.super Ljava/lang/Object;
.source "SerializedAsyncTaskProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aZA:Lcom/xiaomi/channel/commonutils/c/j;

.field final synthetic aZB:Lcom/xiaomi/channel/commonutils/c/n;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/c/j;Lcom/xiaomi/channel/commonutils/c/n;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/l;->aZA:Lcom/xiaomi/channel/commonutils/c/j;

    iput-object p2, p0, Lcom/xiaomi/channel/commonutils/c/l;->aZB:Lcom/xiaomi/channel/commonutils/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/l;->aZA:Lcom/xiaomi/channel/commonutils/c/j;

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/l;->aZB:Lcom/xiaomi/channel/commonutils/c/n;

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/c/j;->a(Lcom/xiaomi/channel/commonutils/c/n;)V

    .line 91
    return-void
.end method
