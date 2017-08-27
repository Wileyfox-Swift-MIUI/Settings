.class public Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "TransparentHelper.java"


# instance fields
.field private apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private b(II)V
    .locals 3

    .prologue
    .line 84
    sparse-switch p1, :sswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 86
    :sswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->startActivity(Landroid/content/Intent;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->finish()V

    goto :goto_0

    .line 93
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->finish()V

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x7148 -> :sswitch_1
        0x46db0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 79
    if-eqz p2, :cond_0

    const-string v2, "miui_security_fragment_result"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 80
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->b(II)V

    .line 81
    return-void

    :cond_0
    move v2, v1

    .line 79
    goto :goto_0

    :cond_1
    move v0, v1

    .line 80
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->b(II)V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bind_account_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    const-string v1, "bind_account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "enter_from_settings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    const/16 v1, 0x7148

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->cg(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 56
    iget-object v0, p0, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->um()Z

    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "enter_from_settings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const v1, 0x46db0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/privacypassword/PrivacyPasswordSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/TransparentHelper$TransparentHelperFragment;->finish()V

    goto :goto_0
.end method
