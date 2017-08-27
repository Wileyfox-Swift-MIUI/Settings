.class Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;
.super Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrateConfirm.java"


# instance fields
.field final synthetic ZE:Ljava/lang/String;

.field final synthetic ZF:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->ZF:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->ZE:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->ZF:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    const v1, 0x7f0a0464

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->ZE:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->c(I[Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->ZF:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->bC(I)V

    .line 75
    return-void
.end method
