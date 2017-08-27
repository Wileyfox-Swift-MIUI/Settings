.class Lcom/android/settings/credentials/c;
.super Ljava/lang/Object;
.source "MiuiCredentialsUpdater.java"

# interfaces
.implements Lcom/android/settings/credentials/e;


# instance fields
.field final synthetic Vs:Lcom/android/settings/credentials/g;

.field final synthetic Vt:Lcom/android/settings/credentials/b;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/credentials/b;Landroid/content/Context;Lcom/android/settings/credentials/g;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/credentials/c;->Vt:Lcom/android/settings/credentials/b;

    iput-object p2, p0, Lcom/android/settings/credentials/c;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/credentials/c;->Vs:Lcom/android/settings/credentials/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aY(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/credentials/c;->Vt:Lcom/android/settings/credentials/b;

    invoke-static {v0, p1}, Lcom/android/settings/credentials/b;->a(Lcom/android/settings/credentials/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v1, Lcom/android/settings/credentials/d;

    invoke-direct {v1, p0}, Lcom/android/settings/credentials/d;-><init>(Lcom/android/settings/credentials/c;)V

    .line 80
    iget-object v2, p0, Lcom/android/settings/credentials/c;->Vt:Lcom/android/settings/credentials/b;

    invoke-static {v2, v0, v1}, Lcom/android/settings/credentials/b;->a(Lcom/android/settings/credentials/b;Ljava/lang/String;Lcom/android/settings/credentials/e;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/credentials/c;->Vs:Lcom/android/settings/credentials/g;

    invoke-interface {v0}, Lcom/android/settings/credentials/g;->oT()V

    goto :goto_0
.end method

.method public synthetic r(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/credentials/c;->aY(Ljava/lang/String;)V

    return-void
.end method
