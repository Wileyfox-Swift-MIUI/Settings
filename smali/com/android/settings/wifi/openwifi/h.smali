.class Lcom/android/settings/wifi/openwifi/h;
.super Landroid/content/BroadcastReceiver;
.source "FreeWifiLogin.java"


# instance fields
.field final synthetic aHt:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/h;->aHt:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/h;->aHt:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;Landroid/content/Context;Landroid/content/Intent;)V

    .line 256
    return-void
.end method
