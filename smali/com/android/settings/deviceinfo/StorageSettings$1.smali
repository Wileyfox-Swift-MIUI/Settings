.class Lcom/android/settings/deviceinfo/StorageSettings$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageSettings.java"


# instance fields
.field final synthetic Ze:Lcom/android/settings/deviceinfo/StorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$1;->Ze:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 1

    .prologue
    .line 121
    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageSettings;->c(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$1;->Ze:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageSettings;->a(Lcom/android/settings/deviceinfo/StorageSettings;)V

    .line 124
    :cond_0
    return-void
.end method
