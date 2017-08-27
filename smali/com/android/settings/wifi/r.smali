.class Lcom/android/settings/wifi/r;
.super Landroid/content/BroadcastReceiver;
.source "MiuiTetherDeviceSettings.java"


# instance fields
.field final synthetic aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/wifi/r;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/r;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/settings/wifi/r;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/r;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fE;->N(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Ljava/util/List;)Ljava/util/List;

    .line 73
    iget-object v1, p0, Lcom/android/settings/wifi/r;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/r;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->b(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V

    .line 76
    :cond_0
    return-void
.end method
