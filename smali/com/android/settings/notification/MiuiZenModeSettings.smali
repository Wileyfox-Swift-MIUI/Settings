.class public Lcom/android/settings/notification/MiuiZenModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# instance fields
.field private acC:Landroid/preference/CheckBoxPreference;

.field private acm:Landroid/service/notification/ZenModeConfig;

.field private acr:Landroid/preference/PreferenceScreen;

.field private final akW:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

.field private akX:Landroid/preference/CheckBoxPreference;

.field private akY:Landroid/preference/CheckBoxPreference;

.field private akZ:Lcom/android/settings/dndmode/LabelPreference;

.field private ala:Lcom/android/settings/dndmode/LabelPreference;

.field private alb:Lcom/android/settings/dndmode/LabelPreference;

.field private alc:Landroid/preference/PreferenceCategory;

.field private ald:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akW:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    .line 275
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public static bS(Landroid/content/Context;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 257
    .line 259
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "type=\'3\' and sync_dirty <> 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 262
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 268
    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    if-eqz v1, :cond_2

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v6

    .line 272
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 266
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    if-eqz v1, :cond_2

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_3

    .line 269
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 268
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 265
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->sL()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->sM()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->qz()V

    return-void
.end method

.method private qz()V
    .locals 5

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akX:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    .line 186
    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0b7b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/notification/MiuiZenModeSettings;->bS(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akZ:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->sK()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->sL()V

    .line 205
    :goto_1
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->sM()V

    goto :goto_1
.end method

.method private sK()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0b93

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0b94

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0b95

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0b96

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0b97

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0b98

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acm:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0b99

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_6
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0b9a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sL()V
    .locals 7

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dndmode/m;->q(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/dndmode/m;->q(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->alb:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0b6e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private sM()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->alb:Lcom/android/settings/dndmode/LabelPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 250
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acr:Landroid/preference/PreferenceScreen;

    .line 87
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akW:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->register()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acr:Landroid/preference/PreferenceScreen;

    const-string v1, "key_do_not_disturb_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akX:Landroid/preference/CheckBoxPreference;

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akX:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/notification/MiuiZenModeSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$1;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acr:Landroid/preference/PreferenceScreen;

    const-string v1, "key_auto_setting_group"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->alc:Landroid/preference/PreferenceCategory;

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->alc:Landroid/preference/PreferenceCategory;

    const-string v1, "key_auto_button"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acC:Landroid/preference/CheckBoxPreference;

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acC:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acC:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/notification/MiuiZenModeSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$2;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->alc:Landroid/preference/PreferenceCategory;

    const-string v1, "key_auto_time_setting"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->alb:Lcom/android/settings/dndmode/LabelPreference;

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->alb:Lcom/android/settings/dndmode/LabelPreference;

    new-instance v1, Lcom/android/settings/notification/MiuiZenModeSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$3;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->acr:Landroid/preference/PreferenceScreen;

    const-string v1, "alarm_use"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ald:Landroid/preference/PreferenceCategory;

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ald:Landroid/preference/PreferenceCategory;

    const-string v1, "vip"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akZ:Lcom/android/settings/dndmode/LabelPreference;

    .line 141
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akZ:Lcom/android/settings/dndmode/LabelPreference;

    new-instance v1, Lcom/android/settings/notification/MiuiZenModeSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$4;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ald:Landroid/preference/PreferenceCategory;

    const-string v1, "alarm_content"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    .line 157
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ala:Lcom/android/settings/dndmode/LabelPreference;

    new-instance v1, Lcom/android/settings/notification/MiuiZenModeSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$5;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ald:Landroid/preference/PreferenceCategory;

    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akY:Landroid/preference/CheckBoxPreference;

    .line 170
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akY:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akY:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/notification/MiuiZenModeSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$6;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->qz()V

    .line 180
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->ald:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akZ:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->akW:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->unregister()V

    .line 237
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->qz()V

    .line 231
    return-void
.end method
