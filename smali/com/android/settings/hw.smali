.class Lcom/android/settings/hw;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ap:Lcom/android/settings/hs;


# direct methods
.method constructor <init>(Lcom/android/settings/hs;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/settings/hw;->Ap:Lcom/android/settings/hs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings/hw;->Ap:Lcom/android/settings/hs;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/hw;->Ap:Lcom/android/settings/hs;

    invoke-virtual {v2}, Lcom/android/settings/hs;->hV()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/hs;->setResult(ILandroid/content/Intent;)V

    .line 737
    iget-object v0, p0, Lcom/android/settings/hw;->Ap:Lcom/android/settings/hs;

    invoke-virtual {v0}, Lcom/android/settings/hs;->finish()V

    .line 738
    return-void
.end method
