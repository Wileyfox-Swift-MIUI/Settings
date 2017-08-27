.class Lcom/android/settings/wifi/l;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

.field final synthetic aBY:Lcom/android/b/e/a;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/b/e/a;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wifi/l;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/l;->aBY:Lcom/android/b/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/l;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/l;->aBY:Lcom/android/b/e/a;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/b/e/a;)V

    .line 126
    return-void
.end method
