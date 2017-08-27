.class public Lcom/android/settings/MiuiHomeSettings;
.super Lcom/android/settings/HomeSettingsPreferenceFragment;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private rA:Landroid/preference/CheckBoxPreference;

.field private rB:Landroid/preference/ListPreference;

.field private rC:Landroid/content/Intent;

.field private rD:Landroid/content/Intent;

.field private rE:Z

.field private rF:I

.field private rx:Lmiui/preference/ValuePreference;

.field private ry:Landroid/preference/PreferenceCategory;

.field private rz:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/HomeSettingsPreferenceFragment;-><init>()V

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rD:Landroid/content/Intent;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiHomeSettings;->rE:Z

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiHomeSettings;->rF:I

    return-void
.end method

.method private O(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const v0, 0x7f0a0fd4

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_0
    :goto_0
    return-object p1

    .line 104
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private fr()V
    .locals 4

    .prologue
    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->rD:Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.applications.PreferredSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->rD:Landroid/content/Intent;

    const-string v2, "preferred_app_intent_filter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rD:Landroid/content/Intent;

    const-string v1, "preferred_app_intent"

    iget-object v2, p0, Lcom/android/settings/MiuiHomeSettings;->rC:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->rD:Landroid/content/Intent;

    const-string v2, "preferred_label"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rx:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rx:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->rD:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method private fs()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->rC:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-class v0, Lcom/android/settings/MiuiHomeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/HomeSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rC:Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rC:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiHomeSettings;->addPreferencesFromResource(I)V

    .line 61
    const-string v0, "defalut_launcher"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rx:Lmiui/preference/ValuePreference;

    .line 62
    const-string v0, "miui_screen_config_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->ry:Landroid/preference/PreferenceCategory;

    .line 63
    const-string v0, "auto_fill_empty_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rz:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "lock_screen_cells_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rA:Landroid/preference/CheckBoxPreference;

    .line 65
    new-instance v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    .line 66
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/MiuiHomeSettings;->fr()V

    .line 69
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rz:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 182
    check-cast p2, Ljava/lang/Boolean;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_enable_auto_fill_empty_cells"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 197
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rA:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 187
    check-cast p2, Ljava/lang/Boolean;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_lock_screen_cells"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 192
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "miui_home_screen_cells_size"

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-super {p0}, Lcom/android/settings/HomeSettingsPreferenceFragment;->onResume()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/android/settings/MiuiHomeSettings;->fs()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    .line 122
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 123
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 124
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rD:Landroid/content/Intent;

    const-string v1, "preferred_app_package_name"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rx:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v4}, Lcom/android/settings/MiuiHomeSettings;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 132
    const-string v0, "com.miui.home"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->ry:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 138
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_enable_auto_fill_empty_cells"

    invoke-static {v0, v1, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->rz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_lock_screen_cells"

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->rA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->ry:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.home.launcher.settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getScreenCellsOptionList"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    const-string v2, "result_charsequence_arraylist"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->ry:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 158
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    const v3, 0x7f0a0005

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "miui_home_screen_cells_size"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_3
    iget-object v2, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/android/settings/MiuiHomeSettings;->rB:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 175
    const-string v1, "Launcher.settings"

    const-string v2, "get screen cells options fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 122
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/android/settings/MiuiHomeSettings;->ry:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_2
.end method
