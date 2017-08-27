.class Lcom/android/settings/statistic/d;
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
    .line 99
    iput-object p1, p0, Lcom/android/settings/statistic/d;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/statistic/d;->vA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/statistic/d;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-static {v0}, Lcom/android/settings/display/FontFragment;->br(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
