.class Lcom/android/b/a/r;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# instance fields
.field final synthetic aKy:Lcom/android/b/a/q;


# direct methods
.method constructor <init>(Lcom/android/b/a/q;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 14

    .prologue
    .line 995
    const/4 v1, 0x0

    .line 996
    iget-object v0, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v0, v0, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget-object v2, v0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v2

    .line 998
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v0, v0, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 999
    if-nez v0, :cond_0

    .line 1001
    monitor-exit v2

    .line 1052
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 1004
    if-eqz v0, :cond_3

    .line 1005
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v0, Lcom/android/b/a/o;->aKs:Z

    .line 1007
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/b/a/o;->aKt:J

    .line 1008
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v4, v6

    .line 1010
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    .line 1012
    add-long v8, v4, v6

    iget-object v3, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v3, v3, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    invoke-static {v3, p1}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;Landroid/content/pm/PackageStats;)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 1014
    iget-wide v10, v0, Lcom/android/b/a/o;->size:J

    cmp-long v3, v10, v8

    if-nez v3, :cond_1

    iget-wide v10, v0, Lcom/android/b/a/o;->cacheSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_1

    iget-wide v10, v0, Lcom/android/b/a/o;->codeSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_1

    iget-wide v10, v0, Lcom/android/b/a/o;->dataSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_1

    iget-wide v10, v0, Lcom/android/b/a/o;->externalCodeSize:J

    cmp-long v3, v10, v4

    if-nez v3, :cond_1

    iget-wide v10, v0, Lcom/android/b/a/o;->externalDataSize:J

    cmp-long v3, v10, v6

    if-nez v3, :cond_1

    iget-wide v10, v0, Lcom/android/b/a/o;->externalCacheSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v3, v10, v12

    if-eqz v3, :cond_2

    .line 1021
    :cond_1
    iput-wide v8, v0, Lcom/android/b/a/o;->size:J

    .line 1022
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v8, v0, Lcom/android/b/a/o;->cacheSize:J

    .line 1023
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v8, v0, Lcom/android/b/a/o;->codeSize:J

    .line 1024
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v8, v0, Lcom/android/b/a/o;->dataSize:J

    .line 1025
    iput-wide v4, v0, Lcom/android/b/a/o;->externalCodeSize:J

    .line 1026
    iput-wide v6, v0, Lcom/android/b/a/o;->externalDataSize:J

    .line 1027
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v4, v0, Lcom/android/b/a/o;->externalCacheSize:J

    .line 1028
    iget-object v1, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v1, v1, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget-wide v4, v0, Lcom/android/b/a/o;->size:J

    invoke-static {v1, v4, v5}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/b/a/o;->aKp:Ljava/lang/String;

    .line 1029
    iget-object v1, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v1, v1, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    invoke-static {v1, p1}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;Landroid/content/pm/PackageStats;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/b/a/o;->aKk:J

    .line 1030
    iget-object v1, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v1, v1, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget-wide v4, v0, Lcom/android/b/a/o;->aKk:J

    invoke-static {v1, v4, v5}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/b/a/o;->aKq:Ljava/lang/String;

    .line 1031
    iget-object v1, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v1, v1, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    invoke-static {v1, p1}, Lcom/android/b/a/a;->b(Lcom/android/b/a/a;Landroid/content/pm/PackageStats;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/b/a/o;->aKl:J

    .line 1032
    iget-object v1, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v1, v1, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget-wide v4, v0, Lcom/android/b/a/o;->aKl:J

    invoke-static {v1, v4, v5}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/b/a/o;->aKr:Ljava/lang/String;

    .line 1035
    const/4 v1, 0x1

    .line 1037
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1038
    if-eqz v1, :cond_3

    .line 1039
    :try_start_2
    iget-object v0, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v0, v0, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v1, 0x4

    iget-object v3, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/b/a/u;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1041
    iget-object v1, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v1, v1, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    invoke-virtual {v1, v0}, Lcom/android/b/a/u;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    :cond_3
    iget-object v0, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v0, v0, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJO:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v0, v0, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJO:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v0, v0, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    iget v0, v0, Lcom/android/b/a/a;->aJP:I

    iget v1, p1, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v0, v1, :cond_4

    .line 1047
    iget-object v0, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    iget-object v0, v0, Lcom/android/b/a/q;->aKx:Lcom/android/b/a/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/b/a/a;->aJO:Ljava/lang/String;

    .line 1048
    iget-object v0, p0, Lcom/android/b/a/r;->aKy:Lcom/android/b/a/q;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/b/a/q;->sendEmptyMessage(I)Z

    .line 1051
    :cond_4
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1037
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
