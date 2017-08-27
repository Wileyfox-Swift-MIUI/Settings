.class public abstract Lcom/xiaomi/smack/a;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final bjI:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static bjJ:Z


# instance fields
.field protected bfY:Lcom/xiaomi/push/service/XMPushService;

.field protected bjK:I

.field protected bjL:J

.field protected volatile bjM:J

.field protected volatile bjN:J

.field protected bjO:I

.field private bjP:Ljava/util/LinkedList;

.field private final bjQ:Ljava/util/Collection;

.field protected final bjR:Ljava/util/Map;

.field protected final bjS:Ljava/util/Map;

.field protected bjT:Lcom/xiaomi/smack/a/a;

.field protected bjU:Ljava/lang/String;

.field private bjV:I

.field protected final bjW:I

.field protected bjX:Lcom/xiaomi/smack/c;

.field private bjY:J

.field protected challenge:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaomi/smack/a;->bjI:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    sput-boolean v1, Lcom/xiaomi/smack/a;->bjJ:Z

    .line 149
    :try_start_0
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/smack/a;->bjJ:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    invoke-static {}, Lcom/xiaomi/smack/h;->getVersion()Ljava/lang/String;

    .line 156
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smack/a;->bjK:I

    .line 128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/smack/a;->bjL:J

    .line 130
    iput-wide v2, p0, Lcom/xiaomi/smack/a;->bjM:J

    .line 131
    iput-wide v2, p0, Lcom/xiaomi/smack/a;->bjN:J

    .line 136
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bjP:Ljava/util/LinkedList;

    .line 161
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bjQ:Ljava/util/Collection;

    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bjR:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bjS:Ljava/util/Map;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bjT:Lcom/xiaomi/smack/a/a;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/a;->challenge:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bjU:Ljava/lang/String;

    .line 182
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/smack/a;->bjV:I

    .line 188
    sget-object v0, Lcom/xiaomi/smack/a;->bjI:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 189
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smack/a;->bjW:I

    .line 657
    iput-wide v2, p0, Lcom/xiaomi/smack/a;->bjY:J

    .line 204
    iput-object p2, p0, Lcom/xiaomi/smack/a;->bjX:Lcom/xiaomi/smack/c;

    .line 205
    iput-object p1, p0, Lcom/xiaomi/smack/a;->bfY:Lcom/xiaomi/push/service/XMPushService;

    .line 206
    invoke-virtual {p0}, Lcom/xiaomi/smack/a;->KJ()V

    .line 207
    return-void
.end method

.method private fk(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 633
    const-string v0, "connected"

    .line 639
    :goto_0
    return-object v0

    .line 634
    :cond_0
    if-nez p1, :cond_1

    .line 635
    const-string v0, "connecting"

    goto :goto_0

    .line 636
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 637
    const-string v0, "disconnected"

    goto :goto_0

    .line 639
    :cond_2
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private fs(I)V
    .locals 6

    .prologue
    .line 672
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bjP:Ljava/util/LinkedList;

    monitor-enter v1

    .line 673
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 681
    :cond_0
    :goto_0
    monitor-exit v1

    .line 682
    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjP:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    .line 678
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjP:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public KC()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public KF()Lcom/xiaomi/smack/c;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjX:Lcom/xiaomi/smack/c;

    return-object v0
.end method

.method public KG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjX:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->KG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public KH()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/xiaomi/smack/a;->bjO:I

    return v0
.end method

.method public KI()J
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/xiaomi/smack/a;->bjN:J

    return-wide v0
.end method

.method protected KJ()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 476
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bjX:Lcom/xiaomi/smack/c;

    invoke-virtual {v1}, Lcom/xiaomi/smack/c;->KQ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bjT:Lcom/xiaomi/smack/a/a;

    if-nez v1, :cond_1

    .line 484
    :try_start_0
    const-string v1, "smack.debuggerClass"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 489
    :goto_0
    if-eqz v1, :cond_0

    .line 491
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 496
    :cond_0
    :goto_1
    if-nez v0, :cond_2

    .line 497
    new-instance v0, Lcom/xiaomi/a/a/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/a;-><init>(Lcom/xiaomi/smack/a;)V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bjT:Lcom/xiaomi/smack/a/a;

    .line 518
    :cond_1
    :goto_2
    return-void

    .line 485
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 492
    :catch_1
    move-exception v1

    .line 493
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 504
    :cond_2
    const/4 v1, 0x3

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/xiaomi/smack/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/io/Writer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/io/Reader;

    aput-object v3, v1, v2

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 507
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/a/a;

    iput-object v0, p0, Lcom/xiaomi/smack/a;->bjT:Lcom/xiaomi/smack/a/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 509
    :catch_2
    move-exception v0

    .line 510
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t initialize the configured debugger!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public KK()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/xiaomi/smack/a;->bjK:I

    return v0
.end method

.method public KL()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/xiaomi/smack/a;->bjV:I

    return v0
.end method

.method public declared-synchronized KM()V
    .locals 2

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/a;->bjY:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    monitor-exit p0

    return-void

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KN()Z
    .locals 4

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smack/a;->bjY:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/smack/h;->KR()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public KO()V
    .locals 2

    .prologue
    .line 706
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bjP:Ljava/util/LinkedList;

    monitor-enter v1

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 708
    monitor-exit v1

    .line 709
    return-void

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized M(J)Z
    .locals 3

    .prologue
    .line 668
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/smack/a;->bjY:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract Y(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(IILjava/lang/Exception;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 582
    iget v0, p0, Lcom/xiaomi/smack/a;->bjV:I

    if-eq p1, v0, :cond_0

    .line 583
    const-string v0, "update the connection status. %1$s -> %2$s : %3$s "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/smack/a;->bjV:I

    invoke-direct {p0, v3}, Lcom/xiaomi/smack/a;->fk(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 584
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/a;->fk(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 585
    invoke-static {p2}, Lcom/xiaomi/push/service/V;->getErrorDesc(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 583
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bfY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/a;->fs(I)V

    .line 592
    :cond_1
    if-ne p1, v4, :cond_3

    .line 593
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bfY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v6}, Lcom/xiaomi/push/service/XMPushService;->fg(I)V

    .line 595
    iget v0, p0, Lcom/xiaomi/smack/a;->bjV:I

    if-eqz v0, :cond_2

    .line 596
    const-string v0, "try set connected while not connecting."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 599
    :cond_2
    iput p1, p0, Lcom/xiaomi/smack/a;->bjV:I

    .line 601
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjQ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 602
    invoke-interface {v0, p0}, Lcom/xiaomi/smack/e;->a(Lcom/xiaomi/smack/a;)V

    goto :goto_0

    .line 604
    :cond_3
    if-nez p1, :cond_5

    .line 605
    iget v0, p0, Lcom/xiaomi/smack/a;->bjV:I

    if-eq v0, v5, :cond_4

    .line 606
    const-string v0, "try set connecting while not disconnected."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 609
    :cond_4
    iput p1, p0, Lcom/xiaomi/smack/a;->bjV:I

    .line 611
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjQ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 612
    invoke-interface {v0, p0}, Lcom/xiaomi/smack/e;->b(Lcom/xiaomi/smack/a;)V

    goto :goto_1

    .line 614
    :cond_5
    if-ne p1, v5, :cond_9

    .line 615
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bfY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v6}, Lcom/xiaomi/push/service/XMPushService;->fg(I)V

    .line 617
    iget v0, p0, Lcom/xiaomi/smack/a;->bjV:I

    if-nez v0, :cond_7

    .line 618
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjQ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 619
    if-nez p3, :cond_6

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v3, "disconnect while connecting"

    invoke-direct {v1, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v0, p0, v1}, Lcom/xiaomi/smack/e;->a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_6
    move-object v1, p3

    goto :goto_3

    .line 622
    :cond_7
    iget v0, p0, Lcom/xiaomi/smack/a;->bjV:I

    if-ne v0, v4, :cond_8

    .line 623
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjQ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 624
    invoke-interface {v0, p0, p2, p3}, Lcom/xiaomi/smack/e;->a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V

    goto :goto_4

    .line 627
    :cond_8
    iput p1, p0, Lcom/xiaomi/smack/a;->bjV:I

    .line 629
    :cond_9
    return-void
.end method

.method public abstract a(ILjava/lang/Exception;)V
.end method

.method public a(Lcom/xiaomi/smack/e;)V
    .locals 1

    .prologue
    .line 354
    if-nez p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjQ:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjQ:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V
    .locals 2

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/b;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/smack/b;-><init>(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 396
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bjR:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public abstract a([Lcom/xiaomi/smack/packet/e;)V
.end method

.method public b(Lcom/xiaomi/smack/e;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjQ:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 370
    return-void
.end method

.method public b(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V
    .locals 2

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/b;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/smack/b;-><init>(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 433
    iget-object v1, p0, Lcom/xiaomi/smack/a;->bjS:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-void
.end method

.method public abstract b([Lcom/xiaomi/d/b;)V
.end method

.method public abstract cB(Z)V
.end method

.method public abstract e(Lcom/xiaomi/push/service/S;)V
.end method

.method public abstract f(Lcom/xiaomi/smack/packet/e;)V
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/xiaomi/smack/a;->bjX:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract i(Lcom/xiaomi/d/b;)V
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 562
    iget v1, p0, Lcom/xiaomi/smack/a;->bjV:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/xiaomi/smack/a;->bjV:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setChallenge(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 647
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/smack/a;->bjV:I

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChallenge hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/g/c;->dj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 649
    iput-object p1, p0, Lcom/xiaomi/smack/a;->challenge:Ljava/lang/String;

    .line 650
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/smack/a;->a(IILjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :goto_0
    monitor-exit p0

    return-void

    .line 652
    :cond_0
    :try_start_1
    const-string v0, "ignore setChallenge because connection was disconnected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
