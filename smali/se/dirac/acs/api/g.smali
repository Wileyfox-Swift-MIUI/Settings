.class public abstract Lse/dirac/acs/api/g;
.super Ljava/lang/Object;
.source "AudioControlService.java"


# instance fields
.field private final bxD:Landroid/content/ServiceConnection;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lse/dirac/acs/api/h;

    invoke-direct {v0, p0}, Lse/dirac/acs/api/h;-><init>(Lse/dirac/acs/api/g;)V

    iput-object v0, p0, Lse/dirac/acs/api/g;->bxD:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lse/dirac/acs/api/g;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lse/dirac/acs/api/g;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lse/dirac/acs/api/g;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lse/dirac/acs/api/g;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic b(Lse/dirac/acs/api/g;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lse/dirac/acs/api/g;->bxD:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lse/dirac/acs/api/AudioControlService;)V
.end method

.method public abstract onServiceDisconnected()V
.end method
