.class Lcom/android/settings/wifi/E;
.super Landroid/os/AsyncTask;
.source "MiuiWifiDetailFragment.java"


# instance fields
.field final synthetic aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/settings/wifi/E;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 359
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/E;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings/wifi/E;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/E;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    iget-object v1, p0, Lcom/android/settings/wifi/E;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    iget-object v1, v1, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v1}, Lcom/android/settings/wifi/openwifi/l;->yr()I

    move-result v1

    iput v1, v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCs:I

    .line 365
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 359
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/E;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/E;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->d(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    .line 371
    return-void
.end method
