.class public Lcom/android/settings/device/x;
.super Ljava/lang/Object;
.source "ParseRankDataUtils.java"


# direct methods
.method public static b(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "action"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "path"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static be(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/settings/device/q;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceRank"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "renqiList"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static bf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/settings/device/q;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "banner"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "action"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "path"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/settings/device/q;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "banner"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "img_url"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bh(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/settings/device/q;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceRank"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "selfRankText"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bi(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/settings/device/q;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "banner"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bj(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 64
    const-string v0, "0"

    invoke-static {p0}, Lcom/android/settings/device/q;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    invoke-static {v1, v2}, Lcom/android/settings/device/q;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rank"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/android/settings/device/q;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "desc"

    invoke-static {v0, v1}, Lcom/android/settings/device/q;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
