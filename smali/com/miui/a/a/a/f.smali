.class Lcom/miui/a/a/a/f;
.super Lse/dirac/acs/api/g;
.source "SongDiracUtils.java"


# instance fields
.field final synthetic aYA:Lcom/miui/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/miui/a/a/a/e;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/a/a/a/f;->aYA:Lcom/miui/a/a/a/e;

    invoke-direct {p0}, Lse/dirac/acs/api/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lse/dirac/acs/api/AudioControlService;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/a/a/a/f;->aYA:Lcom/miui/a/a/a/e;

    invoke-static {v0}, Lcom/miui/a/a/a/e;->a(Lcom/miui/a/a/a/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/miui/a/a/a/f;->aYA:Lcom/miui/a/a/a/e;

    invoke-static {v0, p1}, Lcom/miui/a/a/a/e;->a(Lcom/miui/a/a/a/e;Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService;

    .line 66
    iget-object v0, p0, Lcom/miui/a/a/a/f;->aYA:Lcom/miui/a/a/a/e;

    invoke-static {v0}, Lcom/miui/a/a/a/e;->b(Lcom/miui/a/a/a/e;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/a/a/a/f;->aYA:Lcom/miui/a/a/a/e;

    invoke-static {v0}, Lcom/miui/a/a/a/e;->a(Lcom/miui/a/a/a/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/miui/a/a/a/f;->aYA:Lcom/miui/a/a/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/a/a/a/e;->a(Lcom/miui/a/a/a/e;Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService;

    .line 75
    return-void
.end method
