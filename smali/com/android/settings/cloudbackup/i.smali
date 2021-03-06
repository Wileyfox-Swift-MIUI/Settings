.class public Lcom/android/settings/cloudbackup/i;
.super Ljava/lang/Object;
.source "SettingsCloudBackupImpl.java"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aX(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 130
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 131
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 132
    const-string v4, "com.sina.weibo.account"

    iget-object v5, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 136
    :goto_1
    return-object v0

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private static e(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 120
    if-nez p0, :cond_1

    .line 121
    const/4 p0, 0x0

    .line 126
    :cond_0
    :goto_0
    return-object p0

    .line 123
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_OFFICIAL_VERSION:Z

    if-nez v0, :cond_0

    .line 124
    const-string v0, "SettingsSettingsCloudBackup"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 2

    .prologue
    .line 36
    const-string v0, "SettingsSettingsCloudBackup"

    const-string v1, "start settings backup. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "Connection"

    invoke-static {p1}, Lcom/android/settings/cloudbackup/c;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 41
    const-string v0, "weiboAccount"

    invoke-direct {p0, p1}, Lcom/android/settings/cloudbackup/i;->aX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "NotificationFilter"

    invoke-static {p1}, Lcom/android/settings/cloudbackup/f;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    const-string v0, "StatusBar"

    invoke-static {p1}, Lcom/android/settings/cloudbackup/k;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 46
    const-string v0, "DoNotDisturb"

    invoke-static {p1}, Lcom/android/settings/cloudbackup/e;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 48
    const-string v0, "AdvanceSettings"

    invoke-static {p1}, Lcom/android/settings/cloudbackup/b;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 50
    const-string v0, "ScreenKeySettings"

    invoke-static {p1}, Lcom/android/settings/cloudbackup/h;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 52
    const-string v0, "SoundAndVibrateSettings"

    invoke-static {p1}, Lcom/android/settings/cloudbackup/j;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 54
    const-string v0, "DisplaySettings"

    invoke-static {p1}, Lcom/android/settings/cloudbackup/d;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 56
    const-string v0, "Accessibility"

    invoke-static {p1}, Lcom/android/settings/cloudbackup/a;->aS(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 59
    invoke-static {p1, p2}, Lcom/android/settings/cloudbackup/g;->a(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 61
    const-string v0, "SettingsSettingsCloudBackup"

    const-string v1, "end settings backup. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 2

    .prologue
    .line 69
    const-string v0, "SettingsSettingsCloudBackup"

    const-string v1, "start settings restore. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "Connection"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "Connection"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/cloudbackup/c;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 76
    :cond_0
    const-string v0, "NotificationFilter"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "NotificationFilter"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/cloudbackup/f;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 80
    :cond_1
    const-string v0, "StatusBar"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "StatusBar"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/cloudbackup/k;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 84
    :cond_2
    const-string v0, "DoNotDisturb"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 85
    const-string v0, "DoNotDisturb"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/cloudbackup/e;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 88
    :cond_3
    const-string v0, "AdvanceSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 89
    const-string v0, "AdvanceSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/cloudbackup/b;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 92
    :cond_4
    const-string v0, "ScreenKeySettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 93
    const-string v0, "ScreenKeySettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/cloudbackup/h;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 96
    :cond_5
    const-string v0, "SoundAndVibrateSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 97
    const-string v0, "SoundAndVibrateSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/cloudbackup/j;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 100
    :cond_6
    const-string v0, "DisplaySettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 101
    const-string v0, "DisplaySettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/cloudbackup/d;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 104
    :cond_7
    const-string v0, "Accessibility"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 105
    const-string v0, "Accessibility"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/i;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/cloudbackup/a;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 108
    :cond_8
    invoke-static {p1, p2}, Lcom/android/settings/cloudbackup/g;->b(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 110
    invoke-static {p2}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreFiles(Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 111
    const-string v0, "SettingsSettingsCloudBackup"

    const-string v1, "end settings restore. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
