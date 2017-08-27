.class Lcom/android/settings/deviceinfo/StorageWizardBase$2;
.super Landroid/os/storage/StorageEventListener;
.source "StorageWizardBase.java"


# instance fields
.field final synthetic Zp:Lcom/android/settings/deviceinfo/StorageWizardBase;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase$2;->Zp:Lcom/android/settings/deviceinfo/StorageWizardBase;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase$2;->Zp:Lcom/android/settings/deviceinfo/StorageWizardBase;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Xu:Landroid/os/storage/DiskInfo;

    iget-object v0, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase$2;->Zp:Lcom/android/settings/deviceinfo/StorageWizardBase;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->finish()V

    .line 227
    :cond_0
    return-void
.end method
