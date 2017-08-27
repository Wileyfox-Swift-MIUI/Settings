.class Lcom/android/settings/gw;
.super Landroid/database/ContentObserver;
.source "ProvisionObserverService.java"


# instance fields
.field final synthetic xd:Lcom/android/settings/gv;


# direct methods
.method constructor <init>(Lcom/android/settings/gv;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings/gw;->xd:Lcom/android/settings/gv;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/gw;->xd:Lcom/android/settings/gv;

    invoke-virtual {v0}, Lcom/android/settings/gv;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/settings/gw;->xd:Lcom/android/settings/gv;

    invoke-static {v0}, Lcom/android/settings/gv;->a(Lcom/android/settings/gv;)V

    .line 26
    :cond_0
    return-void
.end method
