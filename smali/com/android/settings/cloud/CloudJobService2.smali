.class public Lcom/android/settings/cloud/CloudJobService2;
.super Landroid/app/job/JobService;
.source "CloudJobService2.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final Tv:Landroid/net/Uri;


# instance fields
.field private volatile Tu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    const-class v0, Lcom/android/settings/cloud/CloudJobService2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;

    .line 96
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cloud/CloudJobService2;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 99
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/cloudsettings_staging"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/cloud/CloudJobService2;->DEBUG:Z

    .line 101
    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/update_cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cloud/CloudJobService2;->Tv:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudJobService2;->Tu:Z

    .line 104
    return-void
.end method

.method private static a(Lcom/android/settings/cloud/network/Connection;)Lcom/android/settings/cloud/network/b;
    .locals 4

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 191
    sget-object v0, Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;

    const-string v1, "Get parameter error: connection null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    .line 194
    :cond_0
    new-instance v0, Lcom/android/settings/cloud/network/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/network/b;-><init>(Lcom/android/settings/cloud/network/Connection;)V

    .line 195
    const-string v1, "d"

    const-string v2, "ro.product.device"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 197
    const-string v1, "c"

    sget-object v2, Lcom/android/settings/cloud/a/a;->Ve:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 198
    const-string v1, "r"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 199
    const-string v1, "l"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 200
    const-string v1, "v"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUI-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 202
    const-string v1, "t"

    invoke-static {}, Lcom/android/settings/cloud/CloudJobService2;->on()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 203
    const-string v1, "a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/cloud/a/a;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "21da76da-224c-2313-ac60-abcd70139283"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MD5"

    invoke-static {v2, v3}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 206
    const-string v1, "e"

    sget-object v2, Lcom/android/settings/cloud/a/a;->Vg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    goto/16 :goto_0
.end method

.method private static a(Lcom/android/settings/cloud/network/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 211
    new-instance v2, Ljava/util/TreeMap;

    new-instance v0, Lcom/android/settings/cloud/d;

    invoke-direct {v0}, Lcom/android/settings/cloud/d;-><init>()V

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/cloud/network/b;->oP()Ljava/util/TreeMap;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    const/4 v0, 0x1

    .line 221
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    if-nez v1, :cond_0

    .line 223
    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const/4 v0, 0x0

    move v1, v0

    .line 227
    goto :goto_0

    .line 229
    :cond_1
    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/android/settings/cloud/CloudJobService2;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-static {v1}, Lcom/android/settings/cloud/CloudJobService2;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method private static a(Lcom/android/settings/cloud/network/b;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 167
    if-nez p0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addRequestParameter error: base parameter null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    if-nez p1, :cond_1

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addRequestParameter error: product parameter null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    goto :goto_0

    .line 176
    :cond_2
    const-string v0, "sign"

    const-string v1, "21da76da-224c-2313-ac60-abcd70139283"

    invoke-static {p0, v1}, Lcom/android/settings/cloud/CloudJobService2;->a(Lcom/android/settings/cloud/network/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/cloud/network/b;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/android/settings/cloud/CloudJobService2;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudJobService2;->Tu:Z

    return p1
.end method

.method private static aJ(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    const-string v1, "dataVersion"

    const-string v2, "last_update_cloud_all_data_version"

    invoke-static {v2, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static aK(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 273
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 275
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0x33451

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/settings/cloud/CloudJobService2;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-boolean v2, Lcom/android/settings/cloud/CloudJobService2;->DEBUG:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x7530

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 283
    invoke-static {p0, v5}, Lcom/miui/activityutil/ActivityUtil;->setAllowNetworking(Landroid/content/Context;Z)V

    .line 284
    const-wide/16 v0, 0x5208

    invoke-static {p0, v0, v1}, Lcom/miui/activityutil/ActivityUtil;->delayedUpload(Landroid/content/Context;J)V

    .line 285
    return-void

    .line 275
    :cond_0
    const-wide/32 v2, 0x5265c00

    goto :goto_0
.end method

.method static synthetic aL(Landroid/content/Context;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/settings/cloud/CloudJobService2;->aJ(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/cloud/network/Connection;)Lcom/android/settings/cloud/network/b;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/settings/cloud/CloudJobService2;->a(Lcom/android/settings/cloud/network/Connection;)Lcom/android/settings/cloud/network/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/cloud/network/b;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/android/settings/cloud/CloudJobService2;->a(Lcom/android/settings/cloud/network/b;Ljava/util/Map;)V

    return-void
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 251
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 240
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 241
    invoke-static {p0}, Lcom/android/settings/cloud/CloudJobService2;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 242
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 243
    const-string v0, "%1$032X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final on()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "stable"

    .line 263
    :goto_0
    return-object v0

    .line 260
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "alpha"

    goto :goto_0

    .line 263
    :cond_1
    const-string v0, "development"

    goto :goto_0
.end method

.method static synthetic oo()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/settings/cloud/CloudJobService2;->DEBUG:Z

    return v0
.end method

.method static synthetic op()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/cloud/CloudJobService2;->Tv:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.securitycenter.action.TRACK_CLOUD_COUNT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudJobService2;->sendBroadcast(Landroid/content/Intent;)V

    .line 54
    invoke-static {p0, v1}, Lcom/miui/activityutil/ActivityUtil;->setAllowNetworking(Landroid/content/Context;Z)V

    .line 55
    const-wide/16 v2, 0x1388

    invoke-static {p0, v2, v3}, Lcom/miui/activityutil/ActivityUtil;->delayedUpload(Landroid/content/Context;J)V

    .line 58
    new-instance v2, Lcom/android/settings/cloud/j;

    invoke-direct {v2, p0}, Lcom/android/settings/cloud/j;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/android/settings/cloud/j;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    invoke-virtual {v2}, Lcom/android/settings/cloud/j;->start()V

    .line 65
    sget-object v2, Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnStartJob id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p0}, Lcom/android/settings/cloud/a/c;->aR(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-static {p0}, Lcom/android/settings/cloud/a/c;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    .line 68
    const-string v3, "last_update_cloud_all_data_time"

    invoke-static {v3, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    .line 70
    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 82
    :cond_0
    :goto_1
    return v0

    .line 74
    :cond_1
    sget-object v2, Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;

    const-string v3, "Need to update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudJobService2;->Tu:Z

    if-nez v2, :cond_0

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudJobService2;->Tu:Z

    .line 77
    new-instance v2, Lcom/android/settings/cloud/e;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/cloud/e;-><init>(Lcom/android/settings/cloud/CloudJobService2;Landroid/app/job/JobParameters;)V

    .line 78
    sget-object v3, Lcom/android/settings/cloud/CloudJobService2;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/cloud/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 79
    goto :goto_1

    .line 61
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    sget-object v0, Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnStopJob id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-boolean v3, p0, Lcom/android/settings/cloud/CloudJobService2;->Tu:Z

    .line 89
    return v3
.end method
