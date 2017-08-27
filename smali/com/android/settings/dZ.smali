.class Lcom/android/settings/dZ;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# instance fields
.field qo:I

.field qp:Landroid/app/ProgressDialog;

.field final synthetic qq:Landroid/service/persistentdata/PersistentDataBlockManager;

.field final synthetic qr:Lcom/android/settings/dY;


# direct methods
.method constructor <init>(Lcom/android/settings/dY;Landroid/service/persistentdata/PersistentDataBlockManager;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/dZ;->qr:Lcom/android/settings/dY;

    iput-object p2, p0, Lcom/android/settings/dZ;->qq:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dZ;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/dZ;->qq:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dZ;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/dZ;->qp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/dZ;->qr:Lcom/android/settings/dY;

    iget-object v0, v0, Lcom/android/settings/dY;->qn:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/dZ;->qo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/dZ;->qr:Lcom/android/settings/dY;

    iget-object v0, v0, Lcom/android/settings/dY;->qn:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->a(Lcom/android/settings/MasterClearConfirm;)V

    .line 88
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/dZ;->qr:Lcom/android/settings/dY;

    invoke-static {v0}, Lcom/android/settings/dY;->a(Lcom/android/settings/dY;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dZ;->qp:Landroid/app/ProgressDialog;

    .line 93
    iget-object v0, p0, Lcom/android/settings/dZ;->qp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/dZ;->qr:Lcom/android/settings/dY;

    iget-object v0, v0, Lcom/android/settings/dY;->qn:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dZ;->qo:I

    .line 98
    iget-object v0, p0, Lcom/android/settings/dZ;->qr:Lcom/android/settings/dY;

    iget-object v0, v0, Lcom/android/settings/dY;->qn:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 99
    return-void
.end method
