.class public Lcom/android/settings/applications/ProcStatsData$MemInfo;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# instance fields
.field LR:J

.field LZ:D

.field Ma:D

.field Mb:D

.field Mc:J

.field Md:[D

.field Me:D

.field Mf:D

.field Mg:D

.field Mh:D

.field Mi:D


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 11

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/16 v0, 0xe

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Md:[D

    .line 330
    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->LR:J

    .line 331
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;->a(Landroid/content/Context;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 333
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mf:D

    mul-double/2addr v0, v8

    long-to-double v2, p3

    div-double/2addr v0, v2

    .line 334
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Me:D

    mul-double/2addr v2, v8

    long-to-double v4, p3

    div-double/2addr v2, v4

    .line 335
    add-double v4, v0, v2

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mh:D

    .line 336
    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mb:D

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mh:D

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mi:D

    .line 337
    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mi:D

    long-to-double v6, p3

    div-double/2addr v4, v6

    mul-double/2addr v4, v8

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mg:D

    .line 339
    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mi:D

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->LZ:D

    .line 340
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mi:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Ma:D

    .line 354
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 355
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 357
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Ma:D

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_0

    .line 358
    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->LZ:D

    .line 359
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Ma:D

    .line 360
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Ma:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mc:J

    .line 366
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->LZ:D

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v4, v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->LZ:D

    .line 363
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Ma:D

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v4, v4

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Ma:D

    .line 364
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mc:J

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$1;)V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 6

    .prologue
    .line 370
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 371
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 372
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mb:D

    .line 373
    iget-wide v0, p2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v2, p2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Me:D

    .line 374
    iget-wide v0, p2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v2, p2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-double/2addr v0, v2

    iget-wide v2, p2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mf:D

    .line 376
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 377
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Md:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 376
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Md:[D

    iget-object v2, p2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 382
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 383
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Me:D

    iget-object v1, p2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v1, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Me:D

    goto :goto_1

    .line 385
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mf:D

    iget-object v1, p2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v1, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mf:D

    goto :goto_1

    .line 397
    :cond_2
    return-void
.end method
