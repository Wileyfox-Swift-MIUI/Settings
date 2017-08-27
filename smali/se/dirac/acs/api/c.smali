.class Lse/dirac/acs/api/c;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Lse/dirac/acs/api/j;


# instance fields
.field final synthetic bxA:Ljava/util/concurrent/CountDownLatch;

.field final synthetic bxy:[Z

.field final synthetic bxz:Ljava/lang/String;


# virtual methods
.method public fS(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lse/dirac/acs/api/c;->bxy:[Z

    const/4 v1, 0x0

    iget-object v2, p0, Lse/dirac/acs/api/c;->bxz:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 458
    iget-object v0, p0, Lse/dirac/acs/api/c;->bxA:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 459
    return-void
.end method
