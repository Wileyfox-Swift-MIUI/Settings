.class public Lcom/android/settings/eL;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# instance fields
.field final synthetic sk:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/settings/eL;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 675
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 653
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/eL;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 696
    new-instance v1, Lcom/android/settings/eN;

    const/16 v0, 0x1388

    invoke-direct {v1, p0, v0}, Lcom/android/settings/eN;-><init>(Lcom/android/settings/eL;I)V

    .line 697
    new-instance v2, Lcom/android/settings/eM;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/eM;-><init>(Lcom/android/settings/eL;Lcom/android/settings/eN;)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/eL;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 699
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_1

    .line 702
    iget-object v4, p0, Lcom/android/settings/eL;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v4}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "package_delete_by_restore_phone"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 704
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 705
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 708
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v7}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 709
    invoke-virtual {v1}, Lcom/android/settings/eN;->fF()V

    goto :goto_0

    .line 712
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 653
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/eL;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/settings/eL;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->f(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/settings/eL;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->f(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/settings/eL;->sk:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->a(Lcom/android/settings/MiuiMasterClear;)V

    .line 721
    return-void
.end method
