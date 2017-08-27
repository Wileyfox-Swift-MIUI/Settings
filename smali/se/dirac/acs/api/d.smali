.class Lse/dirac/acs/api/d;
.super Lse/dirac/acs/api/s;
.source "AudioControlService.java"


# instance fields
.field final synthetic bxB:Lse/dirac/acs/api/AudioControlService;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-direct {p0}, Lse/dirac/acs/api/s;-><init>()V

    return-void
.end method


# virtual methods
.method public PH()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    const-string v0, "se.dirac.acs-api"

    const-string v1, "Sync done callback received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->c(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->c(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lse/dirac/acs/api/l;->dt(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0, v2}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/l;)Lse/dirac/acs/api/l;

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    :try_start_1
    iget-object v1, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0, v2}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/l;)Lse/dirac/acs/api/l;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v2}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/l;)Lse/dirac/acs/api/l;

    throw v0
.end method

.method public a(J[I)V
    .locals 5

    .prologue
    .line 495
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->b(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-virtual {v0, p1, p2}, Lse/dirac/acs/api/AudioControlService;->R(J)Lse/dirac/acs/api/Device;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1}, Lse/dirac/acs/api/AudioControlService;->b(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    move-result-object v1

    iget-object v2, v0, Lse/dirac/acs/api/Device;->bxL:Ljava/util/List;

    sget-object v3, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->bxF:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    invoke-interface {v1, v0, v2, v3}, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;->a(Lse/dirac/acs/api/Device;Ljava/util/List;Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    iget-object v1, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public a(Lse/dirac/acs/api/Output;Lse/dirac/acs/api/OutputSettings;)V
    .locals 2

    .prologue
    .line 534
    const-string v0, "se.dirac.acs-api"

    const-string v1, "Settings changed callback received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->e(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->e(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lse/dirac/acs/api/k;->a(Lse/dirac/acs/api/Output;Lse/dirac/acs/api/OutputSettings;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    iget-object v1, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public fQ(I)V
    .locals 2

    .prologue
    .line 545
    const-string v0, "se.dirac.acs-api"

    const-string v1, "Routing change callback received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->f(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->f(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lse/dirac/acs/api/i;->fQ(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    iget-object v1, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public fS(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 523
    const-string v0, "se.dirac.acs-api"

    const-string v1, "Set user callback received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->d(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->d(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lse/dirac/acs/api/j;->fS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    iget-object v1, p0, Lse/dirac/acs/api/d;->bxB:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
