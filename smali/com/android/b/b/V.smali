.class Lcom/android/b/b/V;
.super Lcom/android/b/b/X;
.source "LocalBluetoothProfileManager.java"


# instance fields
.field final synthetic aLG:Lcom/android/b/b/U;


# direct methods
.method constructor <init>(Lcom/android/b/b/U;Lcom/android/b/b/T;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/b/b/V;->aLG:Lcom/android/b/b/U;

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/android/b/b/X;-><init>(Lcom/android/b/b/U;Lcom/android/b/b/T;)V

    .line 275
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/b/b/V;->aLH:Lcom/android/b/b/T;

    check-cast v0, Lcom/android/b/b/ac;

    .line 280
    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 281
    invoke-virtual {v0, p3, v1}, Lcom/android/b/b/ac;->c(Landroid/bluetooth/BluetoothDevice;I)V

    .line 282
    invoke-super {p0, p1, p2, p3}, Lcom/android/b/b/X;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 283
    return-void
.end method
