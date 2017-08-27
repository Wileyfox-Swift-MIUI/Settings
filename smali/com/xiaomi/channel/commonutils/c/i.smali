.class Lcom/xiaomi/channel/commonutils/c/i;
.super Ljava/lang/Object;
.source "ScheduledJobManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field aZu:Lcom/xiaomi/channel/commonutils/c/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/commonutils/c/h;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/i;->aZu:Lcom/xiaomi/channel/commonutils/c/h;

    .line 40
    return-void
.end method


# virtual methods
.method Gn()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method Go()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/xiaomi/channel/commonutils/c/i;->Gn()V

    .line 45
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aZu:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/h;->run()V

    .line 46
    invoke-virtual {p0}, Lcom/xiaomi/channel/commonutils/c/i;->Go()V

    .line 47
    return-void
.end method
