.class Lcom/android/settings/eH;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# instance fields
.field qo:I

.field final synthetic qq:Landroid/service/persistentdata/PersistentDataBlockManager;

.field sj:Lmiui/app/ProgressDialog;

.field final synthetic sk:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;Landroid/service/persistentdata/PersistentDataBlockManager;)V
    .locals 2

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/settings/eH;->sk:Lcom/android/settings/MiuiMasterClear;

    iput-object p2, p0, Lcom/android/settings/eH;->qq:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 375
    new-instance v0, Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/eH;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/eH;->sj:Lmiui/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 373
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/eH;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/eH;->qq:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 373
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/eH;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings/eH;->sj:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->hide()V

    .line 386
    iget-object v0, p0, Lcom/android/settings/eH;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/eH;->qo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/eH;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->a(Lcom/android/settings/MiuiMasterClear;)V

    .line 388
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings/eH;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/eH;->qo:I

    .line 395
    iget-object v0, p0, Lcom/android/settings/eH;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/eH;->sj:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/eH;->sj:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 398
    iget-object v0, p0, Lcom/android/settings/eH;->sj:Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/eH;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a04b5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/eH;->sj:Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/eH;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a04b6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/eH;->sj:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 403
    return-void
.end method
