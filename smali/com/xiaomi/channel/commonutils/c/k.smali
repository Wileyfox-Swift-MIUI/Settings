.class Lcom/xiaomi/channel/commonutils/c/k;
.super Landroid/os/Handler;
.source "SerializedAsyncTaskProcessor.java"


# instance fields
.field final synthetic aZA:Lcom/xiaomi/channel/commonutils/c/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/c/j;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/k;->aZA:Lcom/xiaomi/channel/commonutils/c/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/channel/commonutils/c/n;

    .line 52
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/n;->Gq()V

    .line 57
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    return-void

    .line 54
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/n;->Gs()V

    goto :goto_0
.end method
