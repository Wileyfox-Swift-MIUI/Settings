.class Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;
.super Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrate.java"


# instance fields
.field final synthetic ZD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;->ZD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;->ZD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    const v1, 0x7f0a0460

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;->ZD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    iget-object v4, v4, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->Xu:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->c(I[Ljava/lang/String;)V

    .line 72
    return-void
.end method
