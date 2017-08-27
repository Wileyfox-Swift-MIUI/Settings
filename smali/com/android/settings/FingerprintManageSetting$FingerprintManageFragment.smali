.class public Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "FingerprintManageSetting.java"


# instance fields
.field private nh:Landroid/preference/PreferenceCategory;

.field private ni:Landroid/preference/PreferenceCategory;

.field private nj:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    return-void
.end method

.method private A(Z)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->ni:Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_1

    .line 266
    :cond_0
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->ni:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->ni:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 262
    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 260
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private G(I)V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->J(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private J(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 209
    return-void
.end method

.method private a(Landroid/preference/CheckBoxPreference;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 271
    if-eqz v0, :cond_2

    .line 272
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 274
    :goto_0
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 275
    :goto_1
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 277
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    const v0, 0x7f0a11a4

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 280
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 274
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->en()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v4, p1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v4, p2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    new-instance v0, Lcom/android/settings/dj;

    invoke-direct {v0, p0}, Lcom/android/settings/dj;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->ni:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v0, "miui_keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v5, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 243
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 244
    if-ne v0, v1, :cond_3

    move v0, v3

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 246
    if-nez p3, :cond_0

    .line 247
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 248
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    :cond_0
    const-string v0, "miui_keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-direct {p0, v4}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->a(Landroid/preference/CheckBoxPreference;)V

    .line 254
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 241
    goto :goto_0

    :cond_3
    move v0, v2

    .line 244
    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 179
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 180
    const-string v0, "extra_fingerprint_key"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "extra_fingerprint_title"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-class v0, Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x449

    const v5, 0x7f0a110f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 186
    return-void
.end method

.method private el()V
    .locals 6

    .prologue
    .line 114
    new-instance v0, Lcom/android/settings/dc;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dc;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->em()V

    .line 117
    new-instance v3, Lcom/android/settings/dh;

    invoke-direct {v3, p0}, Lcom/android/settings/dh;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nh:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 134
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/dl;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    invoke-static {v2, v5}, Lcom/android/settings/dl;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lcom/android/settings/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v2

    .line 145
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nh:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 152
    const-string v1, "add_fingerprint"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 153
    const v1, 0x7f0a1110

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 154
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nh:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 156
    return-void
.end method

.method private em()V
    .locals 6

    .prologue
    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/dl;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 163
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    new-instance v2, Lcom/android/settings/di;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/di;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Ljava/util/Map;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    return-void
.end method

.method private en()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 190
    const v0, 0x7f0a1123

    invoke-direct {p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->G(I)V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    const/16 v1, 0x6b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->finish()V

    goto :goto_0
.end method

.method private eo()V
    .locals 7

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e00d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 216
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 217
    const-string v4, "miui_keyguard"

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fingerprint_apply_to_privacy_password"

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com_miui_applicatinlock_use_fingerprint_state"

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    :cond_0
    aget-object v4, v1, v0

    aget-object v5, v2, v0

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    packed-switch p1, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->finish()V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x449
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 67
    :cond_0
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->addPreferencesFromResource(I)V

    .line 68
    const-string v0, "fingerprint_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nh:Landroid/preference/PreferenceCategory;

    .line 69
    const-string v0, "apply_fingerprint_to"

    invoke-virtual {p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->ni:Landroid/preference/PreferenceCategory;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->eo()V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->el()V

    .line 100
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dH;->b(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    .line 103
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->A(Z)V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->nj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->A(Z)V

    goto :goto_0
.end method
