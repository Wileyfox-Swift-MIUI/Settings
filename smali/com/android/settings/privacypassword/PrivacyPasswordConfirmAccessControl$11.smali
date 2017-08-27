.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aqk:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;->aqk:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iput p2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;->aqk:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->m(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    check-cast p1, Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->be(Z)V

    .line 719
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;->aqk:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const-class v2, Lcom/android/settings/privacypassword/TransparentHelper;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 720
    const-string v1, "bind_account_extra"

    const-string v2, "bind_account"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;->aqk:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->startActivityForResult(Landroid/content/Intent;I)V

    .line 722
    return-void
.end method
