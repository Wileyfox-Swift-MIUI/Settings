.class Lcom/android/settings/wifi/bi;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field final synthetic aGV:Lcom/android/settings/wifi/bh;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/bh;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/wifi/bi;->aGV:Lcom/android/settings/wifi/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/bi;->aGV:Lcom/android/settings/wifi/bh;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/bh;->a(Lcom/android/settings/wifi/bh;Landroid/nfc/Tag;)V

    .line 158
    return-void
.end method
