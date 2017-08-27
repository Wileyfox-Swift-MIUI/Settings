.class public Lcom/android/settings/KeyguardAdvancedSettings;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "KeyguardAdvancedSettings.java"


# instance fields
.field private oW:Z

.field private oX:Z

.field private oY:Landroid/preference/CheckBoxPreference;

.field private oZ:Landroid/preference/Preference;

.field private pa:Landroid/preference/CheckBoxPreference;

.field private pb:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private F(Z)V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 160
    return-void
.end method

.method private G(Z)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/KeyguardAdvancedSettings;->F(Z)V

    .line 167
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/android/settings/KeyguardAdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 39
    :cond_0
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardAdvancedSettings;->addPreferencesFromResource(I)V

    .line 40
    const-string v0, "screen_on_proximity_sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    .line 41
    const-string v0, "smartcover_sensitive_small_win_sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oZ:Landroid/preference/Preference;

    .line 42
    const-string v0, "smartcover_lock_or_unlock_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->pa:Landroid/preference/CheckBoxPreference;

    .line 43
    const-string v0, "bluetooth_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->pb:Landroid/preference/Preference;

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/KeyguardAdvancedSettings;->pb:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 48
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 52
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "lock_screen_signature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "com.android.settings.OwnerInfoSettings"

    move-object v0, p0

    move-object v1, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/KeyguardAdvancedSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 69
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 57
    :cond_1
    const-string v1, "bluetooth_unlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-string v2, "com.android.settings.MiuiSecurityBluetoothSettingsFragment"

    const v5, 0x7f0a101d

    move-object v0, p0

    move-object v1, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/KeyguardAdvancedSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 60
    :cond_2
    const-string v1, "smartcover_lock_or_unlock_screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 61
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 62
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v1, "smartcover_sensitive_small_win_sensor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    const-string v2, "com.android.settings.MiuiSmartCoverSettingsFragment"

    const v5, 0x7f0a10af

    move-object v0, p0

    move-object v1, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/KeyguardAdvancedSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/KeyguardAdvancedSettings;->F(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oX:Z

    .line 83
    const-string v0, "support_hall_sensor"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oW:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 85
    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oW:Z

    if-eqz v0, :cond_5

    .line 89
    const-string v0, "support_multiple_small_win_cover"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->pa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :goto_1
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v4, p0, Lcom/android/settings/KeyguardAdvancedSettings;->pb:Landroid/preference/Preference;

    iget-boolean v5, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oX:Z

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 107
    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->pb:Landroid/preference/Preference;

    const v4, 0x7f0a101f

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 113
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oX:Z

    if-nez v0, :cond_7

    .line 114
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 130
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 131
    const-string v4, "android.hardware.sensor.proximity"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oZ:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    const-string v0, "persist.sys.smartcover_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 96
    if-eqz v0, :cond_4

    move v0, v1

    .line 97
    :goto_4
    iget-object v4, p0, Lcom/android/settings/KeyguardAdvancedSettings;->pa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 96
    goto :goto_4

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->pa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oZ:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->pb:Landroid/preference/Preference;

    const v4, 0x7f0a101e

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_lock_before_unlock"

    sget-boolean v5, Landroid/provider/MiuiSettings$System;->SHOW_LOCK_BEFORE_UNLOCK_DEFAULT:Z

    invoke-static {v0, v4, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 123
    iget-object v4, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 124
    if-nez v0, :cond_2

    .line 125
    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    invoke-direct {p0, v0}, Lcom/android/settings/KeyguardAdvancedSettings;->G(Z)V

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_5

    .line 137
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 140
    if-ne v0, v6, :cond_b

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v2, v1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 151
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->oY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 148
    :cond_b
    if-nez v0, :cond_a

    move v1, v2

    goto :goto_6
.end method
