.class Lcom/android/settings/wifi/x;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aCA:Lcom/android/settings/wifi/w;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/w;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/wifi/x;->aCA:Lcom/android/settings/wifi/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/x;->aCA:Lcom/android/settings/wifi/w;

    iget-object v0, v0, Lcom/android/settings/wifi/w;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->h(Z)V

    .line 167
    return-void
.end method
