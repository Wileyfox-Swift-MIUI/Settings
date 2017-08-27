.class Lcom/android/settings/device/A;
.super Ljava/lang/Object;
.source "UpdateInfoService.java"

# interfaces
.implements Lcom/android/settings/device/j;


# instance fields
.field final synthetic Vp:Landroid/app/job/JobParameters;

.field final synthetic Xe:Lcom/android/settings/device/UpdateInfoService;


# direct methods
.method constructor <init>(Lcom/android/settings/device/UpdateInfoService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings/device/A;->Xe:Lcom/android/settings/device/UpdateInfoService;

    iput-object p2, p0, Lcom/android/settings/device/A;->Vp:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pk()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/device/A;->Xe:Lcom/android/settings/device/UpdateInfoService;

    iget-object v1, p0, Lcom/android/settings/device/A;->Vp:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/device/UpdateInfoService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 27
    return-void
.end method
