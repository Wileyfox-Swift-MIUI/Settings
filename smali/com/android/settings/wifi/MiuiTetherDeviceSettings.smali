.class public Lcom/android/settings/wifi/MiuiTetherDeviceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiTetherDeviceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aCc:Ljava/util/List;

.field private aCd:Landroid/preference/ListPreference;

.field private aCe:Landroid/preference/Preference;

.field private aCf:Landroid/preference/PreferenceCategory;

.field private aCg:Lcom/android/settings/wifi/s;

.field private aCh:Landroid/content/SharedPreferences;

.field private aCi:Ljava/util/Set;

.field private aCj:Z

.field private aCk:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settings/wifi/r;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/r;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCc:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/android/settings/wifi/q;)Lmiui/preference/ValuePreference;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {p1}, Lcom/android/settings/wifi/q;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/android/settings/wifi/q;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 148
    return-object v0

    .line 143
    :cond_0
    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p1}, Lcom/android/settings/wifi/q;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Lcom/android/settings/wifi/q;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->b(Lcom/android/settings/wifi/q;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mS:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->xY()V

    return-void
.end method

.method private b(Lcom/android/settings/wifi/q;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCh:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/android/settings/wifi/q;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1}, Lcom/android/settings/wifi/q;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    return-void
.end method

.method static synthetic c(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCi:Ljava/util/Set;

    return-object v0
.end method

.method private ct(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCh:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void
.end method

.method private xY()V
    .locals 4

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCj:Z

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "connected_devices"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCf:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCf:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 161
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCj:Z

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/q;

    .line 163
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCf:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->a(Lcom/android/settings/wifi/q;)Lmiui/preference/ValuePreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 166
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCh:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/android/settings/wifi/q;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->b(Lcom/android/settings/wifi/q;)V

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/q;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->a(Lcom/android/settings/wifi/q;)Lmiui/preference/ValuePreference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 177
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCj:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCf:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCf:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_5
    return-void
.end method

.method private xZ()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCh:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCi:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->ct(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const-class v0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->addPreferencesFromResource(I)V

    .line 84
    const-string v0, "connected_devices"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCf:Landroid/preference/PreferenceCategory;

    .line 85
    const-string v0, "block_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCe:Landroid/preference/Preference;

    .line 86
    const-string v0, "max_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCd:Landroid/preference/ListPreference;

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCd:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x7d7

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fE;->f(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCd:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCd:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCd:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    const-string v0, "qcom"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCj:Z

    .line 93
    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCk:Z

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCj:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fE;->getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCi:Ljava/util/Set;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tetherBlockListPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCh:Landroid/content/SharedPreferences;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->xZ()V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCe:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fE;->N(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCc:Ljava/util/List;

    .line 105
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->xY()V

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fE;->gv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCd:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    move-object v0, p2

    .line 212
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 213
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/fE;->g(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCd:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCd:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCd:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/g;->cV(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/b/g;->b(ZLandroid/content/Context;)Z

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/b/g;->b(ZLandroid/content/Context;)Z

    :cond_0
    move v0, v1

    .line 226
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "saved_bundle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 249
    :goto_0
    if-eqz v0, :cond_0

    .line 250
    const-string v2, "show_dialog"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mS:Z

    .line 252
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mS:Z

    if-eqz v2, :cond_0

    .line 253
    new-instance v2, Lcom/android/settings/wifi/s;

    new-instance v3, Lcom/android/settings/wifi/q;

    const-string v4, "save_device_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "save_device_mac"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/settings/wifi/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, v1}, Lcom/android/settings/wifi/s;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Lcom/android/settings/wifi/q;Lcom/android/settings/wifi/r;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCg:Lcom/android/settings/wifi/s;

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCg:Lcom/android/settings/wifi/s;

    invoke-virtual {v0}, Lcom/android/settings/wifi/s;->show()V

    .line 258
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 248
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCg:Lcom/android/settings/wifi/s;

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "show_dialog"

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mS:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v0, "save_device_name"

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCg:Lcom/android/settings/wifi/s;

    invoke-virtual {v1}, Lcom/android/settings/wifi/s;->ya()Lcom/android/settings/wifi/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/q;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "save_device_mac"

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aCg:Lcom/android/settings/wifi/s;

    invoke-virtual {v1}, Lcom/android/settings/wifi/s;->ya()Lcom/android/settings/wifi/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/q;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 239
    const-string v1, "saved_bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f04018a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method
