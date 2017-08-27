.class Lcom/android/settings/ew;
.super Ljava/lang/Object;
.source "MiuiFactoryResetReceived.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rp:Lcom/android/settings/MiuiFactoryResetReceived;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFactoryResetReceived;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/ew;->rp:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 37
    const-string v0, "MiuiFactoryResetBroadcastReceiver"

    const-string v1, "MiuiFactoryResetReceived called RecoverySystem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-class v0, Landroid/os/RecoverySystem;

    const-string v1, "bootCommand"

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/ew;->rp:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-virtual {v4}, Lcom/android/settings/MiuiFactoryResetReceived;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--factory_test_reset\n--locale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v4, v3, v8

    invoke-static {v0, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/ew;->rp:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFactoryResetReceived;->finish()V

    .line 44
    return-void
.end method
