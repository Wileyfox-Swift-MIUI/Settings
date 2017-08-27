.class public Lcom/android/settings/fuelgauge/PowerWhitelistBackend;
.super Ljava/lang/Object;
.source "PowerWhitelistBackend.java"


# static fields
.field private static final ahI:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;


# instance fields
.field private final ahJ:Landroid/os/IDeviceIdleController;

.field private final ahK:Landroid/util/ArraySet;

.field private final ahL:Landroid/util/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahI:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahK:Landroid/util/ArraySet;

    .line 38
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahL:Landroid/util/ArraySet;

    .line 41
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahJ:Landroid/os/IDeviceIdleController;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->rI()V

    .line 44
    return-void
.end method

.method private rI()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahL:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 78
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahK:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahJ:Landroid/os/IDeviceIdleController;

    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v2

    .line 81
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 82
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahK:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahJ:Landroid/os/IDeviceIdleController;

    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v1

    .line 85
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 86
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahL:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v1, "PowerWhitelistBackend"

    const-string v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_1
    return-void
.end method

.method public static rJ()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahI:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    return-object v0
.end method


# virtual methods
.method public bp(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bq(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahK:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public br(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahJ:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahK:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "PowerWhitelistBackend"

    const-string v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bs(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahJ:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->ahK:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "PowerWhitelistBackend"

    const-string v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
