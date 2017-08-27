.class public Lcom/xiaomi/channel/commonutils/c/f;
.super Ljava/lang/Object;
.source "ScheduledJobManager.java"


# static fields
.field private static volatile aZo:Lcom/xiaomi/channel/commonutils/c/f;


# instance fields
.field private aZp:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private aZq:Landroid/util/SparseArray;

.field private aZr:Ljava/lang/Object;

.field private aZs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZp:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZq:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZr:Ljava/lang/Object;

    .line 82
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZs:Landroid/content/SharedPreferences;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/channel/commonutils/c/f;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private a(Lcom/xiaomi/channel/commonutils/c/h;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZr:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZq:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/c/h;->getJobId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v1

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dB(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/c/f;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/xiaomi/channel/commonutils/c/f;->aZo:Lcom/xiaomi/channel/commonutils/c/f;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/xiaomi/channel/commonutils/c/f;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/c/f;->aZo:Lcom/xiaomi/channel/commonutils/c/f;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/xiaomi/channel/commonutils/c/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/commonutils/c/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/c/f;->aZo:Lcom/xiaomi/channel/commonutils/c/f;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/xiaomi/channel/commonutils/c/f;->aZo:Lcom/xiaomi/channel/commonutils/c/f;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static eH(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_job_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;I)V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZp:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 161
    return-void
.end method

.method public a(Lcom/xiaomi/channel/commonutils/c/h;II)Z
    .locals 7

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/h;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/c/h;->getJobId()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->eH(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/xiaomi/channel/commonutils/c/g;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaomi/channel/commonutils/c/g;-><init>(Lcom/xiaomi/channel/commonutils/c/f;Lcom/xiaomi/channel/commonutils/c/h;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZs:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 130
    sub-int v0, p2, p3

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 131
    int-to-long v4, p2

    sub-long v2, v4, v2

    long-to-int p3, v2

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZp:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, p3

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 135
    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZr:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/f;->aZq:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/c/h;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    monitor-exit v1

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/channel/commonutils/c/f;->a(Ljava/lang/Runnable;I)V

    .line 151
    return-void
.end method
