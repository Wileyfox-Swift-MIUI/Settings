.class Lcom/android/settings/wifi/m;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field final synthetic aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

.field final synthetic aBZ:Lcom/android/b/e/a;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/b/e/a;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/wifi/m;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/m;->aBZ:Lcom/android/b/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .prologue
    .line 145
    const-string v0, "MiuiSavedAccessPointsWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted config failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/m;->aBZ:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/m;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    .line 142
    return-void
.end method
