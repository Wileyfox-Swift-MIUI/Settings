.class Lcom/android/settings/cloud/e;
.super Landroid/os/AsyncTask;
.source "CloudJobService2.java"


# instance fields
.field private Tw:Landroid/app/job/JobParameters;

.field final synthetic Tx:Lcom/android/settings/cloud/CloudJobService2;


# direct methods
.method public constructor <init>(Lcom/android/settings/cloud/CloudJobService2;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/cloud/e;->Tx:Lcom/android/settings/cloud/CloudJobService2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/android/settings/cloud/e;->Tw:Landroid/app/job/JobParameters;

    .line 109
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/cloud/e;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 113
    new-instance v0, Lcom/android/settings/cloud/network/Connection;

    sget-object v1, Lcom/android/settings/cloud/h;->TO:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/settings/cloud/network/Connection;-><init>(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/cloud/network/Connection;->aF(Z)V

    .line 116
    :try_start_0
    invoke-static {v0}, Lcom/android/settings/cloud/CloudJobService2;->b(Lcom/android/settings/cloud/network/Connection;)Lcom/android/settings/cloud/network/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/e;->Tx:Lcom/android/settings/cloud/CloudJobService2;

    invoke-static {v2}, Lcom/android/settings/cloud/CloudJobService2;->aL(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/cloud/CloudJobService2;->b(Lcom/android/settings/cloud/network/b;Ljava/util/Map;)V

    .line 118
    invoke-static {}, Lcom/android/settings/cloud/CloudJobService2;->oo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    # getter for: Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/cloud/CloudJobService2;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/cloud/network/Connection;->oM()Lcom/android/settings/cloud/network/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/cloud/network/Connection;->oN()Lcom/android/settings/cloud/network/Connection$NetworkError;

    move-result-object v1

    sget-object v2, Lcom/android/settings/cloud/network/Connection$NetworkError;->UJ:Lcom/android/settings/cloud/network/Connection$NetworkError;

    if-ne v1, v2, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/android/settings/cloud/network/Connection;->oL()Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/settings/cloud/e;->Tx:Lcom/android/settings/cloud/CloudJobService2;

    invoke-virtual {v1}, Lcom/android/settings/cloud/CloudJobService2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cloud/b;->aI(Landroid/content/Context;)Lcom/android/settings/cloud/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/e;->Tx:Lcom/android/settings/cloud/CloudJobService2;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudJobService2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/cloud/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)I

    move-result v0

    .line 126
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 127
    const-string v1, "last_update_cloud_all_data_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/cloud/e;->Tx:Lcom/android/settings/cloud/CloudJobService2;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudJobService2;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;JLandroid/content/Context;)V

    .line 129
    const-string v1, "last_update_cloud_all_data_version"

    int-to-long v2, v0

    iget-object v0, p0, Lcom/android/settings/cloud/e;->Tx:Lcom/android/settings/cloud/CloudJobService2;

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudJobService2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;JLandroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/cloud/e;->Tx:Lcom/android/settings/cloud/CloudJobService2;

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudJobService2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/cloud/CloudJobService2;->op()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    :cond_1
    :goto_0
    return-object v5

    .line 135
    :cond_2
    # getter for: Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/cloud/CloudJobService2;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    # getter for: Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/cloud/CloudJobService2;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Parameter is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    # getter for: Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/cloud/CloudJobService2;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response resolves failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 144
    :catch_2
    move-exception v0

    .line 145
    # getter for: Lcom/android/settings/cloud/CloudJobService2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/cloud/CloudJobService2;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown URI."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/cloud/e;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/cloud/e;->Tx:Lcom/android/settings/cloud/CloudJobService2;

    iget-object v1, p0, Lcom/android/settings/cloud/e;->Tw:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cloud/CloudJobService2;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/cloud/e;->Tx:Lcom/android/settings/cloud/CloudJobService2;

    invoke-static {v0, v2}, Lcom/android/settings/cloud/CloudJobService2;->a(Lcom/android/settings/cloud/CloudJobService2;Z)Z

    .line 156
    return-void
.end method
