.class public Lcom/android/settings/dndmode/c;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AlarmContentFragment.java"


# instance fields
.field private acj:Landroid/preference/CheckBoxPreference;

.field private ack:Landroid/preference/CheckBoxPreference;

.field private acl:Landroid/preference/CheckBoxPreference;

.field private acm:Landroid/service/notification/ZenModeConfig;

.field private final acn:Lcom/android/settings/dndmode/g;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dndmode/c;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/android/settings/dndmode/g;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/g;-><init>(Lcom/android/settings/dndmode/c;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/c;->acn:Lcom/android/settings/dndmode/g;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dndmode/c;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->acm:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/dndmode/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/dndmode/c;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/settings/dndmode/c;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/dndmode/c;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/settings/dndmode/c;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/dndmode/c;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/dndmode/c;->qz()V

    return-void
.end method

.method private qz()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/settings/dndmode/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/c;->acm:Landroid/service/notification/ZenModeConfig;

    .line 106
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->acj:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->acj:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/c;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->ack:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->ack:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/c;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->acl:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->acl:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/c;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    :cond_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/settings/dndmode/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/c;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/dndmode/c;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 51
    const-string v0, "phone_calls"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/c;->acj:Landroid/preference/CheckBoxPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->acj:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/dndmode/d;

    invoke-direct {v2, p0}, Lcom/android/settings/dndmode/d;-><init>(Lcom/android/settings/dndmode/c;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string v0, "messages"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/c;->ack:Landroid/preference/CheckBoxPreference;

    .line 68
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->ack:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/dndmode/e;

    invoke-direct {v2, p0}, Lcom/android/settings/dndmode/e;-><init>(Lcom/android/settings/dndmode/c;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    const-string v0, "events"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/c;->acl:Landroid/preference/CheckBoxPreference;

    .line 84
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->acl:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/dndmode/f;

    invoke-direct {v1, p0}, Lcom/android/settings/dndmode/f;-><init>(Lcom/android/settings/dndmode/c;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/dndmode/c;->qz()V

    .line 99
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->acn:Lcom/android/settings/dndmode/g;

    invoke-virtual {v0}, Lcom/android/settings/dndmode/g;->unregister()V

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/dndmode/c;->qz()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/dndmode/c;->acn:Lcom/android/settings/dndmode/g;

    invoke-virtual {v0}, Lcom/android/settings/dndmode/g;->register()V

    .line 122
    return-void
.end method
