.class public Lcom/xiaomi/push/service/i;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# static fields
.field private static beS:J

.field private static currentTime:J

.field private static lastTime:J


# instance fields
.field private final beT:Lcom/xiaomi/push/service/m;

.field private final beU:Lcom/xiaomi/push/service/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_0
    sput-wide v0, Lcom/xiaomi/push/service/i;->currentTime:J

    .line 52
    sget-wide v0, Lcom/xiaomi/push/service/i;->currentTime:J

    sput-wide v0, Lcom/xiaomi/push/service/i;->lastTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/i;-><init>(Z)V

    .line 518
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/i;-><init>(Ljava/lang/String;Z)V

    .line 502
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    if-nez p1, :cond_0

    .line 489
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/m;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/push/service/m;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    .line 492
    new-instance v0, Lcom/xiaomi/push/service/k;

    iget-object v1, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/k;-><init>(Lcom/xiaomi/push/service/m;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/i;->beU:Lcom/xiaomi/push/service/k;

    .line 493
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/i;->Jm()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/i;-><init>(Ljava/lang/String;Z)V

    .line 511
    return-void
.end method

.method static declared-synchronized Jl()J
    .locals 8

    .prologue
    .line 60
    const-class v1, Lcom/xiaomi/push/service/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 61
    sget-wide v4, Lcom/xiaomi/push/service/i;->lastTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 62
    sget-wide v4, Lcom/xiaomi/push/service/i;->currentTime:J

    sget-wide v6, Lcom/xiaomi/push/service/i;->lastTime:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/xiaomi/push/service/i;->currentTime:J

    .line 66
    :cond_0
    sput-wide v2, Lcom/xiaomi/push/service/i;->lastTime:J

    .line 68
    sget-wide v2, Lcom/xiaomi/push/service/i;->currentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized Jm()J
    .locals 6

    .prologue
    .line 471
    const-class v1, Lcom/xiaomi/push/service/i;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/xiaomi/push/service/i;->beS:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/push/service/i;->beS:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/xiaomi/push/service/l;J)V
    .locals 6

    .prologue
    .line 609
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    monitor-enter v1

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    invoke-static {v0}, Lcom/xiaomi/push/service/m;->b(Lcom/xiaomi/push/service/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Timer was canceled"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 614
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/push/service/i;->Jl()J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 616
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal delay to start the TimerTask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_1
    new-instance v0, Lcom/xiaomi/push/service/o;

    invoke-direct {v0}, Lcom/xiaomi/push/service/o;-><init>()V

    .line 622
    iget v4, p1, Lcom/xiaomi/push/service/l;->type:I

    iput v4, v0, Lcom/xiaomi/push/service/o;->type:I

    .line 623
    iput-object p1, v0, Lcom/xiaomi/push/service/o;->bfc:Lcom/xiaomi/push/service/l;

    .line 624
    iput-wide v2, v0, Lcom/xiaomi/push/service/o;->when:J

    .line 626
    iget-object v2, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;Lcom/xiaomi/push/service/o;)V

    .line 627
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    return-void
.end method


# virtual methods
.method public Jn()V
    .locals 2

    .prologue
    .line 562
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    monitor-enter v1

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    invoke-static {v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;)Lcom/xiaomi/push/service/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n;->reset()V

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILcom/xiaomi/push/service/l;)V
    .locals 2

    .prologue
    .line 568
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    invoke-static {v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;)Lcom/xiaomi/push/service/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/n;->a(ILcom/xiaomi/push/service/l;)V

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/xiaomi/push/service/l;)V
    .locals 2

    .prologue
    .line 580
    invoke-static {}, Lcom/xiaomi/channel/commonutils/b/c;->Gj()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 581
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    if-eq v0, v1, :cond_0

    .line 582
    const-string v0, "run job outside job job thread"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Run job outside job thread"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/push/service/l;->run()V

    .line 586
    return-void
.end method

.method public a(Lcom/xiaomi/push/service/l;J)V
    .locals 4

    .prologue
    .line 602
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/i;->b(Lcom/xiaomi/push/service/l;J)V

    .line 606
    return-void
.end method

.method public ff(I)Z
    .locals 2

    .prologue
    .line 544
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    invoke-static {v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;)Lcom/xiaomi/push/service/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/n;->ff(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fg(I)V
    .locals 2

    .prologue
    .line 556
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    monitor-enter v1

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    invoke-static {v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;)Lcom/xiaomi/push/service/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/n;->fg(I)V

    .line 558
    monitor-exit v1

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/m;->isBlocked()Z

    move-result v0

    return v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->beT:Lcom/xiaomi/push/service/m;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/m;->cancel()V

    .line 527
    return-void
.end method
