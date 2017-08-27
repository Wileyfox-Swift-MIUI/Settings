.class Lcom/android/settings/de;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintHelper.java"


# instance fields
.field final synthetic ne:Lcom/android/settings/dc;

.field final synthetic nf:Lcom/android/settings/dk;


# direct methods
.method constructor <init>(Lcom/android/settings/dc;Lcom/android/settings/dk;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/de;->ne:Lcom/android/settings/dc;

    iput-object p2, p0, Lcom/android/settings/de;->nf:Lcom/android/settings/dk;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/de;->nf:Lcom/android/settings/dk;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/de;->nf:Lcom/android/settings/dk;

    invoke-interface {v0}, Lcom/android/settings/dk;->onFailed()V

    .line 112
    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/de;->nf:Lcom/android/settings/dk;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/de;->nf:Lcom/android/settings/dk;

    invoke-interface {v0}, Lcom/android/settings/dk;->ep()V

    .line 117
    :cond_0
    return-void
.end method
