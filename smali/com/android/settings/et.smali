.class Lcom/android/settings/et;
.super Lcom/android/settings/aj;
.source "MiuiDisplaySettings.java"


# instance fields
.field final synthetic qX:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/et;->qX:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/et;->qX:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->c(Lcom/android/settings/MiuiDisplaySettings;)Lmiui/preference/ValuePreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 163
    return-void
.end method
