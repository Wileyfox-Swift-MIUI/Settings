.class Lcom/android/settings/eW;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic sF:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/eW;->sF:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/eW;->sF:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->h(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method
