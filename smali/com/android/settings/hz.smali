.class public Lcom/android/settings/hz;
.super Lmiui/external/b;
.source "SettingsApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final Aq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/settings/hz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/hz;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lmiui/external/b;-><init>()V

    .line 46
    const-string v0, "SECURITY_TOPIC"

    iput-object v0, p0, Lcom/android/settings/hz;->Aq:Ljava/lang/String;

    return-void
.end method

.method private T(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 100
    const-string v0, "key_delete_v5_shortcuts"

    .line 101
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    const-string v1, "key_delete_v5_shortcuts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ShortcutHelper;->V(Landroid/content/Context;)Lcom/android/settings/ShortcutHelper;

    move-result-object v1

    .line 105
    sget-object v2, Lcom/android/settings/ShortcutHelper$Shortcut;->AZ:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings/ShortcutHelper;->a(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 106
    sget-object v2, Lcom/android/settings/ShortcutHelper$Shortcut;->Ba:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings/ShortcutHelper;->a(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 107
    sget-object v2, Lcom/android/settings/ShortcutHelper$Shortcut;->Bb:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings/ShortcutHelper;->a(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 108
    sget-object v2, Lcom/android/settings/ShortcutHelper$Shortcut;->Bc:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings/ShortcutHelper;->a(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 109
    sget-object v2, Lcom/android/settings/ShortcutHelper$Shortcut;->Bd:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings/ShortcutHelper;->a(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 110
    sget-object v2, Lcom/android/settings/ShortcutHelper$Shortcut;->Be:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings/ShortcutHelper;->a(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_delete_v5_shortcuts"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 201
    const-string v0, "support_gesture_wakeup"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const-string v0, "gesture_wakeup"

    invoke-static {p0, v0, v1, v1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    .line 204
    const-string v1, "DOUBLE_TAP_TO_WAKE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DOUBLE_TAP_TO_WAKE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v0, "on"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    return-void

    .line 204
    :cond_1
    const-string v0, "off"

    goto :goto_0
.end method


# virtual methods
.method public U(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 116
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 117
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    move-object v0, v1

    .line 127
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 123
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_1

    .line 124
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 127
    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 53
    invoke-super {p0}, Lmiui/external/b;->onCreate()V

    .line 55
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 56
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0, p0}, Lcom/android/settings/hz;->T(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/android/settings/cloud/h;->ox()V

    .line 64
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/hz;->NJ()Lmiui/external/a;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/external/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2882303761517161661"

    const-string v2, "5881716163661"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    .line 75
    const-wide/16 v0, 0x0

    invoke-static {v4, v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 76
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableLog()V

    .line 77
    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    .line 80
    const-string v0, "com.android.settings:remote"

    invoke-virtual {p0, p0}, Lcom/android/settings/hz;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {p0}, Lcom/android/settings/cloud/CloudJobService2;->aK(Landroid/content/Context;)V

    .line 82
    invoke-static {p0}, Lcom/android/settings/cloud/ConnectivityChangeJobService2;->aK(Landroid/content/Context;)V

    .line 85
    :cond_2
    invoke-static {p0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->be(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-static {p0}, Lcom/android/settings/device/UpdateInfoService;->aK(Landroid/content/Context;)V

    .line 88
    :cond_3
    invoke-static {p0}, Lcom/android/settings/display/d;->bq(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/hz;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hz;->a(Landroid/content/ContentResolver;)V

    .line 90
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->pp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    invoke-static {p0}, Lcom/android/settings/credentials/CredentialsUpdateService;->aK(Landroid/content/Context;)V

    .line 94
    :cond_4
    invoke-static {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->aK(Landroid/content/Context;)V

    goto :goto_0
.end method
