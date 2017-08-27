.class Lcom/android/settings/wifi/k;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/k;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/wifi/W;Lcom/android/settings/wifi/W;)I
    .locals 3

    .prologue
    .line 95
    instance-of v0, p1, Lcom/android/settings/wifi/W;

    if-nez v0, :cond_1

    .line 96
    const/4 v0, 0x1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    instance-of v0, p2, Lcom/android/settings/wifi/W;

    if-nez v0, :cond_2

    .line 99
    const/4 v0, -0x1

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/wifi/W;->xH()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v1, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 102
    invoke-virtual {p2}, Lcom/android/settings/wifi/W;->xH()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v2, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 105
    if-nez v0, :cond_0

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 92
    check-cast p1, Lcom/android/settings/wifi/W;

    check-cast p2, Lcom/android/settings/wifi/W;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/k;->a(Lcom/android/settings/wifi/W;Lcom/android/settings/wifi/W;)I

    move-result v0

    return v0
.end method
