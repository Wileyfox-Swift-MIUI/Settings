.class public Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
.super Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateWriteSettingsBridge.java"


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 72
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Hd:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->Hd:Landroid/content/pm/PackageInfo;

    .line 73
    iget v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Hg:I

    iput v0, p0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->Hg:I

    .line 74
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Hf:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->Hf:Z

    .line 75
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->He:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->He:Z

    .line 76
    return-void
.end method
