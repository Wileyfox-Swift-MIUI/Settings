.class Lcom/android/settings/hD;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic AF:Lcom/android/settings/hC;


# direct methods
.method constructor <init>(Lcom/android/settings/hC;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings/hD;->AF:Lcom/android/settings/hC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/hD;->AF:Lcom/android/settings/hC;

    iget-object v0, v0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->i(Lcom/android/settings/SettingsFragment;)V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
