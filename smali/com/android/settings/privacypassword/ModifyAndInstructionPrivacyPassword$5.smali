.class Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Lcom/android/settings/dg;


# instance fields
.field final synthetic apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 389
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bd(Z)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a120c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->i(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->i(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 393
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v3}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z

    .line 394
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;I)I

    .line 395
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->k(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->d(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dc;->ek()V

    .line 397
    return-void
.end method

.method public onFailed()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->cj(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 371
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->u(Landroid/content/Context;I)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->g(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)I

    move-result v1

    if-ge v1, v4, :cond_0

    if-ge v0, v4, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v3}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z

    .line 375
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->h(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a120b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->i(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 377
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->j(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    .line 385
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v2}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z

    .line 380
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->i(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 381
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v2}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;I)I

    .line 382
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a120d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;->apm:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->k(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    goto :goto_0
.end method
