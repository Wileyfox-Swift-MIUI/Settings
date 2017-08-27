.class final Lcom/android/settings/MiuiSettings$1;
.super Ljava/util/HashMap;
.source "MiuiSettings.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 96
    const v0, 0x7f1303eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mobile_network_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const v0, 0x7f1303f1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "msim_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const v0, 0x7f1303ca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "wifi_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const v0, 0x7f1303c6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bluetooth_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const v0, 0x7f1303d8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "nfc_payment_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const v0, 0x7f1303ce

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "wireless_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const v0, 0x7f1303fa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status_bar_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const v0, 0x7f1303f5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "wallpaper_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const v0, 0x7f1303f6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "theme_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const v0, 0x7f1303e5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "font_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const v0, 0x7f1303f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page_layout_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const v0, 0x7f1303d1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "display_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const v0, 0x7f1303f8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sound_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const v0, 0x7f1303f9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lock_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const v0, 0x7f1303fd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "do_not_disturb_mode"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const v0, 0x7f1303fe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "oldman_mode_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const v0, 0x7f1303ff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "children_mode_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const v0, 0x7f130400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "edge_mode_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const v0, 0x7f130401

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "other_advanced_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const v0, 0x7f1303e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "micloud_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const v0, 0x7f130402

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "account_list"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const v0, 0x7f130403

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sync_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const v0, 0x7f1303df

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "system_section"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const v0, 0x7f1303d3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "application_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const v0, 0x7f130409

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "account_autostar"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const v0, 0x7f1303be

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "about_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method
