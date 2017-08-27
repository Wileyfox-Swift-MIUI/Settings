.class Lcom/android/settings/az;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dS:Lcom/android/settings/ax;

.field final synthetic dT:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/settings/ax;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/settings/az;->dS:Lcom/android/settings/ax;

    iput-object p2, p0, Lcom/android/settings/az;->dT:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/settings/az;->dS:Lcom/android/settings/ax;

    invoke-virtual {v0}, Lcom/android/settings/ax;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    iget-object v1, p0, Lcom/android/settings/az;->dT:Landroid/os/Bundle;

    const-string v2, "unlockMethodToSet"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->a(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z

    .line 635
    return-void
.end method
