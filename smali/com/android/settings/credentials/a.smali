.class Lcom/android/settings/credentials/a;
.super Ljava/lang/Object;
.source "CredentialsUpdateService.java"

# interfaces
.implements Lcom/android/settings/credentials/g;


# instance fields
.field final synthetic Vp:Landroid/app/job/JobParameters;

.field final synthetic Vq:Lcom/android/settings/credentials/CredentialsUpdateService;


# direct methods
.method constructor <init>(Lcom/android/settings/credentials/CredentialsUpdateService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/settings/credentials/a;->Vq:Lcom/android/settings/credentials/CredentialsUpdateService;

    iput-object p2, p0, Lcom/android/settings/credentials/a;->Vp:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public oT()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/credentials/a;->Vq:Lcom/android/settings/credentials/CredentialsUpdateService;

    iget-object v1, p0, Lcom/android/settings/credentials/a;->Vp:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/credentials/CredentialsUpdateService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 24
    return-void
.end method
