.class public Lcom/android/settings/MiuiSecurityChooseUnlock;
.super Lcom/android/settings/Settings;
.source "MiuiSecurityChooseUnlock.java"


# static fields
.field private static dU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/MiuiSecurityChooseUnlock;->dU:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    .line 241
    return-void
.end method

.method private static W(I)I
    .locals 2

    .prologue
    const/high16 v0, 0x10000

    .line 233
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    if-ge p0, v0, :cond_0

    move p0, v0

    .line 238
    :cond_0
    return p0
.end method

.method private static a(ILandroid/app/admin/DevicePolicyManager;)I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 226
    if-ge p0, v0, :cond_0

    move p0, v0

    .line 229
    :cond_0
    return p0
.end method

.method private static a(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/KeyguardSettingsPreferenceFragment;)I
    .locals 4

    .prologue
    .line 215
    invoke-static {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILandroid/app/admin/DevicePolicyManager;)I

    move-result v0

    .line 216
    invoke-virtual {p2}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vpn_password_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 219
    invoke-static {v0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->W(I)I

    move-result v0

    .line 221
    :cond_0
    return v0
.end method

.method private static a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/MiuiSecurityChooseUnlock;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 198
    new-instance v1, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;)V

    .line 200
    const-string v1, "lockscreen.biometric_weak_fallback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v1, ":settings:show_fragment_title"

    const v2, 0x7f0a0514

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 207
    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 210
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    return-object v1
.end method

.method public static a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V
    .locals 12

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_fallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 120
    invoke-virtual {p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "use_lock_password_to_encrypt_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 123
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 125
    const/4 v1, 0x0

    .line 126
    const-wide/16 v2, 0x0

    .line 127
    invoke-virtual {p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 128
    new-instance v4, Lcom/android/settings/dc;

    invoke-direct {v4, v8}, Lcom/android/settings/dc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/dc;->isHardwareDetected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 130
    instance-of v5, v8, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 131
    const-string v1, "has_challenge"

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    const-string v2, "challenge"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 138
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/KeyguardSettingsPreferenceFragment;)I

    move-result v4

    .line 139
    const/high16 v5, 0x20000

    if-lt v4, v5, :cond_8

    .line 140
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 141
    const/4 v9, 0x4

    if-ge v5, v9, :cond_1

    .line 142
    const/4 v5, 0x4

    .line 144
    :cond_1
    const/high16 v9, 0x40000

    if-le v4, v9, :cond_2

    .line 145
    const/high16 v4, 0x40000

    .line 148
    :cond_2
    const/high16 v9, 0x20000

    if-eq v4, v9, :cond_3

    const/high16 v9, 0x30000

    if-ne v4, v9, :cond_6

    .line 150
    :cond_3
    const/4 v0, 0x4

    .line 154
    :goto_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-class v11, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 155
    const-string v10, "lockscreen.password_type"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v4, "lockscreen.password_min"

    invoke-virtual {v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v4, "lockscreen.password_max"

    invoke-virtual {v9, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-string v0, "user_id_to_set_password"

    invoke-virtual {p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "user_id_to_set_password"

    const/16 v10, -0x2710

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v0, "use_lock_password_to_encrypt_device"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    const-string v0, "set_keyguard_password"

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "set_keyguard_password"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v0, "add_keyguard_password_then_add_fingerprint"

    sget-boolean v4, Lcom/android/settings/MiuiSecurityChooseUnlock;->dU:Z

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    if-eqz v1, :cond_4

    .line 164
    const-string v0, "has_challenge"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    const-string v0, "challenge"

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    :cond_4
    if-eqz v6, :cond_7

    .line 168
    const/16 v0, 0xc9

    invoke-virtual {p1, v9, v0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    :cond_5
    :goto_1
    return-void

    .line 152
    :cond_6
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    goto :goto_0

    .line 170
    :cond_7
    const/16 v0, 0xca

    invoke-virtual {p1, v9, v0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 172
    :cond_8
    const/high16 v0, 0x10000

    if-ne v4, v0, :cond_b

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    invoke-virtual {p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ChooseLockPattern;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    const-string v4, "key_lock_method"

    const-string v5, "pattern"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v4, "use_lock_password_to_encrypt_device"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    const-string v4, "user_id_to_set_password"

    invoke-virtual {p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "user_id_to_set_password"

    const/16 v9, -0x2710

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v4, "set_keyguard_password"

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "set_keyguard_password"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string v4, "add_keyguard_password_then_add_fingerprint"

    sget-boolean v5, Lcom/android/settings/MiuiSecurityChooseUnlock;->dU:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    if-eqz v1, :cond_9

    .line 182
    const-string v1, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-string v1, "challenge"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 185
    :cond_9
    if-eqz v6, :cond_a

    .line 186
    const/16 v1, 0xc9

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 188
    :cond_a
    const/16 v1, 0xca

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 190
    :cond_b
    const v0, 0x8000

    if-ne v4, v0, :cond_5

    .line 191
    invoke-static {p1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method

.method public static a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    const-string v1, "use_lock_password_to_encrypt_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 50
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v3, "use_lock_password_to_encrypt_device"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string v1, "set_keyguard_password"

    const-string v3, "set_keyguard_password"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    const-string v0, "add_keyguard_password_then_add_fingerprint"

    sget-boolean v1, Lcom/android/settings/MiuiSecurityChooseUnlock;->dU:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0515

    invoke-static {p0, v0, p1, v2, v1}, Lcom/android/settings/dH;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 56
    return-void
.end method

.method public static a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IIII)V
    .locals 5

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "use_lock_password_to_encrypt_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "set_keyguard_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v3, "lockscreen.password_min"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v3, "lockscreen.password_max"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v3, "use_lock_password_to_encrypt_device"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string v1, "set_keyguard_password"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    const-string v1, "add_keyguard_password_then_add_fingerprint"

    sget-boolean v2, Lcom/android/settings/MiuiSecurityChooseUnlock;->dU:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-class v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0514

    invoke-static {p0, v1, p1, v0, v2}, Lcom/android/settings/dH;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 97
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/ChooseLockPassword;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const-string v3, "lockscreen.password_min"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v3, "lockscreen.password_max"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v3, "use_lock_password_to_encrypt_device"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const-string v1, "set_keyguard_password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    const-string v1, "add_keyguard_password_then_add_fingerprint"

    sget-boolean v2, Lcom/android/settings/MiuiSecurityChooseUnlock;->dU:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 29
    sput-boolean p0, Lcom/android/settings/MiuiSecurityChooseUnlock;->dU:Z

    return p0
.end method

.method static synthetic b(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/KeyguardSettingsPreferenceFragment;)I
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/KeyguardSettingsPreferenceFragment;)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 59
    const/high16 v0, 0x20000

    invoke-static {p0, p1, v1, v1, v0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IIII)V

    .line 60
    return-void
.end method

.method public static b(Lcom/android/settings/KeyguardSettingsPreferenceFragment;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    sparse-switch p1, :sswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 103
    :sswitch_0
    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0518

    invoke-static {p0, v0, p2, v2, v1}, Lcom/android/settings/dH;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 111
    :sswitch_1
    const-class v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0517

    invoke-static {p0, v0, p2, v2, v1}, Lcom/android/settings/dH;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static c(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000

    const/4 v1, 0x4

    .line 63
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    .line 65
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 66
    if-ge v2, v1, :cond_0

    move v0, v1

    .line 68
    :goto_0
    invoke-static {p0, p1, v0, v3, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IIII)V

    .line 70
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 42
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    return-object v0
.end method
