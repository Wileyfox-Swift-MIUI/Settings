.class Lcom/android/settings/wifi/w;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings/wifi/w;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/w;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0a02cb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0dd1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/wifi/x;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/x;-><init>(Lcom/android/settings/wifi/w;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/android/settings/wifi/y;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/y;-><init>(Lcom/android/settings/wifi/w;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 177
    return-void
.end method
