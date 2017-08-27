.class final Lcom/android/settings/device/h;
.super Ljava/lang/Object;
.source "DeviceRankPresenter.java"

# interfaces
.implements Lcom/android/settings/device/o;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    new-instance v0, Lcom/android/settings/device/i;

    invoke-direct {v0, p1}, Lcom/android/settings/device/i;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/settings/device/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    # invokes: Lcom/android/settings/device/e;->pj()V
    invoke-static {}, Lcom/android/settings/device/e;->access$300()V

    goto :goto_0
.end method

.method public synthetic r(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 224
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/h;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
