.class Lcom/android/settings/credentials/h;
.super Landroid/os/AsyncTask;
.source "MiuiCredentialsUpdater.java"


# instance fields
.field final synthetic Vt:Lcom/android/settings/credentials/b;

.field private Vw:Lcom/android/settings/credentials/e;


# direct methods
.method public constructor <init>(Lcom/android/settings/credentials/b;Lcom/android/settings/credentials/e;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/credentials/h;->Vt:Lcom/android/settings/credentials/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/android/settings/credentials/h;->Vw:Lcom/android/settings/credentials/e;

    .line 267
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/credentials/h;->f([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs f([Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    const-string v0, "do_get"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings/credentials/h;->Vt:Lcom/android/settings/credentials/b;

    aget-object v1, p1, v3

    invoke-static {v0, v1}, Lcom/android/settings/credentials/b;->b(Lcom/android/settings/credentials/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 273
    :cond_0
    const-string v0, "do_get_pic"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/settings/credentials/h;->Vt:Lcom/android/settings/credentials/b;

    aget-object v1, p1, v3

    invoke-static {v0, v1}, Lcom/android/settings/credentials/b;->c(Lcom/android/settings/credentials/b;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/credentials/h;->Vw:Lcom/android/settings/credentials/e;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/settings/credentials/h;->Vw:Lcom/android/settings/credentials/e;

    invoke-interface {v0, p1}, Lcom/android/settings/credentials/e;->r(Ljava/lang/Object;)V

    .line 285
    :cond_0
    return-void
.end method
