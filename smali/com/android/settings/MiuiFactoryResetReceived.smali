.class public Lcom/android/settings/MiuiFactoryResetReceived;
.super Landroid/app/Activity;
.source "MiuiFactoryResetReceived.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private fo()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/MiuiFactoryResetReceived;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0947

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiFactoryResetReceived;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ew;

    invoke-direct {v3, p0}, Lcom/android/settings/ew;-><init>(Lcom/android/settings/MiuiFactoryResetReceived;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiFactoryResetReceived;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ev;

    invoke-direct {v3, p0}, Lcom/android/settings/ev;-><init>(Lcom/android/settings/MiuiFactoryResetReceived;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 55
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const-string v0, "MiuiFactoryResetBroadcastReceiver"

    const-string v1, "MiuiFactoryResetReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0}, Lcom/android/settings/MiuiFactoryResetReceived;->fo()V

    .line 29
    return-void
.end method
