.class public Lcom/android/settings/MiuiDriveModeSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiDriveModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static PREFIX:Ljava/lang/String;

.field public static qY:Ljava/lang/String;

.field public static qZ:Ljava/lang/String;

.field public static ra:Ljava/lang/String;

.field public static rb:Ljava/lang/String;

.field public static rc:Ljava/lang/String;

.field public static rd:Ljava/lang/String;

.field public static re:Ljava/lang/String;

.field public static rf:Ljava/lang/String;

.field public static rg:Ljava/lang/String;


# instance fields
.field private rh:Landroid/preference/TwoStatePreference;

.field private ri:Landroid/preference/TwoStatePreference;

.field private rj:Landroid/preference/TwoStatePreference;

.field private rk:Landroid/preference/TwoStatePreference;

.field private rl:Landroid/preference/TwoStatePreference;

.field private rm:Landroid/preference/EditTextPreference;

.field private rn:Landroid/preference/CheckBoxPreference;

.field private ro:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "drive_mode_"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    .line 25
    const-string v0, "drive_mode"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->qY:Ljava/lang/String;

    .line 26
    const-string v0, "phone_report"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->qZ:Ljava/lang/String;

    .line 27
    const-string v0, "sms_report"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->ra:Ljava/lang/String;

    .line 28
    const-string v0, "invert_stop_report"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->rb:Ljava/lang/String;

    .line 29
    const-string v0, "calling_auto_sms_reply"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->rc:Ljava/lang/String;

    .line 30
    const-string v0, "sms_auto_sms_reply"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->rd:Ljava/lang/String;

    .line 31
    const-string v0, "only_contact_reply"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->re:Ljava/lang/String;

    .line 32
    const-string v0, "sms_auto_reply_content"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->rf:Ljava/lang/String;

    .line 33
    const-string v0, "enable_drive_mode"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->rg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private fn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    .line 103
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rh:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rh:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->ri:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->ri:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rj:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rj:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rk:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rk:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rl:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rl:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rm:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 168
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->addPreferencesFromResource(I)V

    .line 49
    sget-object v0, Lcom/android/settings/MiuiDriveModeSettings;->qZ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rh:Landroid/preference/TwoStatePreference;

    .line 50
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rh:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    sget-object v0, Lcom/android/settings/MiuiDriveModeSettings;->ra:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->ri:Landroid/preference/TwoStatePreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->ri:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    sget-object v0, Lcom/android/settings/MiuiDriveModeSettings;->rc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rj:Landroid/preference/TwoStatePreference;

    .line 54
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rj:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    sget-object v0, Lcom/android/settings/MiuiDriveModeSettings;->rd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rk:Landroid/preference/TwoStatePreference;

    .line 56
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rk:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    sget-object v0, Lcom/android/settings/MiuiDriveModeSettings;->re:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rl:Landroid/preference/TwoStatePreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rl:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    sget-object v0, Lcom/android/settings/MiuiDriveModeSettings;->rf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rm:Landroid/preference/EditTextPreference;

    .line 60
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rm:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0a0ece

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->ro:Z

    .line 63
    sget-object v0, Lcom/android/settings/MiuiDriveModeSettings;->rg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rn:Landroid/preference/CheckBoxPreference;

    .line 64
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drive_mode_drive_mode"

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rm:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MiuiDriveModeSettings;->fn()V

    .line 187
    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->rn:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/settings/MiuiDriveModeSettings;->fn()V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v3, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/MiuiDriveModeSettings;->fn()V

    .line 79
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 84
    return-void
.end method
