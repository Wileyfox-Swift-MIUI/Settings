.class Lcom/android/settings/device/b;
.super Ljava/lang/Object;
.source "DeviceBasicInfoPresenter.java"

# interfaces
.implements Lcom/android/settings/device/z;


# instance fields
.field final synthetic Wh:Lcom/android/settings/device/d;

.field final synthetic Wi:Lcom/android/settings/device/a;


# direct methods
.method constructor <init>(Lcom/android/settings/device/a;Lcom/android/settings/device/d;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/device/b;->Wi:Lcom/android/settings/device/a;

    iput-object p2, p0, Lcom/android/settings/device/b;->Wh:Lcom/android/settings/device/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/settings/device/b;->Wi:Lcom/android/settings/device/a;

    invoke-static {v0}, Lcom/android/settings/device/a;->a(Lcom/android/settings/device/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/device/b;->Wh:Lcom/android/settings/device/d;

    aget-object v1, p1, v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/device/d;->e(ILjava/lang/String;)Lcom/android/settings/device/d;

    move-result-object v0

    aget-object v1, p1, v4

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/device/d;->f(ILjava/lang/String;)Lcom/android/settings/device/d;

    .line 55
    iget-object v0, p0, Lcom/android/settings/device/b;->Wh:Lcom/android/settings/device/d;

    invoke-virtual {v0}, Lcom/android/settings/device/d;->notifyDataSetChanged()V

    .line 57
    :cond_0
    return-void
.end method
