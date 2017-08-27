.class Lcom/android/settings/credentials/d;
.super Ljava/lang/Object;
.source "MiuiCredentialsUpdater.java"

# interfaces
.implements Lcom/android/settings/credentials/e;


# instance fields
.field final synthetic Vu:Lcom/android/settings/credentials/c;


# direct methods
.method constructor <init>(Lcom/android/settings/credentials/c;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/credentials/d;->Vu:Lcom/android/settings/credentials/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/credentials/d;->Vu:Lcom/android/settings/credentials/c;

    iget-object v0, v0, Lcom/android/settings/credentials/c;->Vt:Lcom/android/settings/credentials/b;

    iget-object v1, p0, Lcom/android/settings/credentials/d;->Vu:Lcom/android/settings/credentials/c;

    iget-object v1, v1, Lcom/android/settings/credentials/c;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/credentials/b;->a(Lcom/android/settings/credentials/b;Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/android/settings/credentials/f;

    iget-object v1, p0, Lcom/android/settings/credentials/d;->Vu:Lcom/android/settings/credentials/c;

    iget-object v1, v1, Lcom/android/settings/credentials/c;->Vt:Lcom/android/settings/credentials/b;

    iget-object v2, p0, Lcom/android/settings/credentials/d;->Vu:Lcom/android/settings/credentials/c;

    iget-object v2, v2, Lcom/android/settings/credentials/c;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/settings/credentials/f;-><init>(Lcom/android/settings/credentials/b;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/settings/credentials/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    :cond_0
    return-void
.end method

.method public synthetic r(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/settings/credentials/d;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
