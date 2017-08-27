.class public Lse/dirac/acs/api/AudioControlService;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private bxq:Lse/dirac/acs/api/r;

.field private final bxr:Lse/dirac/acs/api/a;

.field private bxs:Lse/dirac/acs/api/o;

.field private bxt:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

.field private bxu:Lse/dirac/acs/api/j;

.field private bxv:Lse/dirac/acs/api/l;

.field private bxw:Lse/dirac/acs/api/k;

.field private bxx:Lse/dirac/acs/api/i;

.field private final context:Landroid/content/Context;

.field private final locale:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lse/dirac/acs/api/o;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Lse/dirac/acs/api/d;

    invoke-direct {v0, p0}, Lse/dirac/acs/api/d;-><init>(Lse/dirac/acs/api/AudioControlService;)V

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxq:Lse/dirac/acs/api/r;

    .line 569
    new-instance v0, Lse/dirac/acs/api/a;

    new-instance v1, Lse/dirac/acs/api/e;

    invoke-direct {v1, p0}, Lse/dirac/acs/api/e;-><init>(Lse/dirac/acs/api/AudioControlService;)V

    invoke-direct {v0, v1}, Lse/dirac/acs/api/a;-><init>(Lse/dirac/acs/api/b;)V

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxr:Lse/dirac/acs/api/a;

    .line 590
    iput-object v2, p0, Lse/dirac/acs/api/AudioControlService;->bxu:Lse/dirac/acs/api/j;

    .line 592
    iput-object v2, p0, Lse/dirac/acs/api/AudioControlService;->bxw:Lse/dirac/acs/api/k;

    .line 593
    iput-object v2, p0, Lse/dirac/acs/api/AudioControlService;->bxx:Lse/dirac/acs/api/i;

    .line 558
    iput-object p2, p0, Lse/dirac/acs/api/AudioControlService;->bxs:Lse/dirac/acs/api/o;

    .line 559
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->context:Landroid/content/Context;

    .line 560
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    .line 563
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxq:Lse/dirac/acs/api/r;

    invoke-interface {p2, v0}, Lse/dirac/acs/api/o;->a(Lse/dirac/acs/api/r;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception thrown in registerCallback"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lse/dirac/acs/api/o;Lse/dirac/acs/api/c;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lse/dirac/acs/api/AudioControlService;-><init>(Landroid/content/Context;Lse/dirac/acs/api/o;)V

    return-void
.end method

.method public static PG()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "se.dirac.acs"

    const-string v2, "se.dirac.acs.AudioControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;
    .locals 3

    .prologue
    .line 481
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxs:Lse/dirac/acs/api/o;

    invoke-interface {v0, p1, p2}, Lse/dirac/acs/api/o;->a(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception thrown in listDevices"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/l;)Lse/dirac/acs/api/l;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->bxv:Lse/dirac/acs/api/l;

    return-object p1
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 2

    .prologue
    .line 597
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lse/dirac/acs/api/f;

    invoke-direct {v1, p0, p1}, Lse/dirac/acs/api/f;-><init>(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method static synthetic a(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lse/dirac/acs/api/AudioControlService;->a(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lse/dirac/acs/api/g;)Z
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lse/dirac/acs/api/AudioControlService;->PG()Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    invoke-static {p1, p0}, Lse/dirac/acs/api/g;->a(Lse/dirac/acs/api/g;Landroid/content/Context;)Landroid/content/Context;

    .line 90
    invoke-static {p1}, Lse/dirac/acs/api/g;->b(Lse/dirac/acs/api/g;)Landroid/content/ServiceConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxt:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    return-object v0
.end method

.method static synthetic c(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/l;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxv:Lse/dirac/acs/api/l;

    return-object v0
.end method

.method static synthetic d(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/j;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxu:Lse/dirac/acs/api/j;

    return-object v0
.end method

.method static synthetic e(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/k;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxw:Lse/dirac/acs/api/k;

    return-object v0
.end method

.method static synthetic f(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/i;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxx:Lse/dirac/acs/api/i;

    return-object v0
.end method


# virtual methods
.method public R(J)Lse/dirac/acs/api/Device;
    .locals 3

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxs:Lse/dirac/acs/api/o;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lse/dirac/acs/api/o;->a(JLjava/lang/String;)Lse/dirac/acs/api/Device;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception thrown in getDevice call"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lse/dirac/acs/api/Output;)Ljava/util/List;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lse/dirac/acs/api/AudioControlService;->a(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lse/dirac/acs/api/OutputSettings;)Z
    .locals 3

    .prologue
    .line 286
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxs:Lse/dirac/acs/api/o;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/o;->a(Lse/dirac/acs/api/OutputSettings;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception thrown in setOutput"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;
    .locals 3

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxs:Lse/dirac/acs/api/o;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/o;->d(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception thrown in getOutput"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->bxs:Lse/dirac/acs/api/o;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->bxq:Lse/dirac/acs/api/r;

    invoke-interface {v0, v1}, Lse/dirac/acs/api/o;->b(Lse/dirac/acs/api/r;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception thrown in unregisterCallback"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
