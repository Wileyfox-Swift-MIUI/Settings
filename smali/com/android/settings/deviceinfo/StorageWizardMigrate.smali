.class public Lcom/android/settings/deviceinfo/StorageWizardMigrate;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrate.java"


# instance fields
.field private ZA:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

.field private ZB:Landroid/widget/RadioButton;

.field private ZC:Landroid/widget/RadioButton;

.field private final Zy:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->Zy:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZB:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZC:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public ii()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZB:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->Xu:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZA:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->v(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZC:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->Xu:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->Xu:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->finish()V

    .line 77
    :goto_0
    return-void

    .line 41
    :cond_0
    const v0, 0x7f040171

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setContentView(I)V

    .line 47
    const v0, 0x7f0a045f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->Xu:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->b(I[Ljava/lang/String;)V

    .line 48
    const v0, 0x7f0a0407

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->c(I[Ljava/lang/String;)V

    .line 51
    const v0, 0x7f130304

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZB:Landroid/widget/RadioButton;

    .line 52
    const v0, 0x7f130305

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZC:Landroid/widget/RadioButton;

    .line 54
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZB:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->Zy:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZC:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->Zy:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a09bb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZA:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    .line 75
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZA:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->u(Landroid/content/Intent;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->ZA:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
