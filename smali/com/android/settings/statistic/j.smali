.class Lcom/android/settings/statistic/j;
.super Ljava/lang/Object;
.source "SettingsCollectorService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic atP:Lcom/android/settings/statistic/SettingsCollectorService;


# direct methods
.method constructor <init>(Lcom/android/settings/statistic/SettingsCollectorService;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/statistic/j;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/settings/statistic/j;->vA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/statistic/j;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/settings/statistic/SettingsCollectorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
