.class Lcom/android/settings/fuelgauge/PowerModeSettings$2;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic ahm:Lcom/android/settings/fuelgauge/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$2;->ahm:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$2;->ahm:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->finish()V

    .line 68
    return-void
.end method
