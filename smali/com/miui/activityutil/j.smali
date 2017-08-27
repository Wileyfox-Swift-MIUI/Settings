.class public Lcom/miui/activityutil/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static f:Lcom/miui/activityutil/j;


# instance fields
.field private g:Landroid/content/Context;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    const-class v0, Lcom/miui/activityutil/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/activityutil/j;->a:Ljava/lang/String;

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    .line 32
    const-string v1, "aHR0cDovL2ZsYXNoLnNlYy5taXVpLmNvbS9kYXRhL3NlYw=="

    invoke-static {v1}, Lcom/miui/activityutil/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 29
    sput-object v0, Lcom/miui/activityutil/j;->b:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    .line 38
    const-string v1, "aHR0cDovL2ZsYXNoLnNlYy5taXVpLmNvbS9kYXRhL3N0YXR1cw=="

    invoke-static {v1}, Lcom/miui/activityutil/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 36
    sput-object v0, Lcom/miui/activityutil/j;->c:[Ljava/lang/String;

    .line 42
    const-string v0, "Y3J1c2FkZQ=="

    invoke-static {v0}, Lcom/miui/activityutil/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/activityutil/j;->d:Ljava/lang/String;

    .line 45
    const-string v0, "c2VjX3Vfcg=="

    invoke-static {v0}, Lcom/miui/activityutil/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/activityutil/j;->e:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/activityutil/j;->k:Landroid/os/Handler;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    iput-object v0, p0, Lcom/miui/activityutil/j;->g:Landroid/content/Context;

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/miui/activityutil/j;->g:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/activityutil/j;[B)I
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/miui/activityutil/j;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 5

    .prologue
    .line 300
    const/4 v0, -0x1

    .line 304
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 305
    invoke-static {v1}, Lcom/miui/activityutil/d;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/miui/activityutil/c;

    iget-object v3, p0, Lcom/miui/activityutil/j;->g:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/miui/activityutil/c;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-virtual {v1}, Lcom/miui/activityutil/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 312
    iget-object v3, p0, Lcom/miui/activityutil/j;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 313
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/activityutil/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "source"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/activityutil/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "fetched"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 324
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/activityutil/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/activityutil/j;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/activityutil/j;
    .locals 2

    .prologue
    .line 84
    const-class v1, Lcom/miui/activityutil/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/activityutil/j;->f:Lcom/miui/activityutil/j;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/miui/activityutil/j;

    invoke-direct {v0, p0}, Lcom/miui/activityutil/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/activityutil/j;->f:Lcom/miui/activityutil/j;

    .line 87
    :cond_0
    sget-object v0, Lcom/miui/activityutil/j;->f:Lcom/miui/activityutil/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/miui/activityutil/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/activityutil/j;I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/miui/activityutil/j;->h:I

    return-void
.end method

.method static synthetic a(Lcom/miui/activityutil/j;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/activityutil/j;->b([B)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 380
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/activityutil/j;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/activityutil/j;->a([B)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/miui/activityutil/j;)V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/activityutil/j;->i:Z

    return-void
.end method

.method private b([B)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 337
    if-nez p1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 344
    invoke-static {v1}, Lcom/miui/activityutil/d;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_0

    .line 351
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 352
    new-instance v1, Lcom/miui/activityutil/c;

    iget-object v3, p0, Lcom/miui/activityutil/j;->g:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/miui/activityutil/c;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v1}, Lcom/miui/activityutil/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {}, Lcom/miui/activityutil/c;->e()Ljava/lang/String;

    move-result-object v3

    .line 355
    const-string v4, "version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/activityutil/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 356
    if-nez v3, :cond_2

    .line 357
    const-string v4, "ota"

    invoke-static {v4}, Lcom/miui/activityutil/c;->a(Ljava/lang/String;)V

    .line 359
    :cond_2
    const-string v4, "1"

    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/activityutil/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/activityutil/j;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    if-eqz v3, :cond_0

    .line 362
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/miui/activityutil/j;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/miui/activityutil/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/activityutil/j;)V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/miui/activityutil/k;

    invoke-direct {v0, p0}, Lcom/miui/activityutil/k;-><init>(Lcom/miui/activityutil/j;)V

    invoke-static {v0}, Lcom/miui/activityutil/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/activityutil/j;)Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/activityutil/j;->g:Landroid/content/Context;

    sget-object v1, Lcom/miui/activityutil/j;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/activityutil/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/c;->a(Ljava/io/File;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/activityutil/j;->b([B)Z

    move-result v0

    return v0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miui/activityutil/j;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/activityutil/j;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/activityutil/j;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/miui/activityutil/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/miui/activityutil/j;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.securitycenter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    iget-boolean v0, p0, Lcom/miui/activityutil/j;->j:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    sget-object v1, Lcom/miui/activityutil/j;->a:Ljava/lang/String;

    const-string v2, "isAllowNetworking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/miui/activityutil/j;->k:Landroid/os/Handler;

    new-instance v1, Lcom/miui/activityutil/q;

    invoke-direct {v1, p0}, Lcom/miui/activityutil/q;-><init>(Lcom/miui/activityutil/j;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 257
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/miui/activityutil/j;->i:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/activityutil/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/activityutil/j;->g:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 257
    goto :goto_0

    .line 260
    :cond_3
    iput-boolean v1, p0, Lcom/miui/activityutil/j;->i:Z

    new-instance v0, Lcom/miui/activityutil/m;

    invoke-direct {v0, p0, p0}, Lcom/miui/activityutil/m;-><init>(Lcom/miui/activityutil/j;Lcom/miui/activityutil/j;)V

    iget v1, p0, Lcom/miui/activityutil/j;->h:I

    if-ne v1, v3, :cond_4

    invoke-virtual {v0, v3}, Lcom/miui/activityutil/r;->a(I)V

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/miui/activityutil/o;

    invoke-direct {v1, p0, v0}, Lcom/miui/activityutil/o;-><init>(Lcom/miui/activityutil/j;Lcom/miui/activityutil/r;)V

    invoke-static {v1}, Lcom/miui/activityutil/s;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/miui/activityutil/j;->j:Z

    .line 92
    return-void
.end method
