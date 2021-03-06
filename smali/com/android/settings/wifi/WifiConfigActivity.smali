.class public Lcom/android/settings/wifi/WifiConfigActivity;
.super Landroid/app/Activity;
.source "WifiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private aBo:Lcom/android/b/e/a;

.field private aDn:Lcom/android/settings/wifi/aq;

.field private jt:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aDn:Lcom/android/settings/wifi/aq;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aq;->zf()Lcom/android/settings/wifi/ak;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/android/settings/wifi/ak;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->jt:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->jt:Landroid/net/wifi/WifiManager;

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 29
    new-instance v1, Lcom/android/b/e/a;

    invoke-direct {v1, p0, v0}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aBo:Lcom/android/b/e/a;

    .line 30
    new-instance v0, Lcom/android/settings/wifi/aq;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aBo:Lcom/android/b/e/a;

    move-object v1, p0

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/aq;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aDn:Lcom/android/settings/wifi/aq;

    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aDn:Lcom/android/settings/wifi/aq;

    new-instance v1, Lcom/android/settings/wifi/aj;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/aj;-><init>(Lcom/android/settings/wifi/WifiConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/aq;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aDn:Lcom/android/settings/wifi/aq;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aq;->show()V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aDn:Lcom/android/settings/wifi/aq;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aDn:Lcom/android/settings/wifi/aq;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aq;->dismiss()V

    .line 65
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigActivity;->setVisible(Z)V

    .line 44
    return-void
.end method
