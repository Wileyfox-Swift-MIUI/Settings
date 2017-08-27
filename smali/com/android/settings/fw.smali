.class Lcom/android/settings/fw;
.super Ljava/lang/Object;
.source "MiuiSmartCoverSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/fw;->uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 50
    iget-object v0, p0, Lcom/android/settings/fw;->uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/settings/fw;->uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    iget-object v1, p0, Lcom/android/settings/fw;->uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;ZI)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fw;->uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    .line 61
    return v3

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fw;->uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v0, v2, v3}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;ZI)V

    .line 56
    check-cast p1, Lcom/android/settings/fx;

    .line 57
    invoke-virtual {p1, v3}, Lcom/android/settings/fx;->setChecked(Z)V

    .line 58
    const-string v0, "persist.sys.smallwin_type"

    iget-object v1, p0, Lcom/android/settings/fw;->uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->c(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fw;->uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->b(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
