.class public Lcom/android/settings/device/UpdateInfoService;
.super Landroid/app/job/JobService;
.source "UpdateInfoService.java"


# static fields
.field private static Vo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x9

    sput v0, Lcom/android/settings/device/UpdateInfoService;->Vo:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static aK(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 39
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 40
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/android/settings/device/UpdateInfoService;->Vo:I

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/settings/device/UpdateInfoService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 43
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 22
    sget v0, Lcom/android/settings/device/UpdateInfoService;->Vo:I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/settings/device/UpdateInfoService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/device/A;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/device/A;-><init>(Lcom/android/settings/device/UpdateInfoService;Landroid/app/job/JobParameters;)V

    invoke-static {v0, v1}, Lcom/android/settings/device/e;->a(Landroid/content/Context;Lcom/android/settings/device/j;)V

    .line 30
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
