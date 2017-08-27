.class Lcom/android/settings/wifi/K;
.super Landroid/os/Handler;
.source "MiuiWifiService.java"


# instance fields
.field final synthetic aCO:Lcom/android/settings/wifi/MiuiWifiService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiWifiService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/wifi/K;->aCO:Lcom/android/settings/wifi/MiuiWifiService;

    .line 232
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/K;->aCO:Lcom/android/settings/wifi/MiuiWifiService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/MiuiWifiService;->a(Lcom/android/settings/wifi/MiuiWifiService;Ljava/util/List;)V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/openwifi/p;

    .line 244
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/p;->zQ()Z

    move-result v1

    .line 246
    if-nez v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/settings/wifi/K;->aCO:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/p;->zM()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/p;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/p;->getBssid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/p;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 257
    :cond_1
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/openwifi/l;

    .line 258
    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/settings/wifi/K;->aCO:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiService;->a(Lcom/android/settings/wifi/MiuiWifiService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/openwifi/l;->h(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 264
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/K;->aCO:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/l;->cR(Landroid/content/Context;)V

    goto :goto_0

    .line 268
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/K;->aCO:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiService;->b(Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/ao;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/ao;->h(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
