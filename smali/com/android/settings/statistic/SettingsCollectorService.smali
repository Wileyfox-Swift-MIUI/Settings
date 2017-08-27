.class public Lcom/android/settings/statistic/SettingsCollectorService;
.super Landroid/app/job/JobService;
.source "SettingsCollectorService.java"


# static fields
.field private static Vo:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final atM:Ljava/lang/String;

.field private atN:Landroid/app/job/JobParameters;

.field private atO:Ljava/util/HashMap;

.field private mData:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xb

    sput v0, Lcom/android/settings/statistic/SettingsCollectorService;->Vo:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 53
    const-string v0, "SettingsCollector"

    iput-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->TAG:Ljava/lang/String;

    .line 54
    const-string v0, "SettingsCollector"

    iput-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atM:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    .line 366
    return-void
.end method

.method private D(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/l;
    .locals 6

    .prologue
    .line 340
    :try_start_0
    new-instance v0, Lcom/android/settings/statistic/l;

    const-string v2, "Special.Keys"

    iget-object v1, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/l;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-object v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    const-string v1, "SettingsCollector"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    new-instance v0, Lcom/android/settings/statistic/l;

    const-string v2, "Special.Keys"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/l;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SettingsCollector"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/statistic/SettingsCollectorService;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->vw()V

    return-void
.end method

.method public static aK(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 357
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 358
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/android/settings/statistic/SettingsCollectorService;->Vo:I

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 361
    return-void
.end method

.method static synthetic b(Lcom/android/settings/statistic/SettingsCollectorService;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->vx()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/statistic/SettingsCollectorService;)Landroid/app/job/JobParameters;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atN:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/l;
    .locals 6

    .prologue
    .line 306
    const-string v0, "Settings.System"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    if-eqz v5, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 309
    new-instance v0, Lcom/android/settings/statistic/l;

    const-string v2, "Settings.System"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/l;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_0
    return-object v0

    .line 311
    :cond_0
    const-string v0, "Settings.Secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    if-eqz v5, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 314
    new-instance v0, Lcom/android/settings/statistic/l;

    const-string v2, "Settings.Secure"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/l;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_1
    const-string v0, "Settings.Global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 318
    if-eqz v5, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 319
    new-instance v0, Lcom/android/settings/statistic/l;

    const-string v2, "Settings.Global"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/l;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    const-string v0, "MiuiSettings.System"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 323
    if-eqz v5, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 324
    new-instance v0, Lcom/android/settings/statistic/l;

    const-string v2, "MiuiSettings.System"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/l;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_3
    const-string v0, "SystemProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    if-eqz v5, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 329
    new-instance v0, Lcom/android/settings/statistic/l;

    const-string v2, "SystemProperties"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/l;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_4
    const-string v0, "Special.Keys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 332
    invoke-direct {p0, p2, p3}, Lcom/android/settings/statistic/SettingsCollectorService;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/l;

    move-result-object v0

    goto/16 :goto_0

    .line 334
    :cond_5
    const-string v0, "SettingsCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get null for module:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", key:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Lcom/android/settings/statistic/l;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/l;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ci(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .prologue
    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/statistic/SettingsCollectorService;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 291
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-direct {p0, p1, v4, v0}, Lcom/android/settings/statistic/SettingsCollectorService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/l;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    const-string v0, "SettingsCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze JSON failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    return-object v1
.end method

.method private vw()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "font"

    new-instance v2, Lcom/android/settings/statistic/d;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/d;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "font_size"

    new-instance v2, Lcom/android/settings/statistic/e;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/e;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "app_notifications"

    new-instance v2, Lcom/android/settings/statistic/f;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/f;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "vip_call_settings"

    new-instance v2, Lcom/android/settings/statistic/g;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/g;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "vip_list"

    new-instance v2, Lcom/android/settings/statistic/h;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/h;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "ring_volume"

    new-instance v2, Lcom/android/settings/statistic/i;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/i;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "alarm_volume"

    new-instance v2, Lcom/android/settings/statistic/j;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/j;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "music_volume"

    new-instance v2, Lcom/android/settings/statistic/k;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/k;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "owner_info"

    new-instance v2, Lcom/android/settings/statistic/b;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/b;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atO:Ljava/util/HashMap;

    const-string v1, "lite_mode"

    new-instance v2, Lcom/android/settings/statistic/c;

    invoke-direct {v2, p0}, Lcom/android/settings/statistic/c;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method private vx()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->vy()V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->vz()V

    .line 251
    return-void
.end method

.method private vy()V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    .line 256
    const-string v0, "Settings.System"

    .line 257
    iget-object v1, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/statistic/SettingsCollectorService;->ci(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    const-string v0, "Settings.Secure"

    .line 260
    iget-object v1, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/statistic/SettingsCollectorService;->ci(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    const-string v0, "Settings.Global"

    .line 263
    iget-object v1, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/statistic/SettingsCollectorService;->ci(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    const-string v0, "MiuiSettings.System"

    .line 266
    iget-object v1, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/statistic/SettingsCollectorService;->ci(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    const-string v0, "SystemProperties"

    .line 269
    iget-object v1, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/statistic/SettingsCollectorService;->ci(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    const-string v0, "Special.Keys"

    .line 272
    iget-object v1, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/statistic/SettingsCollectorService;->ci(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    return-void
.end method

.method private vz()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    if-nez v0, :cond_1

    .line 282
    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/statistic/l;

    .line 280
    invoke-virtual {v0}, Lcom/android/settings/statistic/l;->vC()V

    goto :goto_0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 69
    const-string v0, "SettingsCollector"

    const-string v1, "start service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object p1, p0, Lcom/android/settings/statistic/SettingsCollectorService;->atN:Landroid/app/job/JobParameters;

    .line 71
    new-instance v0, Lcom/android/settings/statistic/a;

    invoke-direct {v0, p0}, Lcom/android/settings/statistic/a;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/statistic/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 93
    const-string v0, "SettingsCollector"

    const-string v1, "force stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    return v0
.end method
