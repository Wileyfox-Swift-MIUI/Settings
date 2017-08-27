.class Lcom/android/settings/wifi/y;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic aCA:Lcom/android/settings/wifi/w;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/w;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/wifi/y;->aCA:Lcom/android/settings/wifi/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/y;->aCA:Lcom/android/settings/wifi/w;

    iget-object v0, v0, Lcom/android/settings/wifi/w;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->finish()V

    .line 175
    return-void
.end method
