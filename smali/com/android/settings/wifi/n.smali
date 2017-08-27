.class public Lcom/android/settings/wifi/n;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# instance fields
.field final synthetic aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;


# direct methods
.method protected constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 192
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 219
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 194
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0a0dcc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    const v2, 0x7f0a0dce

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02cb

    new-instance v2, Lcom/android/settings/wifi/o;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/o;-><init>(Lcom/android/settings/wifi/n;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0808

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/android/settings/wifi/p;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/p;-><init>(Lcom/android/settings/wifi/n;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 212
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 215
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->c(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    goto :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x102001a -> :sswitch_1
        0x7f130344 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f140008

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 182
    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->b(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V

    .line 226
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/n;->aBX:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->d(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/W;

    invoke-virtual {v0, p5}, Lcom/android/settings/wifi/W;->bL(Z)V

    .line 231
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method
