.class public Lcom/android/settings/MiuiSoundSettings;
.super Lcom/android/settings/SoundSettings;
.source "MiuiSoundSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final uA:Landroid/database/ContentObserver;

.field private uo:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private up:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private us:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private ut:Landroid/preference/CheckBoxPreference;

.field private uu:Landroid/preference/CheckBoxPreference;

.field private uv:Landroid/preference/CheckBoxPreference;

.field private uw:Ljava/util/ArrayList;

.field private ux:Z

.field private final uy:Landroid/content/BroadcastReceiver;

.field private final uz:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uw:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSoundSettings;->ux:Z

    .line 353
    new-instance v0, Lcom/android/settings/fy;

    invoke-direct {v0, p0}, Lcom/android/settings/fy;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uy:Landroid/content/BroadcastReceiver;

    .line 361
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uz:Landroid/os/Handler;

    .line 362
    new-instance v0, Lcom/android/settings/fz;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uz:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fz;-><init>(Lcom/android/settings/MiuiSoundSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uA:Landroid/database/ContentObserver;

    return-void
.end method

.method public static G(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, -0x1

    .line 318
    :goto_0
    return v0

    .line 314
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    sget v2, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 318
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static H(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 387
    const-string v0, "com.android.settings_reverb"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 389
    const-string v1, "enable"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "strength"

    const/4 v3, 0x7

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "density"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sharpness"

    const/16 v3, 0xf

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mediaplayer"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/VolumeSeekBarPreference;

    .line 211
    invoke-virtual {v0, p2}, Lcom/android/settings/sound/VolumeSeekBarPreference;->cF(I)V

    .line 212
    invoke-virtual {v0, p3}, Lcom/android/settings/sound/VolumeSeekBarPreference;->setIcon(I)V

    .line 213
    new-instance v1, Lcom/android/settings/sound/H;

    invoke-direct {v1, v0}, Lcom/android/settings/sound/H;-><init>(Lcom/android/settings/sound/VolumeSeekBarPreference;)V

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/settings/sound/VolumeSeekBarPreference;->f(Lcom/android/settings/sound/H;)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method private aa(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 296
    if-ltz p1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2, v3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private c(II)I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 447
    if-gez p2, :cond_1

    .line 448
    const/4 p2, 0x0

    .line 452
    :cond_0
    :goto_0
    return p2

    .line 449
    :cond_1
    if-le p2, v0, :cond_0

    move p2, v0

    .line 450
    goto :goto_0
.end method

.method private go()Z
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 441
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 456
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_0

    .line 457
    iget-boolean v0, p0, Lcom/android/settings/MiuiSoundSettings;->ux:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 466
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uo:Lcom/android/settings/MiuiDefaultRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->up:Lcom/android/settings/MiuiDefaultRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected gm()V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uo:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uo:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->up:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->up:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method gn()V
    .locals 3

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->ut:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->ut:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uu:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uu:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 384
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const-string v0, "ring_volume"

    const/4 v1, 0x2

    const v2, 0x7f0202b2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MiuiSoundSettings;->a(Ljava/lang/String;II)V

    .line 138
    const-string v0, "alarm_volume"

    const/4 v1, 0x4

    const v2, 0x7f02002d

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MiuiSoundSettings;->a(Ljava/lang/String;II)V

    .line 139
    const-string v0, "media_volume"

    const/4 v1, 0x3

    const v2, 0x7f020209

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MiuiSoundSettings;->a(Ljava/lang/String;II)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/MiuiSoundSettings;->G(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    const-string v0, "sms_received_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 148
    const-string v0, "sms_delivered_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 149
    const-string v0, "alarm_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uo:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 150
    const-string v0, "calendar_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->up:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/iH;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bn:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->Bn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->Bn:Landroid/preference/CheckBoxPreference;

    .line 167
    :cond_3
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 168
    const-string v0, "silent_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->ut:Landroid/preference/CheckBoxPreference;

    .line 169
    const-string v0, "miui_vibrate_in_silent_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uu:Landroid/preference/CheckBoxPreference;

    .line 170
    const-string v0, "miui_vibrate_in_normal_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    .line 171
    const-string v0, "support_dolby"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 172
    const-string v0, "dolby_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    :cond_4
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 179
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_8

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uu:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 182
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 185
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_6
    const-string v1, "miui_vibrate_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_7

    .line 189
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_7
    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    .line 192
    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->uu:Landroid/preference/CheckBoxPreference;

    .line 195
    :cond_8
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    .line 201
    :cond_9
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->us:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/iH;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->us:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_b

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->us:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->us:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 207
    :cond_b
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/settings/SoundSettings;->onDestroy()V

    .line 270
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/VolumeSeekBarPreference;

    .line 271
    invoke-virtual {v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->vu()Lcom/android/settings/sound/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/sound/H;->stop()V

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/16 v6, 0x19

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 407
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->go()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    .line 435
    :goto_0
    return v1

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v4

    .line 412
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 420
    :goto_1
    if-eq p2, v6, :cond_1

    const/16 v3, 0x18

    if-ne p2, v3, :cond_4

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 422
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    .line 424
    if-ne p2, v6, :cond_6

    .line 425
    iput-boolean v1, p0, Lcom/android/settings/MiuiSoundSettings;->ux:Z

    .line 426
    const/4 v0, -0x1

    .line 428
    :goto_2
    iget-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    add-int/2addr v0, v3

    invoke-direct {p0, v2, v0}, Lcom/android/settings/MiuiSoundSettings;->c(II)I

    move-result v0

    const v3, 0x100400

    invoke-virtual {v4, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 414
    :cond_2
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 415
    goto :goto_1

    .line 416
    :cond_3
    const/4 v2, 0x4

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 417
    const/4 v2, 0x4

    goto :goto_1

    .line 431
    :cond_4
    if-ne p2, v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 433
    iput-boolean v0, p0, Lcom/android/settings/MiuiSoundSettings;->ux:Z

    :cond_5
    move v1, v0

    .line 435
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uA:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    invoke-super {p0}, Lcom/android/settings/SoundSettings;->onPause()V

    .line 262
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/VolumeSeekBarPreference;

    .line 263
    invoke-virtual {v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->vu()Lcom/android/settings/sound/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/sound/H;->pause()V

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 326
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->aa(I)V

    .line 328
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 333
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->ut:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 335
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->gp()V

    .line 342
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 345
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    if-ne p2, v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->Bt:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 349
    :cond_1
    return v1

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1, v3}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uu:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uu:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->uu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->us:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->us:Lcom/android/settings/MiuiDefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uq:Lcom/android/settings/MiuiDefaultRingtonePreference;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->ur:Lcom/android/settings/MiuiDefaultRingtonePreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->up:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->up:Lcom/android/settings/MiuiDefaultRingtonePreference;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 241
    :cond_3
    invoke-super {p0}, Lcom/android/settings/SoundSettings;->onResume()V

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    const-string v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->uA:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    const-string v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->uA:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->uw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/VolumeSeekBarPreference;

    .line 252
    invoke-virtual {v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->vu()Lcom/android/settings/sound/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/sound/H;->resume()V

    goto :goto_0

    .line 254
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->gn()V

    .line 255
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 224
    return-void
.end method
