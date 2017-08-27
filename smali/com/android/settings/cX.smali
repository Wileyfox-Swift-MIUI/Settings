.class Lcom/android/settings/cX;
.super Ljava/lang/Object;
.source "EncryptionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private gn:Z

.field private mDialog:Landroid/app/AlertDialog;

.field final synthetic mW:Lcom/android/settings/EncryptionSettings;

.field private mX:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/EncryptionSettings;)V
    .locals 6

    .prologue
    const/high16 v5, 0x1040000

    const v4, 0x1010355

    .line 223
    iput-object p1, p0, Lcom/android/settings/cX;->mW:Lcom/android/settings/EncryptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-virtual {p1}, Lcom/android/settings/EncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    invoke-static {p1}, Lcom/android/settings/EncryptionSettings;->b(Lcom/android/settings/EncryptionSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/cX;->mX:Z

    .line 228
    iget-boolean v1, p0, Lcom/android/settings/cX;->mX:Z

    if-eqz v1, :cond_0

    .line 229
    const-string v1, "EncryptionSettings"

    const-string v2, "checkbox: enabled, prepare the close dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1198

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a1199

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cX;->mDialog:Landroid/app/AlertDialog;

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/android/settings/cX;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 248
    return-void

    .line 238
    :cond_0
    const-string v1, "EncryptionSettings"

    const-string v2, "checkbox: not enabled, prepare set up dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a1192

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a119a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cX;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/settings/EncryptionSettings;Lcom/android/settings/cW;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/settings/cX;-><init>(Lcom/android/settings/EncryptionSettings;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/cX;->gn:Z

    .line 258
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/settings/cX;->mW:Lcom/android/settings/EncryptionSettings;

    invoke-static {v0, v1}, Lcom/android/settings/EncryptionSettings;->a(Lcom/android/settings/EncryptionSettings;Z)Z

    .line 264
    iget-boolean v0, p0, Lcom/android/settings/cX;->gn:Z

    if-eqz v0, :cond_0

    .line 265
    iput-boolean v1, p0, Lcom/android/settings/cX;->gn:Z

    .line 267
    iget-boolean v0, p0, Lcom/android/settings/cX;->mX:Z

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "EncryptionSettings"

    const-string v1, "close the device encryption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/settings/cX;->mW:Lcom/android/settings/EncryptionSettings;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/settings/EncryptionSettings;->a(Lcom/android/settings/EncryptionSettings;I)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string v0, "EncryptionSettings"

    const-string v1, "set up new lock password"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.MiuiSecurityChooseUnlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v1, "use_lock_password_to_encrypt_device"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/android/settings/cX;->mW:Lcom/android/settings/EncryptionSettings;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/EncryptionSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/cX;->mW:Lcom/android/settings/EncryptionSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/EncryptionSettings;->a(Lcom/android/settings/EncryptionSettings;Z)Z

    .line 252
    iget-object v0, p0, Lcom/android/settings/cX;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 253
    return-void
.end method
