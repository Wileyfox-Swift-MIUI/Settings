.class public Lcom/android/b/a/a;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# static fields
.field static final VB:Ljava/lang/Object;

.field static aJC:Lcom/android/b/a/a;

.field public static final aJU:Ljava/util/Comparator;

.field public static final aJV:Ljava/util/Comparator;

.field public static final aJW:Ljava/util/Comparator;

.field public static final aJX:Ljava/util/Comparator;

.field public static final aJY:Lcom/android/b/a/p;

.field public static final aJZ:Lcom/android/b/a/p;

.field public static final aKa:Lcom/android/b/a/p;

.field public static final aKb:Lcom/android/b/a/p;

.field public static final aKc:Lcom/android/b/a/p;

.field public static final aKd:Lcom/android/b/a/p;

.field public static final aKe:Lcom/android/b/a/p;

.field public static final aKf:Lcom/android/b/a/p;

.field public static final aKg:Lcom/android/b/a/p;

.field static final arh:Ljava/util/regex/Pattern;


# instance fields
.field final OX:Lcom/android/b/a/z;

.field final aJD:Landroid/content/pm/IPackageManager;

.field final aJE:I

.field final aJF:I

.field aJG:Lcom/android/b/a/v;

.field aJH:Z

.field final aJI:Ljava/util/ArrayList;

.field final aJJ:Ljava/util/ArrayList;

.field final aJK:Landroid/util/SparseArray;

.field final aJL:Ljava/util/ArrayList;

.field aJM:Ljava/util/List;

.field aJN:J

.field aJO:Ljava/lang/String;

.field aJP:I

.field aJQ:Z

.field final aJR:Ljava/util/ArrayList;

.field final aJS:Lcom/android/b/a/q;

.field final aJT:Lcom/android/b/a/u;

.field final aY:Landroid/os/UserManager;

.field final mContext:Landroid/content/Context;

.field mResumed:Z

.field final t:Landroid/content/pm/PackageManager;

.field final u:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/b/a/a;->arh:Ljava/util/regex/Pattern;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->VB:Ljava/lang/Object;

    .line 1310
    new-instance v0, Lcom/android/b/a/b;

    invoke-direct {v0}, Lcom/android/b/a/b;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aJU:Ljava/util/Comparator;

    .line 1318
    new-instance v0, Lcom/android/b/a/g;

    invoke-direct {v0}, Lcom/android/b/a/g;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aJV:Ljava/util/Comparator;

    .line 1331
    new-instance v0, Lcom/android/b/a/h;

    invoke-direct {v0}, Lcom/android/b/a/h;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aJW:Ljava/util/Comparator;

    .line 1342
    new-instance v0, Lcom/android/b/a/i;

    invoke-direct {v0}, Lcom/android/b/a/i;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aJX:Ljava/util/Comparator;

    .line 1358
    new-instance v0, Lcom/android/b/a/j;

    invoke-direct {v0}, Lcom/android/b/a/j;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aJY:Lcom/android/b/a/p;

    .line 1371
    new-instance v0, Lcom/android/b/a/k;

    invoke-direct {v0}, Lcom/android/b/a/k;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aJZ:Lcom/android/b/a/p;

    .line 1386
    new-instance v0, Lcom/android/b/a/l;

    invoke-direct {v0}, Lcom/android/b/a/l;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aKa:Lcom/android/b/a/p;

    .line 1399
    new-instance v0, Lcom/android/b/a/m;

    invoke-direct {v0}, Lcom/android/b/a/m;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aKb:Lcom/android/b/a/p;

    .line 1416
    new-instance v0, Lcom/android/b/a/n;

    invoke-direct {v0}, Lcom/android/b/a/n;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aKc:Lcom/android/b/a/p;

    .line 1431
    new-instance v0, Lcom/android/b/a/c;

    invoke-direct {v0}, Lcom/android/b/a/c;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aKd:Lcom/android/b/a/p;

    .line 1441
    new-instance v0, Lcom/android/b/a/d;

    invoke-direct {v0}, Lcom/android/b/a/d;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aKe:Lcom/android/b/a/p;

    .line 1451
    new-instance v0, Lcom/android/b/a/e;

    invoke-direct {v0}, Lcom/android/b/a/e;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aKf:Lcom/android/b/a/p;

    .line 1461
    new-instance v0, Lcom/android/b/a/f;

    invoke-direct {v0}, Lcom/android/b/a/f;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aKg:Lcom/android/b/a/p;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aJI:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aJJ:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lcom/android/b/a/z;

    invoke-direct {v0}, Lcom/android/b/a/z;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->OX:Lcom/android/b/a/z;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    .line 119
    iput-wide v2, p0, Lcom/android/b/a/a;->aJN:J

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aJR:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/android/b/a/u;

    invoke-direct {v0, p0}, Lcom/android/b/a/u;-><init>(Lcom/android/b/a/a;)V

    iput-object v0, p0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    .line 132
    iput-object p1, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    .line 133
    iget-object v0, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/a;->t:Landroid/content/pm/PackageManager;

    .line 134
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/a;->aJD:Landroid/content/pm/IPackageManager;

    .line 135
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/b/a/a;->aY:Landroid/os/UserManager;

    .line 136
    iget-object v0, p0, Lcom/android/b/a/a;->aY:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 137
    iget-object v2, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/b/a/a;->u:Landroid/os/HandlerThread;

    .line 141
    iget-object v0, p0, Lcom/android/b/a/a;->u:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v0, Lcom/android/b/a/q;

    iget-object v1, p0, Lcom/android/b/a/a;->u:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/b/a/q;-><init>(Lcom/android/b/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    .line 145
    const v0, 0xa200

    iput v0, p0, Lcom/android/b/a/a;->aJE:I

    .line 148
    const v0, 0x8200

    iput v0, p0, Lcom/android/b/a/a;->aJF:I

    .line 165
    iget-object v1, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_1
    :try_start_1
    monitor-exit v1

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private H(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 270
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 272
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.xiaomi.xmsf"

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 278
    :cond_2
    return-void
.end method

.method private a(Landroid/content/pm/PackageStats;)J
    .locals 4

    .prologue
    .line 530
    if-eqz p1, :cond_0

    .line 531
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 533
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/b/a/a;Landroid/content/pm/PackageStats;)J
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->a(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/app/Application;)Lcom/android/b/a/a;
    .locals 2

    .prologue
    .line 90
    sget-object v1, Lcom/android/b/a/a;->VB:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/android/b/a/a;->aJC:Lcom/android/b/a/a;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/b/a/a;

    invoke-direct {v0, p0}, Lcom/android/b/a/a;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/b/a/a;->aJC:Lcom/android/b/a/a;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/b/a/a;->aJC:Lcom/android/b/a/a;

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/android/b/a/a;Landroid/content/pm/ApplicationInfo;)Lcom/android/b/a/o;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/b/a/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/a/a;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/b/a/a;->l(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/a/a;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/b/a/a;->zZ()V

    return-void
.end method

.method static synthetic a(Lcom/android/b/a/a;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->dV(I)V

    return-void
.end method

.method private b(Landroid/content/pm/PackageStats;)J
    .locals 4

    .prologue
    .line 537
    if-eqz p1, :cond_0

    .line 540
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 544
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/b/a/a;Landroid/content/pm/PackageStats;)J
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->b(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/android/b/a/a;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->removeUser(I)V

    return-void
.end method

.method private c(Landroid/content/pm/ApplicationInfo;)Lcom/android/b/a/o;
    .locals 8

    .prologue
    .line 513
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 514
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 516
    if-nez v0, :cond_1

    .line 518
    new-instance v1, Lcom/android/b/a/o;

    iget-object v0, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/b/a/a;->aJN:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/b/a/a;->aJN:J

    invoke-direct {v1, v0, p1, v4, v5}, Lcom/android/b/a/o;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 519
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 524
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    iget-object v1, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 522
    iput-object p1, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method private dV(I)V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/b/a/a;->aY:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    iget-object v1, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    iget-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/android/b/a/a;->Ac()V

    .line 487
    invoke-virtual {p0}, Lcom/android/b/a/a;->zY()V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 492
    :cond_1
    monitor-exit v1

    .line 494
    :cond_2
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private l(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 548
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 571
    sget-object v1, Lcom/android/b/a/a;->arh:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeUser(I)V
    .locals 4

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 499
    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 501
    iget-object v3, p0, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    iget-object v3, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 504
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 505
    iget-object v0, p0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 509
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    return-void
.end method

.method private v(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .prologue
    .line 343
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 345
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 350
    :goto_1
    return-object v0

    .line 343
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 350
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private zZ()V
    .locals 2

    .prologue
    .line 282
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 282
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 474
    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/a;->z(Ljava/lang/String;I)V

    .line 475
    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/a;->y(Ljava/lang/String;I)V

    .line 476
    return-void
.end method

.method public Aa()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/b/a/a;->aJH:Z

    return v0
.end method

.method Ab()V
    .locals 2

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/b/a/a;->aJI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/b/a/a;->aJI:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    iget-boolean v0, v0, Lcom/android/b/a/w;->mResumed:Z

    if-nez v0, :cond_0

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/android/b/a/a;->Ac()V

    goto :goto_0
.end method

.method Ac()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    .line 306
    iget-object v0, p0, Lcom/android/b/a/a;->aJG:Lcom/android/b/a/v;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/b/a/a;->aJG:Lcom/android/b/a/v;

    invoke-virtual {v0}, Lcom/android/b/a/v;->unregisterReceiver()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/a/a;->aJG:Lcom/android/b/a/v;

    .line 310
    :cond_0
    return-void
.end method

.method Ad()V
    .locals 4

    .prologue
    .line 555
    iget-object v2, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v2

    .line 556
    :try_start_0
    iget-boolean v0, p0, Lcom/android/b/a/a;->aJQ:Z

    if-nez v0, :cond_0

    .line 557
    monitor-exit v2

    .line 567
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 560
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/b/a/a;->aJI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/b/a/a;->aJI:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    .line 562
    iget-boolean v3, v0, Lcom/android/b/a/w;->mResumed:Z

    if-eqz v3, :cond_1

    .line 563
    iget-object v3, p0, Lcom/android/b/a/a;->aJR:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 566
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/android/b/a/s;)Lcom/android/b/a/w;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lcom/android/b/a/w;

    invoke-direct {v0, p0, p1}, Lcom/android/b/a/w;-><init>(Lcom/android/b/a/a;Lcom/android/b/a/s;)V

    .line 179
    iget-object v1, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/b/a/a;->aJI:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    monitor-exit v1

    .line 182
    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u(Ljava/lang/String;I)Lcom/android/b/a/o;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v3, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v3

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 317
    monitor-exit v3

    move-object v0, v1

    .line 338
    :goto_0
    return-object v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 323
    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/android/b/a/a;->v(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 325
    if-nez v2, :cond_2

    .line 327
    :try_start_1
    iget-object v2, p0, Lcom/android/b/a/a;->aJD:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 333
    :goto_1
    if-eqz v1, :cond_1

    .line 334
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/b/a/a;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/b/a/o;

    move-result-object v0

    .line 338
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    :try_start_3
    const-string v2, "ApplicationsState"

    const-string v4, "getEntry couldn\'t reach PackageManager"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public w(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 368
    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/b/a/a;->t:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    iget-object v2, v2, Lcom/android/b/a/q;->aKw:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 372
    :cond_0
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method x(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 391
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    move v0, v1

    .line 396
    :goto_1
    return v0

    .line 389
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method y(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :try_start_1
    iget-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    if-nez v0, :cond_0

    .line 409
    monitor-exit v1

    .line 440
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/a;->x(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 414
    monitor-exit v1

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    :catch_0
    move-exception v0

    goto :goto_0

    .line 416
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/b/a/a;->aJD:Landroid/content/pm/IPackageManager;

    if-nez p2, :cond_2

    iget v0, p0, Lcom/android/b/a/a;->aJE:I

    :goto_1
    invoke-interface {v2, p1, v0, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 419
    if-nez v0, :cond_3

    .line 420
    monitor-exit v1

    goto :goto_0

    .line 416
    :cond_2
    iget v0, p0, Lcom/android/b/a/a;->aJF:I

    goto :goto_1

    .line 422
    :cond_3
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_5

    .line 423
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 425
    monitor-exit v1

    goto :goto_0

    .line 427
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/b/a/a;->aJH:Z

    .line 429
    :cond_5
    iget-object v2, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/q;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 431
    iget-object v0, p0, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/q;->sendEmptyMessage(I)Z

    .line 433
    :cond_6
    iget-object v0, p0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 434
    iget-object v0, p0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 437
    :cond_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public z(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 443
    iget-object v3, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v3

    .line 445
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/a;->x(Ljava/lang/String;I)I

    move-result v4

    .line 447
    if-ltz v4, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 450
    if-eqz v0, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v1, p0, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 455
    iget-object v1, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 456
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/a;->aJH:Z

    move v1, v2

    .line 458
    :goto_0
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_3

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/a;->aJH:Z

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 470
    :cond_2
    monitor-exit v3

    .line 471
    return-void

    .line 458
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zX()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/b/a/a;->u:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method zY()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 186
    iget-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iput-boolean v6, p0, Lcom/android/b/a/a;->mResumed:Z

    .line 190
    iget-object v0, p0, Lcom/android/b/a/a;->aJG:Lcom/android/b/a/v;

    if-nez v0, :cond_2

    .line 191
    new-instance v0, Lcom/android/b/a/v;

    invoke-direct {v0, p0, v8}, Lcom/android/b/a/v;-><init>(Lcom/android/b/a/a;Lcom/android/b/a/b;)V

    iput-object v0, p0, Lcom/android/b/a/a;->aJG:Lcom/android/b/a/v;

    .line 192
    iget-object v0, p0, Lcom/android/b/a/a;->aJG:Lcom/android/b/a/v;

    invoke-virtual {v0}, Lcom/android/b/a/v;->Af()V

    .line 194
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    .line 195
    iget-object v0, p0, Lcom/android/b/a/a;->aY:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    :cond_3
    iget-object v3, p0, Lcom/android/b/a/a;->aJD:Landroid/content/pm/IPackageManager;

    iget v4, p0, Lcom/android/b/a/a;->aJF:I

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v3, v4, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 209
    iget-object v3, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    goto :goto_1

    .line 215
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 216
    :goto_2
    iget-object v3, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 219
    :cond_5
    const-string v0, "ApplicationsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEntriesMap contains userIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/b/a/a;->OX:Lcom/android/b/a/z;

    iget-object v2, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/b/a/z;->e(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 225
    invoke-direct {p0}, Lcom/android/b/a/a;->zZ()V

    .line 232
    :cond_6
    iput-boolean v1, p0, Lcom/android/b/a/a;->aJH:Z

    move v2, v1

    .line 233
    :goto_3
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 234
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 237
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_a

    .line 238
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_9

    .line 239
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 240
    add-int/lit8 v2, v2, -0x1

    .line 233
    :cond_7
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_8
    move v2, v1

    .line 227
    :goto_5
    iget-object v0, p0, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    iput-boolean v6, v0, Lcom/android/b/a/o;->aKs:Z

    .line 227
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 243
    :cond_9
    iput-boolean v6, p0, Lcom/android/b/a/a;->aJH:Z

    .line 245
    :cond_a
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 247
    const-string v3, "ApplicationsState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The current packageName is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  current info\'s userId is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/b/a/o;

    .line 249
    if-eqz v1, :cond_7

    .line 250
    iput-object v0, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    goto :goto_4

    .line 254
    :cond_b
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/b/a/a;->H(Ljava/util/List;)V

    .line 255
    iget-object v0, p0, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 257
    invoke-direct {p0}, Lcom/android/b/a/a;->zZ()V

    .line 260
    :cond_c
    iget-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    invoke-static {v0}, Lcom/android/b/a;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/a;->aJM:Ljava/util/List;

    .line 261
    iput-object v8, p0, Lcom/android/b/a/a;->aJO:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    invoke-virtual {v0, v7}, Lcom/android/b/a/q;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    invoke-virtual {v0, v7}, Lcom/android/b/a/q;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
