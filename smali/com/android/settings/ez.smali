.class Lcom/android/settings/ez;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic rv:Lcom/android/settings/MiuiFingerprintDetailFragment;

.field final synthetic rw:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/ez;->rv:Lcom/android/settings/MiuiFingerprintDetailFragment;

    iput-object p2, p0, Lcom/android/settings/ez;->rw:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/ez;->rv:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/ez;->rv:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const v2, 0x7f0a1113

    invoke-virtual {v1, v2}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/settings/ez;->rv:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ez;->rw:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/ez;->rv:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ez;->rw:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 101
    return-void
.end method
