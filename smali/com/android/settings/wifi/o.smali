.class Lcom/android/settings/wifi/o;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aCa:Lcom/android/settings/wifi/n;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/n;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/wifi/o;->aCa:Lcom/android/settings/wifi/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/o;->aCa:Lcom/android/settings/wifi/n;

    iget-object v0, v0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->b(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    .line 202
    return-void
.end method
