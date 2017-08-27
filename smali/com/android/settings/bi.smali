.class Lcom/android/settings/bi;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# instance fields
.field final synthetic gJ:Lcom/android/settings/CryptKeeper;

.field gK:I

.field gL:Ljava/lang/String;

.field gM:Z

.field gN:Z


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 1

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/bi;->gK:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 511
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/bi;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 520
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->c(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v3

    .line 521
    invoke-interface {v3}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/settings/bi;->gK:I

    .line 522
    const-string v2, "OwnerInfo"

    invoke-interface {v3, v2}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bi;->gL:Ljava/lang/String;

    .line 523
    const-string v2, "0"

    const-string v4, "PatternVisible"

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/bi;->gM:Z

    .line 524
    const-string v2, "0"

    const-string v4, "PasswordVisible"

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/bi;->gN:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_0
    move v2, v1

    .line 523
    goto :goto_0

    :cond_1
    move v0, v1

    .line 524
    goto :goto_1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling mount service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 511
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/bi;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    iget-boolean v0, p0, Lcom/android/settings/bi;->gN:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    iget v0, p0, Lcom/android/settings/bi;->gK:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 538
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f04004b

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0a0845

    invoke-static {v0, v3}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;I)I

    .line 548
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f13004d

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 549
    iget-object v3, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->i(Lcom/android/settings/CryptKeeper;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f130097

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 552
    iget-object v3, p0, Lcom/android/settings/bi;->gL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->j(Lcom/android/settings/CryptKeeper;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v3, 0x400000

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/MiuiKeyguardLockPatternView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/MiuiKeyguardLockPatternView;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/bi;->gM:Z

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setInStealthMode(Z)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->k(Lcom/android/settings/CryptKeeper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, v2}, Lcom/android/settings/CryptKeeper;->e(Lcom/android/settings/CryptKeeper;Z)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->l(Lcom/android/settings/CryptKeeper;)V

    .line 568
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 534
    goto :goto_0

    .line 540
    :cond_3
    iget v0, p0, Lcom/android/settings/bi;->gK:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 541
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f040049

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, v2}, Lcom/android/settings/CryptKeeper;->e(Lcom/android/settings/CryptKeeper;Z)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0a0846

    invoke-static {v0, v3}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_1

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f040047

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/bi;->gJ:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0a0844

    invoke-static {v0, v3}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;I)I

    goto/16 :goto_1

    :cond_5
    move v1, v2

    .line 560
    goto :goto_2
.end method
