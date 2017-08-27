.class Lcom/android/settings/eT;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sy:Lcom/android/settings/eS;


# direct methods
.method constructor <init>(Lcom/android/settings/eS;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/eT;->sy:Lcom/android/settings/eS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 151
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 152
    new-instance v0, Lcom/android/settings/aL;

    iget-object v1, p0, Lcom/android/settings/eT;->sy:Lcom/android/settings/eS;

    iget-object v1, v1, Lcom/android/settings/eS;->sx:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/eT;->sy:Lcom/android/settings/eS;

    iget-object v2, v2, Lcom/android/settings/eS;->sx:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/aL;->b(ILjava/lang/CharSequence;)Z

    .line 155
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 156
    return-void
.end method
