.class Lcom/android/settings/wifi/p;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic aCa:Lcom/android/settings/wifi/n;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/n;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/wifi/p;->aCa:Lcom/android/settings/wifi/n;

    iput-object p2, p0, Lcom/android/settings/wifi/p;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/p;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 210
    return-void
.end method
