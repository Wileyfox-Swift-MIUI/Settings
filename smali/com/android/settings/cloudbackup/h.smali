.class public Lcom/android/settings/cloudbackup/h;
.super Ljava/lang/Object;
.source "ScreenKeySettingsCloudBackupHelper.java"


# direct methods
.method private static a(Lorg/json/JSONObject;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    invoke-static {p1, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "ScreenKeySettingsCloudBackupHelper"

    const-string v2, "SettingNotFoundException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static aS(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 52
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 55
    const-string v2, "support_screen_key_swap"

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "screen_key_handswap"

    const-string v5, "persist.sys.handswap"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_0
    const-string v2, "screen_key_press_app_switch"

    const-string v5, "screen_key_press_app_switch"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 61
    const-string v2, "screen_key_long_press_app_switch"

    const-string v5, "screen_key_long_press_app_switch"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v2, "screen_key_long_press_home"

    const-string v5, "screen_key_long_press_home"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v2, "screen_key_long_press_back"

    const-string v5, "screen_key_long_press_back"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "screen_key_long_press_timeout"

    const-string v5, "screen_key_long_press_timeout"

    invoke-static {v3, v4, v2, v5}, Lcom/android/settings/cloudbackup/h;->a(Lorg/json/JSONObject;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "screen_buttons_light_timeout"

    const-string v5, "screen_buttons_timeout"

    invoke-static {v3, v4, v2, v5}, Lcom/android/settings/cloudbackup/h;->a(Lorg/json/JSONObject;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "long_press_volume_down"

    const-string v5, "key_long_press_volume_down"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v2, "pref_fingerprint_nav_center_to_home"

    const-string v5, "fingerprint_nav_center_action"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v2, "pref_single_key_use"

    const-string v5, "single_key_use_enable"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string v2, "screen_buttons_turn_on"

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    .line 80
    :goto_0
    const-string v5, "screen_buttons_light_on"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 82
    const-string v2, "screen_buttons_auto_disable"

    const-string v5, "auto_disable_screen_button"

    invoke-static {v4, v5}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v2, "keyguard_disable_power_key_long_press"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    move v2, v0

    .line 87
    :goto_1
    const-string v5, "keyguard_power_long_press"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 89
    const-string v2, "volumekey_wake_screen"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    .line 90
    :goto_2
    const-string v5, "keyguard_volume_wake"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 92
    const-string v2, "volumekey_launch_camera"

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 93
    :goto_3
    const-string v1, "keyguard_volume_launch_camera"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_4
    return-object v3

    :cond_1
    move v2, v1

    .line 79
    goto :goto_0

    :cond_2
    move v2, v1

    .line 84
    goto :goto_1

    :cond_3
    move v2, v1

    .line 89
    goto :goto_2

    :cond_4
    move v0, v1

    .line 92
    goto :goto_3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "ScreenKeySettingsCloudBackupHelper"

    const-string v2, "build json error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 111
    const-string v0, "support_screen_key_swap"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "screen_key_handswap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "persist.sys.handswap"

    const-string v4, "screen_key_handswap"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string v0, "screen_key_press_app_switch"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    const-string v4, "screen_key_press_app_switch"

    invoke-static {v3, v4, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 117
    const-string v0, "screen_key_long_press_app_switch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v4, "screen_key_long_press_app_switch"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    const-string v0, "screen_key_long_press_home"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v4, "screen_key_long_press_home"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    const-string v0, "screen_key_long_press_back"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v4, "screen_key_long_press_back"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    const-string v0, "screen_key_long_press_timeout"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 124
    if-eq v0, v5, :cond_1

    .line 125
    const-string v4, "screen_key_long_press_timeout"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    :cond_1
    const-string v0, "long_press_volume_down"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v4, "key_long_press_volume_down"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    const-string v0, "pref_fingerprint_nav_center_to_home"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 130
    const-string v4, "fingerprint_nav_center_action"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    const-string v0, "pref_single_key_use"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    const-string v4, "single_key_use_enable"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    const-string v0, "screen_buttons_light_timeout"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 134
    if-eq v0, v5, :cond_2

    .line 135
    const-string v4, "screen_buttons_timeout"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :cond_2
    const-string v0, "screen_buttons_light_on"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 138
    const-string v4, "screen_buttons_turn_on"

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    const-string v0, "screen_buttons_auto_disable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string v0, "auto_disable_screen_button"

    const-string v4, "screen_buttons_auto_disable"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    :cond_3
    const-string v0, "keyguard_power_long_press"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 145
    const-string v4, "keyguard_disable_power_key_long_press"

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    const-string v0, "keyguard_volume_wake"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 147
    const-string v5, "volumekey_wake_screen"

    if-eqz v4, :cond_6

    move v0, v1

    :goto_2
    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    invoke-static {v4}, Lcom/android/settings/fE;->P(Z)V

    .line 150
    const-string v0, "keyguard_volume_launch_camera"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 151
    const-string v4, "volumekey_launch_camera"

    if-eqz v0, :cond_7

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    return-void

    :cond_4
    move v0, v2

    .line 138
    goto :goto_0

    :cond_5
    move v0, v2

    .line 145
    goto :goto_1

    :cond_6
    move v0, v2

    .line 147
    goto :goto_2

    :cond_7
    move v1, v2

    .line 151
    goto :goto_3
.end method
