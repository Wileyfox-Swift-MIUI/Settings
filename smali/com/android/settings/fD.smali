.class Lcom/android/settings/fD;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic uZ:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/settings/fD;->uZ:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/settings/fD;->uZ:Lcom/android/settings/MiuiTetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiTetherSettings;->b(Lcom/android/settings/MiuiTetherSettings;Z)Z

    .line 498
    return-void
.end method
