.class Lcom/android/settings/em;
.super Ljava/lang/Object;
.source "MiuiConfirmCommonPassword.java"

# interfaces
.implements Lcom/android/settings/dg;


# instance fields
.field final synthetic qH:Lcom/android/settings/MiuiConfirmCommonPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(I)V
    .locals 2

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->h(Lcom/android/settings/MiuiConfirmCommonPassword;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-virtual {v0, p1}, Lcom/android/settings/MiuiConfirmCommonPassword;->R(I)V

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->f(Lcom/android/settings/MiuiConfirmCommonPassword;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->g(Lcom/android/settings/MiuiConfirmCommonPassword;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiConfirmCommonPassword;->setResult(I)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-virtual {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->finish()V

    goto :goto_0
.end method

.method public onFailed()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->b(Lcom/android/settings/MiuiConfirmCommonPassword;)Lcom/android/settings/dc;

    move-result-object v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->c(Lcom/android/settings/MiuiConfirmCommonPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f130080

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a1116

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->d(Lcom/android/settings/MiuiConfirmCommonPassword;)I

    .line 117
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->e(Lcom/android/settings/MiuiConfirmCommonPassword;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->f(Lcom/android/settings/MiuiConfirmCommonPassword;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->g(Lcom/android/settings/MiuiConfirmCommonPassword;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/em;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->a(Lcom/android/settings/MiuiConfirmCommonPassword;)V

    goto :goto_0
.end method
