.class Lse/dirac/acs/api/h;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic bxE:Lse/dirac/acs/api/g;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/g;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lse/dirac/acs/api/h;->bxE:Lse/dirac/acs/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 39
    iget-object v0, p0, Lse/dirac/acs/api/h;->bxE:Lse/dirac/acs/api/g;

    new-instance v1, Lse/dirac/acs/api/AudioControlService;

    iget-object v2, p0, Lse/dirac/acs/api/h;->bxE:Lse/dirac/acs/api/g;

    invoke-static {v2}, Lse/dirac/acs/api/g;->a(Lse/dirac/acs/api/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Lse/dirac/acs/api/p;->b(Landroid/os/IBinder;)Lse/dirac/acs/api/o;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lse/dirac/acs/api/AudioControlService;-><init>(Landroid/content/Context;Lse/dirac/acs/api/o;Lse/dirac/acs/api/c;)V

    invoke-virtual {v0, v1}, Lse/dirac/acs/api/g;->a(Lse/dirac/acs/api/AudioControlService;)V

    .line 41
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lse/dirac/acs/api/h;->bxE:Lse/dirac/acs/api/g;

    invoke-virtual {v0}, Lse/dirac/acs/api/g;->onServiceDisconnected()V

    .line 46
    return-void
.end method
