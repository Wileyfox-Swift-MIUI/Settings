.class Lcom/android/settings/fingerprint/L;
.super Ljava/lang/Object;
.source "FingerprintUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aeG:Lcom/android/settings/fingerprint/K;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/K;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/fingerprint/L;->aeG:Lcom/android/settings/fingerprint/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/fingerprint/L;->aeG:Lcom/android/settings/fingerprint/K;

    invoke-static {v0}, Lcom/android/settings/fingerprint/K;->a(Lcom/android/settings/fingerprint/K;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/fingerprint/L;->aeG:Lcom/android/settings/fingerprint/K;

    invoke-static {v0}, Lcom/android/settings/fingerprint/K;->b(Lcom/android/settings/fingerprint/K;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    return-void
.end method
