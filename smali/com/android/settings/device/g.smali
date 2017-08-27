.class final Lcom/android/settings/device/g;
.super Ljava/lang/Object;
.source "DeviceRankPresenter.java"

# interfaces
.implements Lcom/android/settings/device/o;


# instance fields
.field final synthetic Wq:Lcom/android/settings/device/j;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/device/j;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/device/g;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/device/g;->Wq:Lcom/android/settings/device/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aY(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {p1}, Lcom/android/settings/device/x;->bj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->pv()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/android/settings/device/g;->val$context:Landroid/content/Context;

    const-string v2, "key_store_internet_data"

    invoke-static {v1, v2, p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    iget-object v1, p0, Lcom/android/settings/device/g;->val$context:Landroid/content/Context;

    const-string v2, "key_store_date"

    invoke-static {v1, v2, v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    invoke-static {p1}, Lcom/android/settings/device/x;->bg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/e;->bb(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/device/g;->Wq:Lcom/android/settings/device/j;

    invoke-interface {v0}, Lcom/android/settings/device/j;->pk()V

    .line 218
    :cond_0
    return-void
.end method

.method public synthetic r(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/g;->aY(Ljava/lang/String;)V

    return-void
.end method
