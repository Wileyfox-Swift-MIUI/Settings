.class public Lcom/android/settings/HeadsetSettings;
.super Lcom/android/settings/SettingsBasePreferenceFragment;
.source "HeadsetSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/view/c;


# instance fields
.field private nO:Landroid/preference/PreferenceCategory;

.field private nP:Landroid/preference/PreferenceCategory;

.field private nQ:Landroid/preference/CheckBoxPreference;

.field private nR:Landroid/preference/CheckBoxPreference;

.field private nS:Landroid/preference/Preference;

.field private nT:Lcom/android/settings/view/GridPreference;

.field private nU:Landroid/preference/Preference;

.field private nV:Lcom/miui/a/a/a/b;

.field private nW:Lcom/android/settings/cw;

.field private nX:Lcom/android/settings/fO;

.field private nY:Z

.field private final nZ:Landroid/content/BroadcastReceiver;

.field private final oa:Lcom/android/settings/fP;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsBasePreferenceFragment;-><init>()V

    .line 259
    new-instance v0, Lcom/android/settings/dr;

    invoke-direct {v0, p0}, Lcom/android/settings/dr;-><init>(Lcom/android/settings/HeadsetSettings;)V

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nZ:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance v0, Lcom/android/settings/ds;

    invoke-direct {v0, p0}, Lcom/android/settings/ds;-><init>(Lcom/android/settings/HeadsetSettings;)V

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->oa:Lcom/android/settings/fP;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/HeadsetSettings;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ey()V

    return-void
.end method

.method private eA()V
    .locals 3

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/settings/HeadsetSettings;->nY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    :try_start_0
    const-string v0, "dolby_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nX:Lcom/android/settings/fO;

    invoke-virtual {v1}, Lcom/android/settings/fO;->gC()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nX:Lcom/android/settings/fO;

    invoke-virtual {v1}, Lcom/android/settings/fO;->gD()I

    move-result v1

    .line 354
    iget-object v2, p0, Lcom/android/settings/HeadsetSettings;->nX:Lcom/android/settings/fO;

    invoke-virtual {v2}, Lcom/android/settings/fO;->gF()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 355
    const v1, 0x7f0a125a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/settings/HeadsetSettings;->nX:Lcom/android/settings/fO;

    invoke-virtual {v2}, Lcom/android/settings/fO;->gE()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 357
    const v1, 0x7f0a125b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 360
    :cond_2
    const v1, 0x7f0a1259

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 364
    :catch_1
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 366
    :catch_2
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 368
    :catch_3
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 370
    :catch_4
    move-exception v0

    .line 371
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 372
    :catch_5
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 374
    :catch_6
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private et()Z
    .locals 2

    .prologue
    .line 151
    const-string v0, "support_dolby"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private eu()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {}, Lcom/miui/a/a/a/b;->FT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return v1

    .line 158
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 159
    const-string v2, "hifi_mode"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    if-nez v0, :cond_1

    .line 161
    const-string v0, "default_hifi_mode=false"

    .line 163
    :cond_1
    const-string v2, "HeadsetSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIFI mode get: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private ev()V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->eu()Z

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    return-void
.end method

.method private ew()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/a/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ez()V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ex()V

    .line 196
    :cond_0
    return-void
.end method

.method private ex()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/a/a/a/b;->dm(Landroid/content/Context;)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nW:Lcom/android/settings/cw;

    invoke-virtual {v1, v0}, Lcom/android/settings/cw;->z(I)I

    move-result v0

    .line 201
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nT:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/view/GridPreference;->dk(I)V

    goto :goto_0
.end method

.method private ey()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->isWiredHeadsetOn()Z

    move-result v4

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/a/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->eu()Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v1

    .line 271
    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/a/a/a/b;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 273
    :goto_1
    iget-object v5, p0, Lcom/android/settings/HeadsetSettings;->nR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 274
    iget-object v5, p0, Lcom/android/settings/HeadsetSettings;->nS:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    :goto_2
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nT:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/view/GridPreference;->setEnabled(Z)V

    .line 280
    :cond_0
    invoke-static {}, Lcom/miui/a/a/a/b;->FT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 270
    goto :goto_0

    :cond_3
    move v0, v2

    .line 271
    goto :goto_1

    :cond_4
    move v1, v2

    .line 275
    goto :goto_2
.end method

.method private ez()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/a/a/a/b;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nT:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/view/GridPreference;->setEnabled(Z)V

    .line 290
    return-void
.end method

.method private isWiredHeadsetOn()Z
    .locals 1

    .prologue
    .line 309
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 310
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/android/settings/view/GridPreference;I)V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {v0}, Lcom/miui/a/a/a/b;->FS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nW:Lcom/android/settings/cw;

    invoke-virtual {v0, p2}, Lcom/android/settings/cw;->A(I)I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/a/a/a/b;->dm(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {p1}, Lcom/android/settings/view/GridPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/HeadsetSettings;->nW:Lcom/android/settings/cw;

    invoke-virtual {v2, p2}, Lcom/android/settings/cw;->A(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/a/a/a/b;->E(Landroid/content/Context;I)V

    .line 304
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ew()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/settings/HeadsetSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsBasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->addPreferencesFromResource(I)V

    .line 67
    const-string v0, "audio_effect_optimize"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nO:Landroid/preference/PreferenceCategory;

    .line 68
    const-string v0, "dirac_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nR:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v0, "hifi_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nQ:Landroid/preference/CheckBoxPreference;

    .line 70
    const-string v0, "headset_type_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nP:Landroid/preference/PreferenceCategory;

    .line 71
    const-string v0, "headsets_grid"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/view/GridPreference;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nT:Lcom/android/settings/view/GridPreference;

    .line 72
    const-string v0, "equalizer"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nS:Landroid/preference/Preference;

    .line 73
    const-string v0, "dolby_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nU:Landroid/preference/Preference;

    .line 75
    invoke-static {}, Lcom/miui/a/a/a/b;->FT()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "scorpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lithium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nQ:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a1240

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 84
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/a/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-static {}, Lcom/miui/a/a/a/b;->FR()Lcom/miui/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    .line 86
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {v0}, Lcom/miui/a/a/a/b;->initialize()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    new-instance v0, Lcom/android/settings/cw;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-direct {v0, v1}, Lcom/android/settings/cw;-><init>(Lcom/miui/a/a/a/b;)V

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nW:Lcom/android/settings/cw;

    .line 90
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nT:Lcom/android/settings/view/GridPreference;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nW:Lcom/android/settings/cw;

    invoke-virtual {v0, v1}, Lcom/android/settings/view/GridPreference;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nT:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/view/GridPreference;->a(Lcom/android/settings/view/c;)V

    .line 99
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->et()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    invoke-static {}, Lcom/android/settings/fO;->gB()Lcom/android/settings/fO;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nX:Lcom/android/settings/fO;

    .line 101
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nX:Lcom/android/settings/fO;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->oa:Lcom/android/settings/fP;

    invoke-virtual {v0, v1}, Lcom/android/settings/fO;->a(Lcom/android/settings/fP;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nX:Lcom/android/settings/fO;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fO;->P(Landroid/content/Context;)Z

    .line 107
    :goto_2
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nO:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nO:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    :cond_2
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nO:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nO:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nS:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nO:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nO:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nU:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->et()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nX:Lcom/android/settings/fO;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fO;->Q(Landroid/content/Context;)V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsBasePreferenceFragment;->onDestroy()V

    .line 148
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/a/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nZ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {v0}, Lcom/miui/a/a/a/b;->release()V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsBasePreferenceFragment;->onPause()V

    .line 140
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x3

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 211
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nR:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {v0}, Lcom/miui/a/a/a/b;->FS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/miui/a/a/a/b;->t(Landroid/content/Context;Z)V

    .line 218
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ew()V

    .line 219
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ey()V

    .line 256
    :cond_0
    :goto_0
    return v2

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nQ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hifi_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 224
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 225
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 231
    iget-object v7, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    if-eqz v5, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v7, v1}, Lcom/miui/a/a/a/b;->setHifiMode(I)V

    .line 233
    if-nez v5, :cond_2

    .line 234
    const-string v1, "hifi_volume"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float/2addr v1, v3

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 237
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 238
    const-string v5, "HeadsetSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get non-hifi volume: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", max:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-le v3, v1, :cond_2

    .line 240
    const/16 v3, 0x8

    invoke-virtual {v0, v10, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 241
    const-string v0, "HeadsetSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set non-hifi volume: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    const-string v1, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v1, "command"

    const-string v3, "toggleHiFi"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "hifi_state"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ew()V

    .line 251
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ey()V

    .line 252
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ev()V

    .line 253
    const-string v0, "HeadsetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HIFI mode change: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 231
    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 175
    const-string v0, "calibrate"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a123d

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    :goto_0
    const/4 v0, 0x1

    .line 188
    :goto_1
    return v0

    .line 179
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f0a1234

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/HeadsetSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 182
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/HeadsetCalibrateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsBasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsBasePreferenceFragment;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/a/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nV:Lcom/miui/a/a/a/b;

    invoke-virtual {v0}, Lcom/miui/a/a/a/b;->initialize()V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/HeadsetSettings;->nZ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ew()V

    .line 123
    :cond_0
    invoke-static {}, Lcom/miui/a/a/a/b;->FT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ev()V

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ey()V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->et()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->eA()V

    .line 131
    :cond_2
    return-void
.end method
