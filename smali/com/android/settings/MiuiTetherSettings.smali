.class public Lcom/android/settings/MiuiTetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aY:Landroid/os/UserManager;

.field private bc:Z

.field private jt:Landroid/net/wifi/WifiManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private uM:Lcom/android/settings/wifi/ah;

.field private uN:Landroid/preference/CheckBoxPreference;

.field private uO:[Ljava/lang/String;

.field private uP:[Ljava/lang/String;

.field private uQ:Landroid/preference/Preference;

.field private uR:Landroid/preference/Preference;

.field private uS:Landroid/preference/PreferenceCategory;

.field private uT:Lmiui/preference/ValuePreference;

.field private uU:Lcom/android/settings/wifi/ag;

.field private uV:Landroid/net/wifi/WifiConfiguration;

.field private uW:I

.field private uX:[Ljava/lang/String;

.field private uY:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiTetherSettings;->uW:I

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->uY:Z

    .line 140
    new-instance v0, Lcom/android/settings/fA;

    invoke-direct {v0, p0}, Lcom/android/settings/fA;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private O(Z)V
    .locals 7

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fE;->O(Landroid/content/Context;)I

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uT:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0014

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uT:Lmiui/preference/ValuePreference;

    const v1, 0x7f0a0f84

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .locals 3

    .prologue
    .line 398
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1041

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fC;

    invoke-direct {v2, p0}, Lcom/android/settings/fC;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/fB;

    invoke-direct {v2, p0}, Lcom/android/settings/fB;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 419
    return-void
.end method

.method private a(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/wifi/V;->d(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 482
    if-nez v1, :cond_0

    .line 502
    :goto_0
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->uY:Z

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0401b5

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 487
    const v0, 0x7f130392

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 488
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 489
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0a0f71

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0f73

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fD;

    invoke-direct {v1, p0}, Lcom/android/settings/fD;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/MiuiTetherSettings;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->ab(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->O(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiTetherSettings;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uO:[Ljava/lang/String;

    return-object v0
.end method

.method private ab(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 423
    iput p1, p0, Lcom/android/settings/MiuiTetherSettings;->uW:I

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/g;->cW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uX:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->uX:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/MiuiTetherSettings;->uW:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/MiuiTetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gs()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/MiuiTetherSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uR:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiTetherSettings;Z)Z
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->uY:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/MiuiTetherSettings;)Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gq()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/android/settings/MiuiTetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uN:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private gq()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ag;->b(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uP:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 188
    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private gr()V
    .locals 8

    .prologue
    const v7, 0x7f0a0343

    const v4, 0x11070045

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 281
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    .line 282
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uP:[Ljava/lang/String;

    .line 285
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uQ:Landroid/preference/Preference;

    .line 287
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->uQ:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uP:[Ljava/lang/String;

    aget-object v0, v0, v5

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    :goto_1
    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->gt()V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ag;->b(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 305
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->uQ:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->uP:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private gs()V
    .locals 2

    .prologue
    .line 452
    iget v0, p0, Lcom/android/settings/MiuiTetherSettings;->uW:I

    packed-switch v0, :pswitch_data_0

    .line 460
    :goto_0
    return-void

    .line 454
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uM:Lcom/android/settings/wifi/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/ah;->bM(Z)V

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 198
    const/16 v0, 0x5a

    return v0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 565
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->gt()V

    .line 568
    :cond_0
    return-void
.end method

.method public aL()I
    .locals 1

    .prologue
    .line 545
    const v0, 0x7f0a098e

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-class v0, Lcom/android/settings/TetherSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gt()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 529
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 532
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 536
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ag;->b(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uQ:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0343

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->uP:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 541
    :cond_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 435
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 436
    if-nez p1, :cond_2

    .line 437
    if-ne p2, v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MiuiTetherSettings;->uW:I

    invoke-static {v0, v1}, Lcom/android/settings/TetherService;->h(Landroid/content/Context;I)V

    .line 439
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gs()V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iput v0, p0, Lcom/android/settings/MiuiTetherSettings;->uW:I

    goto :goto_0

    .line 445
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 446
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/MiuiTetherSettings;->a(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 505
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uU:Lcom/android/settings/wifi/ag;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ag;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    .line 507
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 515
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ag;->b(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 520
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uQ:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0343

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->uP:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    :cond_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 205
    if-eqz p1, :cond_0

    .line 206
    const-string v0, "TETHER_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiTetherSettings;->uW:I

    .line 207
    const-string v0, "is_dialog_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->uY:Z

    .line 208
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->uY:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "wifi_configuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    .line 210
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->a(Landroid/net/wifi/WifiConfiguration;)V

    .line 213
    :cond_0
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->addPreferencesFromResource(I)V

    .line 215
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->aY:Landroid/os/UserManager;

    .line 217
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->aY:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->bc:Z

    .line 220
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 267
    :goto_0
    return-void

    .line 224
    :cond_2
    const-string v0, "enable_wifi_ap"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uN:Landroid/preference/CheckBoxPreference;

    .line 226
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 227
    const-string v0, "tether_share_qrcode"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uR:Landroid/preference/Preference;

    .line 228
    const-string v0, "tether_device_management"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uS:Landroid/preference/PreferenceCategory;

    .line 229
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uS:Landroid/preference/PreferenceCategory;

    const-string v3, "show_connected_devices"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uT:Lmiui/preference/ValuePreference;

    .line 231
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 233
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uO:[Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uO:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 236
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 237
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/settings/iH;->iE()Z

    move-result v0

    if-nez v0, :cond_6

    .line 238
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gr()V

    .line 239
    new-instance v0, Lcom/android/settings/wifi/ah;

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->uN:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/ah;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uM:Lcom/android/settings/wifi/ah;

    .line 242
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gq()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uR:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->O(Z)V

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 250
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fE;->gv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080005

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uX:[Ljava/lang/String;

    goto/16 :goto_0

    .line 235
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 257
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uR:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uS:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 313
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 315
    new-instance v1, Lcom/android/settings/wifi/ag;

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/ag;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uU:Lcom/android/settings/wifi/ag;

    .line 316
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uU:Lcom/android/settings/wifi/ag;

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 354
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 355
    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 358
    const-string v0, "connectivity"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 359
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    .line 360
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    move v1, v2

    .line 361
    :goto_0
    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    .line 362
    invoke-direct {p0, v4, v0}, Lcom/android/settings/MiuiTetherSettings;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    .line 377
    :goto_1
    return v3

    :cond_0
    move v1, v3

    .line 360
    goto :goto_0

    .line 365
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiTetherSettings;->ab(I)V

    :goto_2
    move v3, v2

    .line 377
    goto :goto_1

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/g;->cW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/TetherService;->i(Landroid/content/Context;I)V

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uM:Lcom/android/settings/wifi/ah;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/ah;->bM(Z)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uQ:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 467
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 468
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "config"

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 471
    :cond_0
    const-class v0, Lcom/android/settings/wifi/EditTetherFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiTetherSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 477
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uR:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->a(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 271
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/MiuiTetherSettings;->uW:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    const-string v0, "is_dialog_shown"

    iget-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->uY:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->uY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "wifi_configuration"

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->uV:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 276
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 324
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 325
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->bc:Z

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 328
    if-eqz v0, :cond_0

    .line 329
    const v1, 0x7f0a0626

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uM:Lcom/android/settings/wifi/ah;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uM:Lcom/android/settings/wifi/ah;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ah;->resume()V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 343
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->bc:Z

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uM:Lcom/android/settings/wifi/ah;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uN:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->uM:Lcom/android/settings/wifi/ah;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ah;->pause()V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
