.class final Lcom/xiaomi/push/service/m;
.super Ljava/lang/Thread;
.source "JobScheduler.java"


# instance fields
.field private volatile beV:J

.field private volatile beW:Z

.field private beX:J

.field private beY:Lcom/xiaomi/push/service/n;

.field private cancelled:Z

.field private finished:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/m;->beV:J

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/m;->beW:Z

    .line 294
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaomi/push/service/m;->beX:J

    .line 311
    new-instance v0, Lcom/xiaomi/push/service/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/n;-><init>(Lcom/xiaomi/push/service/j;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    .line 320
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/m;->setName(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/m;->setDaemon(Z)V

    .line 322
    invoke-virtual {p0}, Lcom/xiaomi/push/service/m;->start()V

    .line 323
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/m;)Lcom/xiaomi/push/service/n;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/m;Lcom/xiaomi/push/service/o;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/o;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/service/o;)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/n;->b(Lcom/xiaomi/push/service/o;)V

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 422
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/m;Z)Z
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/xiaomi/push/service/m;->finished:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/push/service/m;)Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/xiaomi/push/service/m;->cancelled:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 428
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/push/service/m;->cancelled:Z

    .line 429
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n;->reset()V

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBlocked()Z
    .locals 4

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/xiaomi/push/service/m;->beW:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/m;->beV:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 333
    :goto_0
    monitor-enter p0

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/push/service/m;->cancelled:Z

    if-eqz v0, :cond_0

    .line 336
    monitor-exit p0

    .line 340
    :goto_1
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-boolean v0, p0, Lcom/xiaomi/push/service/m;->finished:Z

    if-eqz v0, :cond_1

    .line 340
    monitor-exit p0

    goto :goto_1

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 350
    :cond_2
    invoke-static {}, Lcom/xiaomi/push/service/i;->Jl()J

    move-result-wide v0

    .line 352
    iget-object v2, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/n;->Jo()Lcom/xiaomi/push/service/o;

    move-result-object v2

    .line 355
    iget-object v3, v2, Lcom/xiaomi/push/service/o;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    :try_start_3
    iget-boolean v4, v2, Lcom/xiaomi/push/service/o;->cancelled:Z

    if-eqz v4, :cond_3

    .line 357
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/n;->delete(I)V

    .line 358
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 362
    :cond_3
    :try_start_5
    iget-wide v4, v2, Lcom/xiaomi/push/service/o;->when:J

    sub-long v0, v4, v0

    .line 363
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 365
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_6

    .line 366
    :try_start_6
    iget-wide v2, p0, Lcom/xiaomi/push/service/m;->beX:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    iget-wide v0, p0, Lcom/xiaomi/push/service/m;->beX:J

    .line 367
    :cond_4
    iget-wide v2, p0, Lcom/xiaomi/push/service/m;->beX:J

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/xiaomi/push/service/m;->beX:J

    .line 368
    iget-wide v2, p0, Lcom/xiaomi/push/service/m;->beX:J

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 369
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/xiaomi/push/service/m;->beX:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 372
    :cond_5
    :try_start_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 375
    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 363
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    .line 377
    :cond_6
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaomi/push/service/m;->beX:J

    .line 381
    iget-object v1, v2, Lcom/xiaomi/push/service/o;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 382
    const/4 v0, 0x0

    .line 383
    :try_start_b
    iget-object v3, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/n;->Jo()Lcom/xiaomi/push/service/o;

    move-result-object v3

    iget-wide v4, v3, Lcom/xiaomi/push/service/o;->when:J

    iget-wide v6, v2, Lcom/xiaomi/push/service/o;->when:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    .line 384
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/n;->a(Lcom/xiaomi/push/service/n;Lcom/xiaomi/push/service/o;)I

    move-result v0

    .line 386
    :cond_7
    iget-boolean v3, v2, Lcom/xiaomi/push/service/o;->cancelled:Z

    if-eqz v3, :cond_8

    .line 387
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    iget-object v3, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    invoke-static {v3, v2}, Lcom/xiaomi/push/service/n;->a(Lcom/xiaomi/push/service/n;Lcom/xiaomi/push/service/o;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/n;->delete(I)V

    .line 388
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 392
    :cond_8
    :try_start_d
    iget-wide v4, v2, Lcom/xiaomi/push/service/o;->when:J

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/push/service/o;->setScheduledTime(J)V

    .line 395
    iget-object v3, p0, Lcom/xiaomi/push/service/m;->beY:Lcom/xiaomi/push/service/n;

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/service/n;->delete(I)V

    .line 397
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/xiaomi/push/service/o;->when:J

    .line 398
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 399
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 403
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/m;->beV:J

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/m;->beW:Z

    .line 405
    iget-object v0, v2, Lcom/xiaomi/push/service/o;->bfc:Lcom/xiaomi/push/service/l;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/l;->run()V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/m;->beW:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_0

    .line 409
    :catchall_2
    move-exception v0

    .line 410
    monitor-enter p0

    .line 411
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/xiaomi/push/service/m;->cancelled:Z

    .line 412
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v0

    .line 398
    :catchall_3
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 412
    :catchall_4
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v0

    .line 345
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 373
    :catch_1
    move-exception v0

    goto :goto_3
.end method
