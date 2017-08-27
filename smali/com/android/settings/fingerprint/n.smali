.class public Lcom/android/settings/fingerprint/n;
.super Landroid/app/Fragment;
.source "FingerprintEnrollSidecar.java"


# instance fields
.field private adT:I

.field private adU:I

.field private adV:Lcom/android/settings/fingerprint/q;

.field private adW:Z

.field private adX:Landroid/os/CancellationSignal;

.field private adY:Z

.field private adZ:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private adt:[B

.field private final aea:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/n;->adT:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/n;->adU:I

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/n;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/android/settings/fingerprint/o;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/o;-><init>(Lcom/android/settings/fingerprint/n;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/n;->adZ:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 136
    new-instance v0, Lcom/android/settings/fingerprint/p;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/p;-><init>(Lcom/android/settings/fingerprint/n;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/n;->aea:Ljava/lang/Runnable;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/android/settings/fingerprint/n;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/settings/fingerprint/n;->adT:I

    return v0
.end method

.method static synthetic a(Lcom/android/settings/fingerprint/n;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/fingerprint/n;->adT:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/fingerprint/n;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/n;->adY:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/fingerprint/n;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/fingerprint/n;->adU:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/fingerprint/n;)Lcom/android/settings/fingerprint/q;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/fingerprint/n;->adV:Lcom/android/settings/fingerprint/q;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/fingerprint/n;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/fingerprint/n;->rb()V

    return-void
.end method

.method private ra()V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/fingerprint/n;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/n;->aea:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/n;->adT:I

    .line 75
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/n;->adX:Landroid/os/CancellationSignal;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/n;->adt:[B

    iget-object v2, p0, Lcom/android/settings/fingerprint/n;->adX:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/n;->adZ:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/n;->adW:Z

    .line 79
    return-void
.end method

.method private rb()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/fingerprint/n;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/n;->aea:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/n;->adW:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/fingerprint/n;->adX:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/n;->adW:Z

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/n;->adT:I

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/fingerprint/q;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/fingerprint/n;->adV:Lcom/android/settings/fingerprint/q;

    .line 92
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/n;->adt:[B

    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/n;->setRetainInstance(Z)V

    .line 47
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 59
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/n;->adW:Z

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/fingerprint/n;->ra()V

    .line 62
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/fingerprint/n;->rb()V

    .line 70
    :cond_0
    return-void
.end method

.method public rc()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/fingerprint/n;->adT:I

    return v0
.end method

.method public rd()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/settings/fingerprint/n;->adU:I

    return v0
.end method
