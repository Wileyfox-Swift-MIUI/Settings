.class Lcom/android/settings/fingerprint/s;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintLocationAnimationView.java"


# instance fields
.field final synthetic aem:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

.field mCancelled:Z


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/fingerprint/s;->aem:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/s;->mCancelled:Z

    .line 133
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/fingerprint/s;->aem:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->a(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/s;->mCancelled:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/fingerprint/s;->aem:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/s;->aem:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->a(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :cond_0
    return-void
.end method
