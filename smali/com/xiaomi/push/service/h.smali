.class public Lcom/xiaomi/push/service/h;
.super Ljava/lang/Object;
.source "GeoFenceUtils.java"


# direct methods
.method public static eh(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.metok"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    :goto_0
    if-eqz v0, :cond_0

    .line 28
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 29
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 33
    :goto_1
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static ei(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
