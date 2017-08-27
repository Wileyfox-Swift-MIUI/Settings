.class Lcom/android/settings/display/B;
.super Landroid/database/ContentObserver;
.source "PaperModeFragment.java"


# instance fields
.field final synthetic abm:Lcom/android/settings/display/PaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/display/B;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/display/B;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->b(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->isInPaperModeTimeSchedule(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/display/B;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->b(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/display/H;->a(ZLandroid/content/Context;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/display/B;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->b(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/display/H;->a(ZLandroid/content/Context;)V

    goto :goto_0
.end method
