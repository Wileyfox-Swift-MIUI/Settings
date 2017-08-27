.class Lcom/android/settings/applications/RunningServiceDetails$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic OG:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->OG:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->OG:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 514
    :cond_0
    return-void
.end method
