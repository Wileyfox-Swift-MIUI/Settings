.class public Lcom/android/settings/display/PaperModeTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeTimeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isScreenPaperModeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/display/H;->bv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/android/settings/display/H;->bw(Landroid/content/Context;)V

    .line 26
    :cond_1
    :goto_0
    return-void

    .line 18
    :cond_2
    const-string v1, "miui.intent.action.PAPER_MODE_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/settings/display/H;->a(ZLandroid/content/Context;)V

    .line 20
    invoke-static {p1}, Lcom/android/settings/display/H;->bw(Landroid/content/Context;)V

    goto :goto_0

    .line 21
    :cond_3
    const-string v1, "miui.intent.action.PAPER_MODE_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/settings/display/H;->a(ZLandroid/content/Context;)V

    .line 23
    invoke-static {p1}, Lcom/android/settings/display/H;->bw(Landroid/content/Context;)V

    goto :goto_0
.end method
