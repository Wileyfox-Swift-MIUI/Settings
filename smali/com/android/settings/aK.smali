.class Lcom/android/settings/aK;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/settings/aK;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iput-object p2, p0, Lcom/android/settings/aK;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 754
    if-ne p2, v5, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/settings/aK;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->h(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/dc;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dH;->a(Lcom/android/settings/dc;)J

    move-result-wide v0

    .line 757
    iget-object v2, p0, Lcom/android/settings/aK;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/aK;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v3, v3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->eE:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/aK;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v4}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->i(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/settings/dH;->a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JI)[B

    move-result-object v0

    .line 760
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/aK;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 761
    const-string v2, "add_keyguard_password_then_add_fingerprint"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 762
    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 763
    iget-object v0, p0, Lcom/android/settings/aK;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 764
    iget-object v0, p0, Lcom/android/settings/aK;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 765
    iget-object v0, p0, Lcom/android/settings/aK;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 771
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 768
    iget-object v0, p0, Lcom/android/settings/aK;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v1, p0, Lcom/android/settings/aK;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Lcom/android/internal/widget/LockPatternUtils;)V

    goto :goto_0
.end method
