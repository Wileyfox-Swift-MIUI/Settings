.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method public ii()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finishAffinity()V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0a0469

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->Xu:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finish()V

    .line 64
    :goto_0
    return-void

    .line 32
    :cond_0
    const v0, 0x7f04016f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setContentView(I)V

    .line 36
    const v0, 0x7f0a0468

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->Xu:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->b(I[Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardReady;->bE(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardReady;->bE(I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 43
    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardReady;->aL(Z)V

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->Xu:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v5, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->c(I[Ljava/lang/String;)V

    .line 61
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a017e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 51
    :cond_2
    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardReady;->aL(Z)V

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->Xu:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v5, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->c(I[Ljava/lang/String;)V

    goto :goto_1
.end method
