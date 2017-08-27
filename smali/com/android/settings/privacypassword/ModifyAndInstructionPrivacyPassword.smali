.class public Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;
.super Lmiui/preference/PreferenceActivity;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private aoY:Landroid/preference/Preference;

.field private aoZ:Landroid/preference/CheckBoxPreference;

.field private apa:Landroid/preference/PreferenceCategory;

.field private apb:Landroid/preference/CheckBoxPreference;

.field private apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

.field private apd:Landroid/view/View;

.field private ape:Landroid/widget/TextView;

.field private apf:Landroid/preference/PreferenceCategory;

.field private apg:I

.field private aph:Z

.field private api:Landroid/app/AlertDialog;

.field private apj:Landroid/content/DialogInterface$OnClickListener;

.field private apk:Landroid/content/DialogInterface$OnDismissListener;

.field private apl:Lcom/android/settings/dg;

.field private es:Lcom/android/settings/dc;

.field private qB:Landroid/app/AlertDialog;

.field private sL:Landroid/preference/CheckBoxPreference;

.field private y:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 338
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$3;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$3;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apj:Landroid/content/DialogInterface$OnClickListener;

    .line 347
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$4;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$4;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apk:Landroid/content/DialogInterface$OnDismissListener;

    .line 367
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apl:Lcom/android/settings/dg;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apg:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aph:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aoZ:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apb:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings/dc;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->es:Lcom/android/settings/dc;

    return-object v0
.end method

.method private d(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 167
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apg:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aph:Z

    return v0
.end method

.method static synthetic g(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apg:I

    return v0
.end method

.method static synthetic h(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ape:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qB:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tZ()V

    return-void
.end method

.method static synthetic k(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->uc()V

    return-void
.end method

.method private tV()V
    .locals 5

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 126
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 127
    if-nez v0, :cond_0

    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 126
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    aget-object v3, v1, v0

    aget-object v4, v2, v0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_1
    return-void
.end method

.method private tZ()V
    .locals 4

    .prologue
    .line 361
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 362
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 365
    :cond_0
    return-void
.end method

.method private ua()V
    .locals 3

    .prologue
    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->es:Lcom/android/settings/dc;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apl:Lcom/android/settings/dg;

    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->es:Lcom/android/settings/dc;

    invoke-virtual {v2}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dc;->a(Lcom/android/settings/dg;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    const-string v1, "ModifyAndInstructionPrivacyPassword"

    const-string v2, "finger identify error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private uc()V
    .locals 1

    .prologue
    .line 421
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->cj(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->u(Landroid/content/Context;I)V

    .line 423
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->ur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->ck(Landroid/content/Context;)V

    .line 427
    :cond_0
    return-void
.end method

.method private x(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 333
    const-string v0, "com.android.settings.bgColor"

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v0, "com.android.settings.titleColor"

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a120e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    return-void
.end method

.method private y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->uq()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "privacy_mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apa:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected cK(I)V
    .locals 3

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const-string v1, "enter_from_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivityForResult(Landroid/content/Intent;I)V

    .line 305
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 239
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bB(Ljava/lang/String;)V

    .line 242
    :cond_0
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->finish()V

    .line 243
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 205
    invoke-super {p0, p1, p2, p3}, Lmiui/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 206
    sparse-switch p1, :sswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 208
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    const-string v1, "privacy_password_extra_data"

    const-string v2, "ModifyPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tW()V

    goto :goto_0

    .line 220
    :sswitch_2
    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 221
    :goto_1
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bd(Z)V

    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 225
    :sswitch_3
    if-ne p2, v0, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tY()V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apb:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->uo()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->uo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bd(Z)V

    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x7162 -> :sswitch_2
        0x7163 -> :sswitch_3
        0x46dc2 -> :sswitch_0
        0x46dcb -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->uq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->setRequestedOrientation(I)V

    .line 93
    :cond_0
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->addPreferencesFromResource(I)V

    .line 94
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->cg(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 95
    const-string v0, "security"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->y:Lmiui/security/SecurityManager;

    .line 96
    const-string v0, "modify_privacy_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aoY:Landroid/preference/Preference;

    .line 97
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aoY:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    const-string v0, "forget_privacy_password_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aoZ:Landroid/preference/CheckBoxPreference;

    .line 99
    const-string v0, "privacy_password_spcific"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apa:Landroid/preference/PreferenceCategory;

    .line 100
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->un()Ljava/lang/String;

    move-result-object v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aoZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    const-string v0, "privacy_password_visible_pattern"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->sL:Landroid/preference/CheckBoxPreference;

    .line 104
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->sL:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->ch(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->sL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    new-instance v0, Lcom/android/settings/dc;

    invoke-direct {v0, p0}, Lcom/android/settings/dc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->es:Lcom/android/settings/dc;

    .line 108
    const-string v0, "password_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apf:Landroid/preference/PreferenceCategory;

    .line 109
    const-string v0, "use_finger_cofirm_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apb:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->cl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->uo()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bd(Z)V

    .line 119
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tV()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->uc()V

    .line 121
    return-void

    .line 111
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apf:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qB:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qB:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->api:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->api:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 298
    :cond_1
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 299
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->tU()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    if-eqz v0, :cond_1

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/privacypassword/FunctionSpecification;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v2, "privacy_password_function_specification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivity(Landroid/content/Intent;)V

    .line 163
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_1
    const-string v0, "modify_privacy_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const v0, 0x46dc2

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->cK(I)V

    goto :goto_0

    .line 155
    :cond_2
    const-string v0, "privacy_password_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->sL:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->sL:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->d(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->sL:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->n(Landroid/content/Context;Z)V

    goto :goto_0

    .line 158
    :cond_3
    const-string v0, "forget_privacy_password_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    const v0, 0x46dcb

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->cK(I)V

    goto :goto_0

    .line 160
    :cond_4
    const-string v0, "use_finger_cofirm_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/16 v0, 0x7163

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->cK(I)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onRestart()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->sL:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->ch(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 260
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->um()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->finish()V

    .line 193
    :cond_0
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cn(Landroid/content/Context;)Z

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->un()Ljava/lang/String;

    move-result-object v1

    .line 195
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->co(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 196
    :goto_0
    if-nez v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bB(Ljava/lang/String;)V

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aoZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 201
    return-void

    .line 195
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 247
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cn(Landroid/content/Context;)Z

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->un()Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->co(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bB(Ljava/lang/String;)V

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aoZ:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 253
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onStart()V

    .line 254
    return-void

    .line 252
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected tW()V
    .locals 3

    .prologue
    .line 171
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->y:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->b(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->y:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->a(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    .line 175
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-static {p0, v0, v1}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/android/settings/privacypassword/PrivacyPasswordManager;)V

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->un()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bB(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aoZ:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tX()V

    .line 183
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->aoZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a11eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected tX()V
    .locals 6

    .prologue
    .line 263
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a11fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a11ff

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$2;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$2;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->api:Landroid/app/AlertDialog;

    .line 287
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->api:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 288
    return-void
.end method

.method protected tY()V
    .locals 5

    .prologue
    const/16 v4, 0x7162

    .line 308
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->d(Landroid/preference/Preference;)Z

    move-result v0

    .line 309
    if-eqz v0, :cond_4

    .line 310
    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->cl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ub()V

    .line 330
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->cl(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-direct {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->x(Landroid/content/Intent;)V

    .line 317
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 320
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.NewFingerprintInternalActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 322
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    invoke-direct {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->x(Landroid/content/Intent;)V

    .line 325
    :cond_3
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bd(Z)V

    goto :goto_0
.end method

.method protected ub()V
    .locals 3

    .prologue
    .line 409
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qB:Landroid/app/AlertDialog;

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apd:Landroid/view/View;

    .line 411
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apd:Landroid/view/View;

    const v1, 0x7f13007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ape:Landroid/widget/TextView;

    .line 412
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ape:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qB:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qB:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apj:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qB:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 416
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qB:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->apk:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 417
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ua()V

    .line 418
    return-void
.end method
