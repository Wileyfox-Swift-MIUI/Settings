.class Lcom/android/settings/ev;
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
    .line 46
    iput-object p1, p0, Lcom/android/settings/ev;->rp:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 48
    const-string v0, "MiuiFactoryResetBroadcastReceiver"

    const-string v1, "MiuiFactoryResetReceived canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/ev;->rp:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFactoryResetReceived;->finish()V

    .line 51
    return-void
.end method
