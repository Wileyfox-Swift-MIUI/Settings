.class Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMigrateProgress.java"


# instance fields
.field final synthetic ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->a(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    .line 73
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    const-string v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/16 v1, -0x64

    if-ne p2, v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->Xu:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_1

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v0, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->Xu:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->startActivity(Landroid/content/Intent;)V

    .line 91
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->finishAffinity()V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    const v2, 0x7f0a059e

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->ZH:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->bB(I)V

    goto :goto_0
.end method
