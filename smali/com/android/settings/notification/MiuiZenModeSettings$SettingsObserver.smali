.class final Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiZenModeSettings.java"


# instance fields
.field private final acp:Landroid/net/Uri;

.field final synthetic ale:Lcom/android/settings/notification/MiuiZenModeSettings;

.field private final alf:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->ale:Lcom/android/settings/notification/MiuiZenModeSettings;

    .line 280
    invoke-static {p1}, Lcom/android/settings/notification/MiuiZenModeSettings;->e(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 276
    const-string v0, "quiet_mode_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->alf:Landroid/net/Uri;

    .line 277
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->acp:Landroid/net/Uri;

    .line 281
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->ale:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->i(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    .line 298
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 284
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->ale:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->f(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->alf:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->ale:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->g(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->acp:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 288
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->ale:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->h(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 292
    return-void
.end method
