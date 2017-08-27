.class public Lcom/android/settings/applications/AppStateUsageBridge$UsageState;
.super Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateUsageBridge.java"


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 60
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Hd:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->Hd:Landroid/content/pm/PackageInfo;

    .line 61
    iget v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Hg:I

    iput v0, p0, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->Hg:I

    .line 62
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Hf:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->Hf:Z

    .line 63
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->He:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->He:Z

    .line 64
    return-void
.end method
