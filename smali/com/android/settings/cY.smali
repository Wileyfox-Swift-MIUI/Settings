.class Lcom/android/settings/cY;
.super Lmiui/app/ProgressDialog;
.source "EncryptionSettings.java"


# instance fields
.field final synthetic mW:Lcom/android/settings/EncryptionSettings;

.field private mY:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/EncryptionSettings;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    iput-object p1, p0, Lcom/android/settings/cY;->mW:Lcom/android/settings/EncryptionSettings;

    .line 286
    invoke-virtual {p1}, Lcom/android/settings/EncryptionSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 287
    iput-boolean v1, p0, Lcom/android/settings/cY;->mY:Z

    .line 288
    invoke-virtual {p0, v1}, Lcom/android/settings/cY;->setProgressStyle(I)V

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/settings/cY;->setCancelable(Z)V

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/settings/cY;->setCanceledOnTouchOutside(Z)V

    .line 291
    invoke-virtual {p1, p2}, Lcom/android/settings/EncryptionSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/cY;->setMessage(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v0, Lcom/android/settings/cZ;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/cZ;-><init>(Lcom/android/settings/cY;Lcom/android/settings/EncryptionSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/cY;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 300
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/EncryptionSettings;ILcom/android/settings/cW;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/android/settings/cY;-><init>(Lcom/android/settings/EncryptionSettings;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/cY;Z)Z
    .locals 0

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/settings/cY;->mY:Z

    return p1
.end method

.method private ed()V
    .locals 4

    .prologue
    .line 314
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 315
    new-instance v1, Lcom/android/settings/da;

    invoke-direct {v1, p0}, Lcom/android/settings/da;-><init>(Lcom/android/settings/cY;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    return-void
.end method


# virtual methods
.method public ee()V
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/settings/cY;->mY:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/cY;->dismiss()V

    .line 327
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/cY;->mY:Z

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cY;->mY:Z

    .line 307
    invoke-super {p0}, Lmiui/app/ProgressDialog;->show()V

    .line 309
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-direct {p0}, Lcom/android/settings/cY;->ed()V

    .line 311
    return-void

    .line 309
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
