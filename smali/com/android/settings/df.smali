.class Lcom/android/settings/df;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintHelper.java"


# instance fields
.field final synthetic ne:Lcom/android/settings/dc;

.field final synthetic ng:Lcom/android/settings/dg;


# direct methods
.method constructor <init>(Lcom/android/settings/dc;Lcom/android/settings/dg;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/df;->ne:Lcom/android/settings/dc;

    iput-object p2, p0, Lcom/android/settings/df;->ng:Lcom/android/settings/dg;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 157
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 151
    iget-object v0, p0, Lcom/android/settings/df;->ng:Lcom/android/settings/dg;

    invoke-interface {v0}, Lcom/android/settings/dg;->onFailed()V

    .line 152
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/df;->ng:Lcom/android/settings/dg;

    invoke-interface {v0}, Lcom/android/settings/dg;->onFailed()V

    .line 140
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/df;->ng:Lcom/android/settings/dg;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/dg;->F(I)V

    .line 146
    return-void
.end method
