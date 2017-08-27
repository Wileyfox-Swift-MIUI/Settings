.class public Lcom/android/settings/credentials/CredentialsUpdateService;
.super Landroid/app/job/JobService;
.source "CredentialsUpdateService.java"


# static fields
.field private static Vo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0xa

    sput v0, Lcom/android/settings/credentials/CredentialsUpdateService;->Vo:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static aK(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 36
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 37
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/android/settings/credentials/CredentialsUpdateService;->Vo:I

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/settings/credentials/CredentialsUpdateService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide v2, 0x9a7ec800L

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 40
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    .line 18
    sget v0, Lcom/android/settings/credentials/CredentialsUpdateService;->Vo:I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 19
    invoke-static {}, Lcom/android/settings/credentials/b;->oU()Lcom/android/settings/credentials/b;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/settings/credentials/a;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/credentials/a;-><init>(Lcom/android/settings/credentials/CredentialsUpdateService;Landroid/app/job/JobParameters;)V

    invoke-virtual {p0}, Lcom/android/settings/credentials/CredentialsUpdateService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/credentials/b;->a(Lcom/android/settings/credentials/g;Landroid/content/Context;)V

    .line 27
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
