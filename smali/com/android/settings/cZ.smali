.class Lcom/android/settings/cZ;
.super Ljava/lang/Object;
.source "EncryptionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic mZ:Lcom/android/settings/EncryptionSettings;

.field final synthetic na:Lcom/android/settings/cY;


# direct methods
.method constructor <init>(Lcom/android/settings/cY;Lcom/android/settings/EncryptionSettings;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/settings/cZ;->na:Lcom/android/settings/cY;

    iput-object p2, p0, Lcom/android/settings/cZ;->mZ:Lcom/android/settings/EncryptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cZ;->na:Lcom/android/settings/cY;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/cY;->a(Lcom/android/settings/cY;Z)Z

    .line 297
    monitor-exit p0

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
