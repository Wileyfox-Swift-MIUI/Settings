.class Lcom/android/settings/aD;
.super Landroid/text/style/ClickableSpan;
.source "ChooseLockPassword.java"


# instance fields
.field final synthetic eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/settings/aD;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/settings/aD;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/aD;->eu:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/LockSecureAfterTimeout;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 513
    return-void
.end method
