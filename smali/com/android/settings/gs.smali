.class public Lcom/android/settings/gs;
.super Landroid/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private wW:Lcom/android/settings/dashboard/DashboardTile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/android/settings/gs;

    invoke-direct {v0}, Lcom/android/settings/gs;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v2, "selectedTile"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/settings/gs;->setArguments(Landroid/os/Bundle;)V

    .line 42
    const-string v1, "select_profile"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/gs;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/gs;->wW:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->VK:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/gs;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/gs;->wW:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/gs;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selectedTile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    iput-object v0, p0, Lcom/android/settings/gs;->wW:Lcom/android/settings/dashboard/DashboardTile;

    .line 49
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/gs;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/gs;->wW:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v3, v3, Lcom/android/settings/dashboard/DashboardTile;->VK:Ljava/util/ArrayList;

    invoke-static {v2, v0, v3}, Lcom/android/settings/iH;->a(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/iD;

    move-result-object v0

    .line 57
    const v2, 0x7f0a0ade

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
