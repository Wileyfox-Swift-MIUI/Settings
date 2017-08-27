.class public Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
.super Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateOverlayBridge.java"


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 69
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Hd:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->Hd:Landroid/content/pm/PackageInfo;

    .line 70
    iget v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Hg:I

    iput v0, p0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->Hg:I

    .line 71
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Hf:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->Hf:Z

    .line 72
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->He:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->He:Z

    .line 73
    return-void
.end method
