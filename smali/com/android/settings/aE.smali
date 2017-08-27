.class Lcom/android/settings/aE;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

.field final synthetic ev:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/settings/aE;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/aE;->ev:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 764
    if-ne p2, v5, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/settings/aE;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->b(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/dc;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dH;->b(Lcom/android/settings/dc;)J

    move-result-wide v0

    .line 767
    iget-object v2, p0, Lcom/android/settings/aE;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->c(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/aE;->ev:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/aE;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->d(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/settings/dH;->a(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)[B

    move-result-object v0

    .line 769
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/aE;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    const-string v2, "add_keyguard_password_then_add_fingerprint"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 771
    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 772
    iget-object v0, p0, Lcom/android/settings/aE;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 773
    iget-object v0, p0, Lcom/android/settings/aE;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 774
    iget-object v0, p0, Lcom/android/settings/aE;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 779
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 777
    iget-object v0, p0, Lcom/android/settings/aE;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings/aE;->ev:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
