.class Lcom/android/settings/fp;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic tG:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

.field final synthetic tH:Lcom/android/settings/fk;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/settings/fk;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/settings/fp;->tG:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    iput-object p2, p0, Lcom/android/settings/fp;->tH:Lcom/android/settings/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 480
    .line 481
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/fp;->tG:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-virtual {v1}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    iget-object v1, p0, Lcom/android/settings/fp;->tH:Lcom/android/settings/fk;

    invoke-static {v1}, Lcom/android/settings/fk;->c(Lcom/android/settings/fk;)Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fp;->tH:Lcom/android/settings/fk;

    invoke-static {v1, v2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->b(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/settings/fk;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    .line 483
    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/fq;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/fq;-><init>(Lcom/android/settings/fp;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 491
    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/fr;

    invoke-direct {v2, p0}, Lcom/android/settings/fr;-><init>(Lcom/android/settings/fp;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 499
    return-void
.end method
