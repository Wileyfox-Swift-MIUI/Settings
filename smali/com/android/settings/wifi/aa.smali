.class Lcom/android/settings/wifi/aa;
.super Landroid/content/BroadcastReceiver;
.source "TetherStatusController.java"


# instance fields
.field final synthetic aDt:Lcom/android/settings/wifi/Z;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/Z;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/settings/wifi/aa;->aDt:Lcom/android/settings/wifi/Z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->aDt:Lcom/android/settings/wifi/Z;

    invoke-virtual {v0}, Lcom/android/settings/wifi/Z;->as()V

    .line 21
    return-void
.end method
