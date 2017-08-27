.class Lcom/android/settings/device/v;
.super Ljava/lang/Object;
.source "MiuiDeviceOtherDetailSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic WZ:Lcom/android/settings/device/u;


# direct methods
.method constructor <init>(Lcom/android/settings/device/u;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/device/v;->WZ:Lcom/android/settings/device/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/device/v;->WZ:Lcom/android/settings/device/u;

    invoke-virtual {v0}, Lcom/android/settings/device/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x7f130002
        :pswitch_0
    .end packed-switch
.end method
