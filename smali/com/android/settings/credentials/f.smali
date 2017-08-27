.class Lcom/android/settings/credentials/f;
.super Landroid/os/AsyncTask;
.source "MiuiCredentialsUpdater.java"


# instance fields
.field final synthetic Vt:Lcom/android/settings/credentials/b;

.field private Vv:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/credentials/b;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/credentials/f;->Vt:Lcom/android/settings/credentials/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    .line 184
    iput-object p3, p0, Lcom/android/settings/credentials/f;->context:Landroid/content/Context;

    .line 185
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 197
    .line 199
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/credentials/f;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "credentials.png"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 203
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    if-eqz v1, :cond_1

    .line 210
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 211
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    :cond_2
    :goto_0
    return-object v2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 206
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    if-eqz v1, :cond_3

    .line 210
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 211
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 217
    :catch_2
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    :goto_2
    if-eqz v2, :cond_4

    .line 210
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 211
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 213
    :cond_4
    iget-object v1, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 214
    iget-object v1, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/credentials/f;->Vv:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 219
    :cond_5
    :goto_3
    throw v0

    .line 217
    :catch_3
    move-exception v1

    .line 218
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 208
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 205
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
