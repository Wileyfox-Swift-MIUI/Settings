.class Lcom/android/settings/dd;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintHelper.java"


# instance fields
.field final synthetic nc:Lcom/android/settings/db;

.field final synthetic nd:Ljava/util/List;

.field final synthetic ne:Lcom/android/settings/dc;


# direct methods
.method constructor <init>(Lcom/android/settings/dc;Lcom/android/settings/db;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/dd;->ne:Lcom/android/settings/dc;

    iput-object p2, p0, Lcom/android/settings/dd;->nc:Lcom/android/settings/db;

    iput-object p3, p0, Lcom/android/settings/dd;->nd:Ljava/util/List;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/dd;->nc:Lcom/android/settings/db;

    invoke-interface {v0}, Lcom/android/settings/db;->eg()V

    .line 64
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/dd;->nc:Lcom/android/settings/db;

    invoke-interface {v0, p1}, Lcom/android/settings/db;->E(I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dd;->nc:Lcom/android/settings/db;

    invoke-interface {v0}, Lcom/android/settings/db;->ef()V

    .line 78
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/dd;->ne:Lcom/android/settings/dc;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/dd;->nd:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/dd;->ne:Lcom/android/settings/dc;

    invoke-virtual {v3}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/dc;->a(Lcom/android/settings/dc;ILjava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
