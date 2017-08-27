.class Lcom/xiaomi/c/h;
.super Lcom/xiaomi/c/b;
.source "HostManager.java"


# instance fields
.field final synthetic bcl:Lcom/xiaomi/c/f;

.field bcm:Lcom/xiaomi/c/b;

.field final synthetic bcn:Lcom/xiaomi/c/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/c/f;Ljava/lang/String;Lcom/xiaomi/c/b;)V
    .locals 1

    .prologue
    .line 249
    iput-object p1, p0, Lcom/xiaomi/c/h;->bcl:Lcom/xiaomi/c/f;

    iput-object p3, p0, Lcom/xiaomi/c/h;->bcn:Lcom/xiaomi/c/b;

    invoke-direct {p0, p2}, Lcom/xiaomi/c/b;-><init>(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/xiaomi/c/h;->bcn:Lcom/xiaomi/c/b;

    iput-object v0, p0, Lcom/xiaomi/c/h;->bcm:Lcom/xiaomi/c/b;

    .line 252
    iget-object v0, p0, Lcom/xiaomi/c/h;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/c/h;->host:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/xiaomi/c/h;->bcn:Lcom/xiaomi/c/b;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/xiaomi/c/h;->bcn:Lcom/xiaomi/c/b;

    iget-object v0, v0, Lcom/xiaomi/c/b;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/c/h;->ip:Ljava/lang/String;

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public Hn()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/xiaomi/c/a;)V
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/h;->bcm:Lcom/xiaomi/c/b;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaomi/c/h;->bcm:Lcom/xiaomi/c/b;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/c/b;->a(Ljava/lang/String;Lcom/xiaomi/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ch(Z)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget-object v0, p0, Lcom/xiaomi/c/h;->bcm:Lcom/xiaomi/c/b;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaomi/c/h;->bcm:Lcom/xiaomi/c/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b;->ch(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    :cond_0
    sget-object v3, Lcom/xiaomi/c/f;->bbY:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 272
    :try_start_1
    sget-object v0, Lcom/xiaomi/c/f;->bbY:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaomi/c/h;->host:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 273
    if-eqz v0, :cond_4

    .line 277
    iget-object v1, p0, Lcom/xiaomi/c/h;->bcm:Lcom/xiaomi/c/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/c/h;->bcm:Lcom/xiaomi/c/b;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/xiaomi/c/b;->ch(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 278
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 280
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v2

    .line 277
    goto :goto_0

    .line 283
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/c/h;->host:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/xiaomi/c/h;->host:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    monitor-exit p0

    return-object v2
.end method
