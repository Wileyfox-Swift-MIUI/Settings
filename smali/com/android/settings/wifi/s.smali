.class Lcom/android/settings/wifi/s;
.super Ljava/lang/Object;
.source "MiuiTetherDeviceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

.field private aCm:Lcom/android/settings/wifi/q;

.field private gn:Z

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Lcom/android/settings/wifi/q;)V
    .locals 5

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings/wifi/s;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/android/settings/wifi/s;->aCm:Lcom/android/settings/wifi/q;

    .line 296
    invoke-virtual {p1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 299
    iget-object v0, p0, Lcom/android/settings/wifi/s;->aCm:Lcom/android/settings/wifi/q;

    invoke-virtual {v0}, Lcom/android/settings/wifi/q;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/s;->aCm:Lcom/android/settings/wifi/q;

    invoke-virtual {v0}, Lcom/android/settings/wifi/q;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    const v2, 0x7f0a0f7d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0f7c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/s;->mDialog:Landroid/app/AlertDialog;

    .line 309
    iget-object v0, p0, Lcom/android/settings/wifi/s;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 310
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/s;->aCm:Lcom/android/settings/wifi/q;

    invoke-virtual {v0}, Lcom/android/settings/wifi/q;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Lcom/android/settings/wifi/q;Lcom/android/settings/wifi/r;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/s;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Lcom/android/settings/wifi/q;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 319
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/s;->gn:Z

    .line 320
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/s;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Z)Z

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/wifi/s;->gn:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/s;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->c(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/s;->aCm:Lcom/android/settings/wifi/q;

    invoke-virtual {v1}, Lcom/android/settings/wifi/q;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/s;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/s;->aCm:Lcom/android/settings/wifi/q;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Lcom/android/settings/wifi/q;)V

    .line 334
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    iget-object v0, p0, Lcom/android/settings/wifi/s;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/s;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->c(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fE;->setHotSpotMacBlackSet(Landroid/content/Context;Ljava/util/Set;)V

    .line 336
    iput-boolean v2, p0, Lcom/android/settings/wifi/s;->gn:Z

    .line 338
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/s;->aCl:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Z)Z

    .line 314
    iget-object v0, p0, Lcom/android/settings/wifi/s;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 315
    return-void
.end method

.method public ya()Lcom/android/settings/wifi/q;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/s;->aCm:Lcom/android/settings/wifi/q;

    return-object v0
.end method
