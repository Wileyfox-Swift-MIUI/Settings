.class Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$5;
.super Ljava/lang/Object;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Kl:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$5;->Kl:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$5;->Kl:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kS()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$5;->Kl:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kS()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;

    move-result-object v1

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V

    .line 939
    return-void
.end method
