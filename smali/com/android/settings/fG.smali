.class final Lcom/android/settings/fG;
.super Ljava/lang/Object;
.source "MiuiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$callback:Landroid/accounts/AccountManagerCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/settings/fG;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/settings/fG;->val$callback:Landroid/accounts/AccountManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/settings/fG;->val$act:Landroid/app/Activity;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 435
    iget-object v0, p0, Lcom/android/settings/fG;->val$act:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 436
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 437
    const-string v3, "verify_only"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    iget-object v3, p0, Lcom/android/settings/fG;->val$act:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/fG;->val$callback:Landroid/accounts/AccountManagerCallback;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 439
    return-void
.end method
