.class Lcom/android/settings/wifi/M;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aDd:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/wifi/M;->aDd:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 253
    packed-switch v0, :pswitch_data_0

    .line 258
    const-string v0, "provision_wifi"

    const-string v1, "provision_wifi_next"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/M;->aDd:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/M;->aDd:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/M;->aDd:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->finish()V

    .line 266
    return-void

    .line 255
    :pswitch_0
    const-string v0, "provision_wifi"

    const-string v1, "provision_wifi_skip"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x7f130278
        :pswitch_0
    .end packed-switch
.end method
