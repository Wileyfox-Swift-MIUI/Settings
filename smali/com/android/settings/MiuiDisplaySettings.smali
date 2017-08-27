.class public Lcom/android/settings/MiuiDisplaySettings;
.super Lcom/android/settings/DisplaySettings;
.source "MiuiDisplaySettings.java"


# instance fields
.field private qN:Landroid/preference/CheckBoxPreference;

.field private qO:Lcom/android/settings/fE;

.field private qP:Landroid/preference/CheckBoxPreference;

.field private qQ:Landroid/preference/CheckBoxPreference;

.field private qR:Lcom/android/settings/display/ResolutionListPreference;

.field private qS:Landroid/database/ContentObserver;

.field private qT:Lcom/android/settings/ai;

.field private qU:Lmiui/preference/ValuePreference;

.field private qV:Lcom/android/settings/ai;

.field private qW:Lmiui/preference/ValuePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;-><init>()V

    return-void
.end method

.method private F(Z)V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->fl()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->F(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiDisplaySettings;)Lmiui/preference/ValuePreference;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qU:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiDisplaySettings;)Lmiui/preference/ValuePreference;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qW:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method private fl()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "screen_paper_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 202
    if-eqz v0, :cond_0

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->bu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0a0ef1

    :goto_0
    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 208
    :cond_0
    return-void

    .line 205
    :cond_1
    const v1, 0x7f0a0ef2

    goto :goto_0
.end method

.method private fm()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qT:Lcom/android/settings/ai;

    invoke-virtual {v0}, Lcom/android/settings/ai;->as()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qV:Lcom/android/settings/ai;

    invoke-virtual {v0}, Lcom/android/settings/ai;->as()V

    .line 213
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/DisplaySettings;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "screen_effect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 61
    const-string v1, "support_screen_effect"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 62
    const v1, 0x7f0a0ee7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 63
    const-string v1, "support_screen_optimize"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const v1, 0x7f0a0eea

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 70
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qO:Lcom/android/settings/fE;

    .line 71
    const-string v0, "touch_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 73
    const-string v1, "touch_sensitive"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qN:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v1, "support_touch_sensitive"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 75
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    iput-object v5, p0, Lcom/android/settings/MiuiDisplaySettings;->qN:Landroid/preference/CheckBoxPreference;

    .line 81
    :goto_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_1
    const-string v0, "line_breaking"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qP:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v0, "gesture_wakeup"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qQ:Landroid/preference/CheckBoxPreference;

    .line 90
    const-string v0, "support_gesture_wakeup"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :goto_2
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_2
    const-string v0, "screen_resolution"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/ResolutionListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qR:Lcom/android/settings/display/ResolutionListPreference;

    .line 106
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qR:Lcom/android/settings/display/ResolutionListPreference;

    if-eqz v0, :cond_3

    const-string v0, "support_resolution_switch"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qR:Lcom/android/settings/display/ResolutionListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    iput-object v5, p0, Lcom/android/settings/MiuiDisplaySettings;->qR:Lcom/android/settings/display/ResolutionListPreference;

    .line 111
    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_4

    .line 112
    const-string v0, "font_settings_cat"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 113
    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_4
    const-string v0, "support_screen_effect"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 119
    const-string v0, "screen_effect"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_5
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isScreenPaperModeSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 126
    const-string v0, "screen_paper_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_6
    :goto_3
    new-instance v0, Lcom/android/settings/display/k;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/display/k;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qT:Lcom/android/settings/ai;

    .line 144
    const-string v0, "font_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qU:Lmiui/preference/ValuePreference;

    .line 145
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qU:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_7

    .line 146
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qU:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qT:Lcom/android/settings/ai;

    new-instance v1, Lcom/android/settings/es;

    invoke-direct {v1, p0}, Lcom/android/settings/es;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/ai;->a(Lcom/android/settings/aj;)V

    .line 155
    :cond_7
    new-instance v0, Lcom/android/settings/display/x;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/display/x;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qV:Lcom/android/settings/ai;

    .line 156
    const-string v0, "page_layout_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qW:Lmiui/preference/ValuePreference;

    .line 157
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qW:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_8

    .line 158
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qW:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qV:Lcom/android/settings/ai;

    new-instance v1, Lcom/android/settings/et;

    invoke-direct {v1, p0}, Lcom/android/settings/et;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/ai;->a(Lcom/android/settings/aj;)V

    .line 166
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    const-string v0, "font_settings_cat"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 168
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qW:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    iput-object v5, p0, Lcom/android/settings/MiuiDisplaySettings;->qW:Lmiui/preference/ValuePreference;

    .line 170
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qV:Lcom/android/settings/ai;

    invoke-virtual {v0, v5}, Lcom/android/settings/ai;->a(Lcom/android/settings/aj;)V

    .line 174
    :cond_9
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_a

    .line 175
    const-string v0, "font_settings_cat"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 176
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qU:Lmiui/preference/ValuePreference;

    if-eqz v1, :cond_a

    .line 177
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qU:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    iput-object v5, p0, Lcom/android/settings/MiuiDisplaySettings;->qU:Lmiui/preference/ValuePreference;

    .line 179
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qT:Lcom/android/settings/ai;

    invoke-virtual {v0, v5}, Lcom/android/settings/ai;->a(Lcom/android/settings/aj;)V

    .line 182
    :cond_a
    return-void

    .line 67
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 78
    :cond_c
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qN:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->qO:Lcom/android/settings/fE;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fE;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 93
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_wakeup"

    invoke-static {v0, v1, v4, v4}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 94
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 96
    :cond_e
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 131
    :cond_f
    new-instance v0, Lcom/android/settings/er;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/er;-><init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qS:Landroid/database/ContentObserver;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->qS:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 253
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0d63

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0d64

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0d65

    new-instance v2, Lcom/android/settings/eu;

    invoke-direct {v2, p0}, Lcom/android/settings/eu;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0d66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qS:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qS:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qS:Landroid/database/ContentObserver;

    .line 197
    :cond_0
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onDestroy()V

    .line 198
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qN:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qO:Lcom/android/settings/fE;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiDisplaySettings;->qN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fE;->e(Landroid/content/Context;Z)V

    .line 220
    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->F(Z)V

    .line 242
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 224
    const-string v1, "persist.sys.line_breaking"

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "false"

    goto :goto_1

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qQ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 227
    const-string v1, "gesture_wakeup"

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "on"

    :goto_2
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dp;->B(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_wakeup"

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 227
    :cond_4
    const-string v0, "off"

    goto :goto_2

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qU:Lmiui/preference/ValuePreference;

    if-ne p2, v0, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme://zhuti.xiaomi.com/list?S.REQUEST_RESOURCE_CODE=fonts&miback=true&miref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->fl()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->fm()V

    .line 189
    return-void
.end method
