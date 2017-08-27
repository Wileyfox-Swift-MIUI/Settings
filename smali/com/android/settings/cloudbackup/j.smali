.class Lcom/android/settings/cloudbackup/j;
.super Ljava/lang/Object;
.source "SoundAndVibrateCloudBackupHelper.java"


# static fields
.field private static final Vn:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "volume_ring"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "volume_alarm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "volume_music"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/cloudbackup/j;->Vn:[Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;ILorg/json/JSONArray;)V
    .locals 6

    .prologue
    .line 88
    if-nez p2, :cond_0

    .line 111
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 90
    const v1, 0xffffff

    .line 92
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 93
    sget-object v0, Lcom/android/settings/cloudbackup/j;->Vn:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 94
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    .line 95
    and-int v5, v4, v1

    if-nez v5, :cond_1

    move v0, v1

    .line 92
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 98
    :cond_1
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v1, v5

    .line 101
    invoke-static {v4}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_2
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    .line 106
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 107
    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    move v0, v1

    goto :goto_2

    .line 110
    :cond_4
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->reloadAudioSettings()V

    goto :goto_0
.end method

.method static final aS(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 115
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 117
    :try_start_0
    const-string v2, "ring_volume"

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/settings/cloudbackup/j;->l(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v2, "alarm_volume"

    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/android/settings/cloudbackup/j;->l(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v2, "music_volume"

    const/4 v5, 0x2

    invoke-static {p0, v5}, Lcom/android/settings/cloudbackup/j;->l(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v2, "vibrate_in_silent"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 121
    const-string v5, "vibrate_in_silent"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 122
    const-string v2, "vibrate_in_normal"

    sget-boolean v5, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    invoke-static {v3, v2, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 124
    const-string v5, "vibrate_when_ringing"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 125
    const-string v2, "dtmf_tone"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 126
    :goto_0
    const-string v5, "dtmf_tone"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 127
    const-string v2, "sound_effects_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 128
    :goto_1
    const-string v5, "sound_effects_enabled"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 129
    const-string v2, "lockscreen_sounds_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 130
    :goto_2
    const-string v5, "lockscreen_sounds_enabled"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 131
    const-string v2, "haptic_feedback_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    :goto_3
    const-string v1, "haptic_feedback_enabled"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 133
    const-string v0, "haptic_feedback_level"

    sget v1, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 135
    const-string v1, "haptic_feedback_level"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v0, "support_media_feedback"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettings;->H(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 140
    const-string v2, "media_feedback_enabled"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    const-string v1, "strength"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 143
    const-string v1, "media_feedback_strength"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_4
    return-object v4

    :cond_1
    move v2, v1

    .line 125
    goto :goto_0

    :cond_2
    move v2, v1

    .line 127
    goto :goto_1

    :cond_3
    move v2, v1

    .line 129
    goto :goto_2

    :cond_4
    move v0, v1

    .line 131
    goto :goto_3

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "SettingsBackup"

    const-string v2, "build json error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 154
    const-string v0, "ring_volume"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/android/settings/cloudbackup/j;->a(Landroid/content/Context;ILorg/json/JSONArray;)V

    .line 155
    const-string v0, "alarm_volume"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/settings/cloudbackup/j;->a(Landroid/content/Context;ILorg/json/JSONArray;)V

    .line 156
    const/4 v0, 0x2

    const-string v4, "music_volume"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/android/settings/cloudbackup/j;->a(Landroid/content/Context;ILorg/json/JSONArray;)V

    .line 157
    const-string v0, "vibrate_in_silent"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    invoke-static {p0, v0, v1}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    .line 159
    const-string v0, "vibrate_when_ringing"

    sget-boolean v4, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 160
    invoke-static {p0, v0, v2}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    .line 161
    const-string v0, "dtmf_tone"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    const-string v4, "dtmf_tone"

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    const-string v0, "sound_effects_enabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 164
    const-string v4, "sound_effects_enabled"

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    const-string v0, "lockscreen_sounds_enabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 166
    const-string v4, "lockscreen_sounds_enabled"

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    const-string v0, "haptic_feedback_enabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    const-string v4, "haptic_feedback_enabled"

    if-eqz v0, :cond_4

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    const-string v0, "haptic_feedback_level"

    sget v1, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 170
    const-string v1, "haptic_feedback_level"

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    const-string v0, "support_media_feedback"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettings;->H(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    const-string v1, "media_feedback_enabled"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 174
    const-string v2, "media_feedback_strength"

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    const-string v3, "enable"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    const-string v1, "strength"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 162
    goto :goto_0

    :cond_2
    move v0, v2

    .line 164
    goto :goto_1

    :cond_3
    move v0, v2

    .line 166
    goto :goto_2

    :cond_4
    move v1, v2

    .line 168
    goto :goto_3
.end method

.method private static l(Landroid/content/Context;I)Lorg/json/JSONArray;
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 65
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 66
    const v1, 0xffffff

    .line 68
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 69
    sget-object v0, Lcom/android/settings/cloudbackup/j;->Vn:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 70
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    .line 71
    and-int v6, v5, v1

    if-nez v6, :cond_0

    .line 72
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move v0, v1

    .line 68
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_0
    xor-int/lit8 v6, v5, -0x1

    and-int/2addr v1, v6

    .line 78
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_1
    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move v0, v1

    goto :goto_1

    .line 84
    :cond_2
    return-object v4
.end method
