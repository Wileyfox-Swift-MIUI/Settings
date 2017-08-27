.class Lcom/android/settings/display/z;
.super Landroid/database/ContentObserver;
.source "PaperModeFragment.java"


# instance fields
.field final synthetic abm:Lcom/android/settings/display/PaperModeFragment;

.field final synthetic abn:Lcom/android/settings/display/PaperModePreference;

.field final synthetic abo:Lcom/android/settings/display/PaperModePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;Lcom/android/settings/display/PaperModePreference;Lcom/android/settings/display/PaperModePreference;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/display/z;->abm:Lcom/android/settings/display/PaperModeFragment;

    iput-object p3, p0, Lcom/android/settings/display/z;->abn:Lcom/android/settings/display/PaperModePreference;

    iput-object p4, p0, Lcom/android/settings/display/z;->abo:Lcom/android/settings/display/PaperModePreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 177
    iget-object v3, p0, Lcom/android/settings/display/z;->abn:Lcom/android/settings/display/PaperModePreference;

    iget-object v0, p0, Lcom/android/settings/display/z;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->e(Lcom/android/settings/display/PaperModeFragment;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings/display/PaperModePreference;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/display/z;->abo:Lcom/android/settings/display/PaperModePreference;

    iget-object v3, p0, Lcom/android/settings/display/z;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v3}, Lcom/android/settings/display/PaperModeFragment;->e(Lcom/android/settings/display/PaperModeFragment;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/display/PaperModePreference;->setChecked(Z)V

    .line 182
    return-void

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    :cond_1
    move v1, v2

    .line 179
    goto :goto_1
.end method
