.class final Lcom/xiaomi/push/service/k;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# instance fields
.field private final beT:Lcom/xiaomi/push/service/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/m;)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/xiaomi/push/service/k;->beT:Lcom/xiaomi/push/service/m;

    .line 454
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/k;->beT:Lcom/xiaomi/push/service/m;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 459
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->beT:Lcom/xiaomi/push/service/m;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;Z)Z

    .line 460
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->beT:Lcom/xiaomi/push/service/m;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 461
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 465
    return-void

    .line 461
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 463
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
