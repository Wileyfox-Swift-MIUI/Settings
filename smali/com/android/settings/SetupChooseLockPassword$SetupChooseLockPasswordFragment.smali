.class public Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/c;


# instance fields
.field private AU:Lcom/android/setupwizardlib/SetupWizardLayout;

.field private AV:Lcom/android/setupwizardlib/view/NavigationBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f04014f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    iput-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->AU:Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 94
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->AU:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->qL()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->AV:Lcom/android/setupwizardlib/view/NavigationBar;

    .line 95
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->AV:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Lcom/android/setupwizardlib/view/c;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->AU:Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method public ih()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 127
    :cond_0
    return-void
.end method

.method public ii()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->aN()V

    .line 131
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->AU:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v1, 0x7f130312

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/a/a;->q(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hM;->a(Landroid/app/Activity;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->AU:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->m(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
