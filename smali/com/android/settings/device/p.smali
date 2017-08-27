.class Lcom/android/settings/device/p;
.super Landroid/os/AsyncTask;
.source "HttpUtils.java"


# instance fields
.field private Wy:Lcom/android/settings/device/o;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/o;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/android/settings/device/p;->Wy:Lcom/android/settings/device/o;

    .line 221
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/p;->f([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs f([Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    const-string v0, "do_get"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    aget-object v0, p1, v3

    invoke-static {v0}, Lcom/android/settings/device/n;->aV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 227
    :cond_0
    const-string v0, "do_post"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    aget-object v0, p1, v3

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/android/settings/device/n;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    const-string v0, "do_get_pic"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    aget-object v0, p1, v3

    invoke-static {v0}, Lcom/android/settings/device/n;->bc(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/device/p;->Wy:Lcom/android/settings/device/o;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/device/p;->Wy:Lcom/android/settings/device/o;

    invoke-interface {v0, p1}, Lcom/android/settings/device/o;->r(Ljava/lang/Object;)V

    .line 241
    :cond_0
    return-void
.end method
