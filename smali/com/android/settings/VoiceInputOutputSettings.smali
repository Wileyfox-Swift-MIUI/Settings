.class public Lcom/android/settings/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"


# instance fields
.field private CV:Landroid/preference/PreferenceGroup;

.field private CW:Landroid/preference/PreferenceCategory;

.field private CX:Landroid/preference/Preference;

.field private final CY:Lcom/android/settings/SettingsPreferenceFragment;

.field private final CZ:Landroid/speech/tts/TtsEngines;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/settings/VoiceInputOutputSettings;->CY:Lcom/android/settings/SettingsPreferenceFragment;

    .line 45
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CZ:Landroid/speech/tts/TtsEngines;

    .line 46
    return-void
.end method

.method private iF()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->iG()Z

    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CY:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->CW:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    :cond_0
    return-void
.end method

.method private iG()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CZ:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CW:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->CX:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CY:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CV:Landroid/preference/PreferenceGroup;

    .line 50
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CV:Landroid/preference/PreferenceGroup;

    const-string v1, "voice_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CW:Landroid/preference/PreferenceCategory;

    .line 51
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CW:Landroid/preference/PreferenceCategory;

    const-string v1, "tts_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->CX:Landroid/preference/Preference;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->iF()V

    .line 54
    return-void
.end method
