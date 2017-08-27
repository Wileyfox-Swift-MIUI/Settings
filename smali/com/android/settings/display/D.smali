.class Lcom/android/settings/display/D;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeSetAppsFragment.java"


# instance fields
.field final synthetic abu:Lcom/android/settings/display/PaperModeSetAppsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeSetAppsFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/display/D;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/display/D;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->a(Lcom/android/settings/display/PaperModeSetAppsFragment;)V

    .line 142
    return-void
.end method
