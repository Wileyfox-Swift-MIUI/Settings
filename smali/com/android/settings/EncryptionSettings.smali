.class public Lcom/android/settings/EncryptionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EncryptionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final mT:I


# instance fields
.field private dO:Lcom/android/internal/widget/LockPatternUtils;

.field private mQ:Lcom/android/settings/cX;

.field private mR:Lcom/android/settings/cY;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mS:Z

.field private mU:Landroid/preference/CheckBoxPreference;

.field private mV:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/EncryptionSettings;->mT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/android/settings/cW;

    invoke-direct {v0, p0}, Lcom/android/settings/cW;-><init>(Lcom/android/settings/EncryptionSettings;)V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    return-void
.end method

.method private D(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dH;->b(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    .line 197
    sparse-switch v0, :sswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 199
    :sswitch_0
    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a0518

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/EncryptionSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 207
    :sswitch_1
    const-class v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a0517

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/EncryptionSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 211
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->eb()V

    goto :goto_0

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/android/settings/EncryptionSettings;)Lcom/android/settings/cY;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mR:Lcom/android/settings/cY;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/EncryptionSettings;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionSettings;->D(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/EncryptionSettings;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings/EncryptionSettings;->mS:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/EncryptionSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mU:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private ea()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 151
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    new-instance v0, Lcom/android/settings/cY;

    const v1, 0x7f0a119b

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/cY;-><init>(Lcom/android/settings/EncryptionSettings;ILcom/android/settings/cW;)V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mR:Lcom/android/settings/cY;

    .line 153
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mR:Lcom/android/settings/cY;

    invoke-virtual {v0}, Lcom/android/settings/cY;->show()V

    .line 154
    invoke-direct {p0, v3}, Lcom/android/settings/EncryptionSettings;->z(Z)V

    .line 155
    return-void
.end method

.method private eb()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    new-instance v0, Lcom/android/settings/cY;

    const v1, 0x7f0a119c

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/cY;-><init>(Lcom/android/settings/EncryptionSettings;ILcom/android/settings/cW;)V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mR:Lcom/android/settings/cY;

    .line 165
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mR:Lcom/android/settings/cY;

    invoke-virtual {v0}, Lcom/android/settings/cY;->show()V

    .line 166
    invoke-direct {p0, v3}, Lcom/android/settings/EncryptionSettings;->z(Z)V

    .line 167
    return-void
.end method

.method private ec()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_security_encryption_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private z(Z)V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_security_encryption_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/android/settings/EncryptionSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 181
    sparse-switch p1, :sswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 183
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->ea()V

    goto :goto_0

    .line 188
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->eb()V

    goto :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    .line 73
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/android/settings/EncryptionSettings;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 77
    const-string v1, "security_encryption_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mU:Landroid/preference/CheckBoxPreference;

    .line 78
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mU:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->ec()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mV:Landroid/content/IntentFilter;

    .line 83
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mV:Landroid/content/IntentFilter;

    const-string v1, "com.miui.EncryptionPassword"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mR:Lcom/android/settings/cY;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mR:Lcom/android/settings/cY;

    invoke-virtual {v0}, Lcom/android/settings/cY;->ee()V

    .line 142
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/EncryptionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    .line 90
    const-string v2, "security_encryption_enable"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/settings/EncryptionSettings;->mU:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    new-instance v0, Lcom/android/settings/cX;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/cX;-><init>(Lcom/android/settings/EncryptionSettings;Lcom/android/settings/cW;)V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mQ:Lcom/android/settings/cX;

    .line 96
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mQ:Lcom/android/settings/cX;

    invoke-virtual {v0}, Lcom/android/settings/cX;->show()V

    .line 102
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 92
    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "saved_bundle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 118
    :goto_0
    if-eqz v0, :cond_0

    .line 119
    const-string v2, "show_dialog"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/EncryptionSettings;->mS:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/EncryptionSettings;->mS:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/settings/cX;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cX;-><init>(Lcom/android/settings/EncryptionSettings;Lcom/android/settings/cW;)V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mQ:Lcom/android/settings/cX;

    .line 123
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mQ:Lcom/android/settings/cX;

    invoke-virtual {v0}, Lcom/android/settings/cX;->show()V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/EncryptionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/EncryptionSettings;->mV:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void

    :cond_1
    move-object v0, v1

    .line 117
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "show_dialog"

    iget-boolean v1, p0, Lcom/android/settings/EncryptionSettings;->mS:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    const-string v1, "saved_bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 111
    return-void
.end method
