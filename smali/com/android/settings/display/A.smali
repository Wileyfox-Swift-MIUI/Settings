.class Lcom/android/settings/display/A;
.super Landroid/database/ContentObserver;
.source "PaperModeFragment.java"


# instance fields
.field final synthetic abm:Lcom/android/settings/display/PaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/display/A;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/display/A;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->f(Lcom/android/settings/display/PaperModeFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/A;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->b(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->bu(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    return-void
.end method
