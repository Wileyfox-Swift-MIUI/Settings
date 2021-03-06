.class public Lcom/android/settings/wifi/WifiSetupActivity;
.super Lcom/android/settings/wifi/WifiPickerActivity;
.source "WifiSetupActivity.java"

# interfaces
.implements Lcom/android/settings/an;
.implements Lcom/android/setupwizardlib/view/c;


# instance fields
.field private AV:Lcom/android/setupwizardlib/view/NavigationBar;

.field private aFJ:Z

.field private aFK:Z

.field private aFL:Z

.field private aFM:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mV:Landroid/content/IntentFilter;

.field private mWifiConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerActivity;-><init>()V

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mV:Landroid/content/IntentFilter;

    .line 77
    new-instance v0, Lcom/android/settings/wifi/aC;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aC;-><init>(Lcom/android/settings/wifi/WifiSetupActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiSetupActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->zq()V

    return-void
.end method

.method private bS(Z)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->AV:Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->AV:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method private dM(I)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->AV:Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->AV:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 160
    :cond_0
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 236
    if-nez v0, :cond_0

    .line 240
    :goto_0
    return v1

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isWifiConnected()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 117
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 119
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    .line 120
    return v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zq()V
    .locals 4

    .prologue
    const v1, 0x7f0a0170

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFJ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFM:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "WifiSetupActivity"

    const-string v1, "Auto-finishing with connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->ck(I)V

    .line 130
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFM:Z

    .line 132
    :cond_0
    const v0, 0x7f0a0093

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->dM(I)V

    .line 133
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->bS(Z)V

    .line 148
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFL:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFK:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->dM(I)V

    .line 139
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->bS(Z)V

    goto :goto_0

    .line 145
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->dM(I)V

    .line 146
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->bS(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/setupwizardlib/view/NavigationBar;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->AV:Lcom/android/setupwizardlib/view/NavigationBar;

    .line 207
    invoke-virtual {p1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Lcom/android/setupwizardlib/view/c;)V

    .line 208
    invoke-static {p0}, Lcom/android/settings/hM;->a(Landroid/app/Activity;)V

    .line 209
    return-void
.end method

.method public ck(I)V
    .locals 3

    .prologue
    .line 200
    const-string v0, "WifiSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishing, resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSetupActivity;->setResult(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->finish()V

    .line 203
    return-void
.end method

.method public ih()V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->onBackPressed()V

    .line 214
    return-void
.end method

.method public ii()V
    .locals 3

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->ck(I)V

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a030f

    .line 225
    :goto_1
    invoke-static {v0}, Lcom/android/settings/wifi/aD;->dN(I)Lcom/android/settings/wifi/aD;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/aD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    const v0, 0x7f0a0310

    goto :goto_1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/android/settings/wifi/aA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hM;->m(Landroid/content/Intent;)I

    move-result v0

    .line 183
    invoke-super {p0, p1, v0, p3}, Lcom/android/settings/wifi/WifiPickerActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mV:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mV:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "wifi_auto_finish_on_connect"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFJ:Z

    .line 96
    const-string v2, "is_network_required"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFK:Z

    .line 97
    const-string v2, "is_wifi_required"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFL:Z

    .line 99
    const-string v2, "wifi_require_user_network_selection"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFM:Z

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onPause()V

    .line 178
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "userSelectedNetwork"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFM:Z

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onResume()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mV:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->zq()V

    .line 172
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "userSelectedNetwork"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFM:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method zh()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 193
    const-class v0, Lcom/android/settings/wifi/aA;

    return-object v0
.end method

.method zr()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "WifiSetupActivity"

    const-string v1, "Network selected by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->aFM:Z

    .line 165
    return-void
.end method
