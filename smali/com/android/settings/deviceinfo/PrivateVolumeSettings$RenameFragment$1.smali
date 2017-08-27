.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic XS:Ljava/lang/String;

.field final synthetic Ys:Landroid/os/storage/StorageManager;

.field final synthetic Yt:Landroid/widget/EditText;

.field final synthetic Yu:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Yu:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Ys:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->XS:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Yt:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Ys:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->XS:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Yt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/StorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    return-void
.end method
