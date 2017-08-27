.class Lcom/android/settings/device/l;
.super Ljava/lang/Object;
.source "DeviceRankPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ws:Lcom/android/settings/device/k;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/device/k;I)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/device/l;->Ws:Lcom/android/settings/device/k;

    iput p2, p0, Lcom/android/settings/device/l;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 188
    const-string v0, "provision_about"

    const-string v1, "key_about_settings_rank_item"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/device/l;->Ws:Lcom/android/settings/device/k;

    invoke-static {v0}, Lcom/android/settings/device/k;->a(Lcom/android/settings/device/k;)Lorg/json/JSONArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/device/l;->val$position:I

    invoke-static {v0, v1}, Lcom/android/settings/device/x;->b(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lcom/android/settings/device/l;->Ws:Lcom/android/settings/device/k;

    invoke-static {v0}, Lcom/android/settings/device/k;->b(Lcom/android/settings/device/k;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void
.end method
