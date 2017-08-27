.class Lcom/android/settings/aG;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/dT;


# instance fields
.field final synthetic eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aR()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->eg:Landroid/widget/TextView;

    const v1, 0x7f0a052b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->f(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->g(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 283
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->eB:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->fb:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->fc:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_4

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->eE:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->eE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->fd:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 273
    :cond_2
    :goto_0
    return-void

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->fc:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eX:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eZ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->fe:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ff:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_9

    .line 239
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_6

    .line 240
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eZ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 242
    :cond_6
    const/4 v1, 0x1

    .line 243
    iget-object v2, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v2, v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->m:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v2

    .line 245
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->c(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 246
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/dH;->e(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/android/settings/dH;->a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 248
    iget-object v2, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->fe:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_1
    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->eE:Ljava/util/List;

    .line 264
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->fa:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 251
    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->d(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 252
    iget-object v3, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->e(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v3

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->e(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/dH;->e(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->e(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/settings/dH;->a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 255
    iget-object v2, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ff:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    move v0, v1

    goto :goto_1

    .line 267
    :cond_9
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->fd:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->eB:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/aG;->eJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 221
    invoke-direct {p0}, Lcom/android/settings/aG;->aR()V

    .line 222
    return-void
.end method
