.class Lcom/android/settings/wifi/aj;
.super Ljava/lang/Object;
.source "WifiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic aDR:Lcom/android/settings/wifi/WifiConfigActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigActivity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/settings/wifi/aj;->aDR:Lcom/android/settings/wifi/WifiConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/aj;->aDR:Lcom/android/settings/wifi/WifiConfigActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigActivity;->finish()V

    .line 35
    return-void
.end method
