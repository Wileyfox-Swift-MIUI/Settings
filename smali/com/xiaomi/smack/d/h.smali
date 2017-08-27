.class final Lcom/xiaomi/smack/d/h;
.super Lcom/xiaomi/channel/commonutils/c/n;
.source "TrafficUtils.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/xiaomi/smack/d/h;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/n;-><init>()V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 3

    .prologue
    .line 132
    .line 133
    # getter for: Lcom/xiaomi/smack/d/g;->lock:Ljava/lang/Object;
    invoke-static {}, Lcom/xiaomi/smack/d/g;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 134
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lcom/xiaomi/smack/d/g;->bmf:Ljava/util/List;
    invoke-static {}, Lcom/xiaomi/smack/d/g;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    # getter for: Lcom/xiaomi/smack/d/g;->bmf:Ljava/util/List;
    invoke-static {}, Lcom/xiaomi/smack/d/g;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v1, p0, Lcom/xiaomi/smack/d/h;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/smack/d/g;->j(Landroid/content/Context;Ljava/util/List;)V

    .line 138
    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
