.class public Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateConfirm.java"


# instance fields
.field private ZA:Lcom/android/settings/deviceinfo/MigrateEstimateTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method public ii()V
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v0

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v2, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f04016f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setContentView(I)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->Xq:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->bE(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->Xq:Landroid/os/storage/VolumeInfo;

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->Xq:Landroid/os/storage/VolumeInfo;

    if-nez v1, :cond_2

    .line 45
    :cond_1
    const-string v0, "StorageSettings"

    const-string v1, "Missing either source or target volume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finish()V

    .line 84
    :goto_0
    return-void

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->Xi:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->Xi:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const v2, 0x7f0a0463

    new-array v3, v5, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b(I[Ljava/lang/String;)V

    .line 59
    const v2, 0x7f0a0407

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->c(I[Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->bC(I)V

    .line 61
    const v2, 0x7f0a0467

    new-array v3, v5, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->d(I[Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->bD(I)V

    .line 65
    new-instance v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->ZA:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->ZA:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->u(Landroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->ZA:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0465

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
