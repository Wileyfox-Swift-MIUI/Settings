.class Lcom/android/settings/wifi/bk;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aGV:Lcom/android/settings/wifi/bh;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/bh;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings/wifi/bk;->aGV:Lcom/android/settings/wifi/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/bk;->aGV:Lcom/android/settings/wifi/bh;

    invoke-static {v0}, Lcom/android/settings/wifi/bh;->b(Lcom/android/settings/wifi/bh;)V

    .line 240
    return-void
.end method
