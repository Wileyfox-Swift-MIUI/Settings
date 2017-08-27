.class public Lcom/xiaomi/channel/commonutils/c/j;
.super Ljava/lang/Object;
.source "SerializedAsyncTaskProcessor.java"


# instance fields
.field private aZv:Lcom/xiaomi/channel/commonutils/c/m;

.field private volatile aZw:Z

.field private final aZx:Z

.field private aZy:I

.field private volatile aZz:Lcom/xiaomi/channel/commonutils/c/n;

.field private ah:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/channel/commonutils/c/j;-><init>(Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/channel/commonutils/c/j;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->ah:Landroid/os/Handler;

    .line 23
    iput-boolean v1, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZw:Z

    .line 27
    iput v1, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZy:I

    .line 48
    new-instance v0, Lcom/xiaomi/channel/commonutils/c/k;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/channel/commonutils/c/k;-><init>(Lcom/xiaomi/channel/commonutils/c/j;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->ah:Landroid/os/Handler;

    .line 60
    iput-boolean p1, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZx:Z

    .line 61
    iput p2, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZy:I

    .line 62
    return-void
.end method

.method private declared-synchronized Gp()V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZv:Lcom/xiaomi/channel/commonutils/c/m;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/channel/commonutils/c/j;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZy:I

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/channel/commonutils/c/j;Lcom/xiaomi/channel/commonutils/c/n;)Lcom/xiaomi/channel/commonutils/c/n;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZz:Lcom/xiaomi/channel/commonutils/c/n;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/channel/commonutils/c/j;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZw:Z

    return v0
.end method

.method static synthetic c(Lcom/xiaomi/channel/commonutils/c/j;)Lcom/xiaomi/channel/commonutils/c/n;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZz:Lcom/xiaomi/channel/commonutils/c/n;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/channel/commonutils/c/j;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->ah:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/channel/commonutils/c/j;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/j;->Gp()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaomi/channel/commonutils/c/n;)V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZv:Lcom/xiaomi/channel/commonutils/c/m;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/xiaomi/channel/commonutils/c/m;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/commonutils/c/m;-><init>(Lcom/xiaomi/channel/commonutils/c/j;)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZv:Lcom/xiaomi/channel/commonutils/c/m;

    .line 68
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZv:Lcom/xiaomi/channel/commonutils/c/m;

    iget-boolean v1, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZx:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/c/m;->setDaemon(Z)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZw:Z

    .line 70
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZv:Lcom/xiaomi/channel/commonutils/c/m;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/m;->start()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->aZv:Lcom/xiaomi/channel/commonutils/c/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/commonutils/c/m;->b(Lcom/xiaomi/channel/commonutils/c/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaomi/channel/commonutils/c/n;J)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/j;->ah:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/channel/commonutils/c/l;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/channel/commonutils/c/l;-><init>(Lcom/xiaomi/channel/commonutils/c/j;Lcom/xiaomi/channel/commonutils/c/n;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method
