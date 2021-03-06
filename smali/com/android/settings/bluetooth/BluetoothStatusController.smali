.class public Lcom/android/settings/bluetooth/BluetoothStatusController;
.super Lcom/android/settings/ai;
.source "BluetoothStatusController.java"


# instance fields
.field private RV:Z

.field private final Rk:Lcom/android/b/b/Q;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ai;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 30
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothStatusController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothStatusController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothStatusController;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->ay(Landroid/content/Context;)Lcom/android/b/b/R;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->Rk:Lcom/android/b/b/Q;

    .line 49
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 50
    return-void

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/android/b/b/R;->AX()Lcom/android/b/b/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->Rk:Lcom/android/b/b/Q;

    goto :goto_0
.end method


# virtual methods
.method protected as()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->Rk:Lcom/android/b/b/Q;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->Rk:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->AV()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothStatusController;->bi(I)V

    goto :goto_0
.end method

.method bi(I)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->cI:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 81
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->cI:Landroid/widget/TextView;

    const v1, 0x7f0a1050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->cI:Landroid/widget/TextView;

    const v1, 0x7f0a104f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->Rk:Lcom/android/b/b/Q;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->RV:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->RV:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->Rk:Lcom/android/b/b/Q;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->Rk:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->AV()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothStatusController;->bi(I)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->RV:Z

    goto :goto_0
.end method
