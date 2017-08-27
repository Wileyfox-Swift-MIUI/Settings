.class public Lcom/android/settings/wifi/Z;
.super Lcom/android/settings/ai;
.source "TetherStatusController.java"


# instance fields
.field private RV:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ai;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 17
    new-instance v0, Lcom/android/settings/wifi/aa;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aa;-><init>(Lcom/android/settings/wifi/Z;)V

    iput-object v0, p0, Lcom/android/settings/wifi/Z;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/Z;->mIntentFilter:Landroid/content/IntentFilter;

    .line 27
    iget-object v0, p0, Lcom/android/settings/wifi/Z;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public as()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/Z;->cI:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/settings/wifi/Z;->cI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/Z;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/b/g;->cV(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a104f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 52
    :cond_0
    return-void

    .line 47
    :cond_1
    const v0, 0x7f0a1050

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/wifi/Z;->RV:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/Z;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/Z;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/Z;->RV:Z

    .line 42
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/Z;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/Z;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/Z;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/Z;->RV:Z

    .line 34
    return-void
.end method
