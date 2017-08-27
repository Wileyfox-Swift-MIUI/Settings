.class public Lcom/android/settings/vpn2/MiuiVpnSettings;
.super Lcom/android/settings/vpn2/VpnSettings;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private ayA:Lcom/android/settings/vpn2/AppPreference;

.field private ayt:Z

.field private ayu:Lcom/android/settings/vpn2/ConfigPreference;

.field private ayv:Ljava/lang/String;

.field private ayw:Landroid/preference/CheckBoxPreference;

.field private ayx:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

.field private ayy:Z

.field private ayz:Z

.field private bc:Z

.field private dO:Lcom/android/internal/widget/LockPatternUtils;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mS:Z

.field private tE:Landroid/os/UserManager;

.field private tW:Lcom/android/settings/vpn2/VpnManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;-><init>()V

    .line 97
    new-instance v0, Lcom/android/settings/vpn2/MiuiVpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/MiuiVpnSettings$1;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    return-void
.end method

.method private a(Lcom/android/settings/vpn2/AppPreference;)V
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_0

    .line 311
    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->bp(Z)V

    return-void
.end method

.method private b(Lcom/android/settings/vpn2/AppPreference;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 694
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wN()V

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayy:Z

    .line 697
    iput-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayz:Z

    .line 699
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    .line 700
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/AppPreference;->setChecked(Z)V

    .line 703
    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mS:Z

    return p1
.end method

.method private bp(Z)V
    .locals 6

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->cy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/ConfigPreference;

    .line 250
    const/4 v2, 0x0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayC:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    :goto_0
    if-eqz p1, :cond_2

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/android/settings/vpn2/ConfigPreference;->wG()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 260
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    :cond_0
    :goto_1
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    const-string v3, "MiuiVpnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when updateVpnState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_0

    .line 264
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/vpn2/VpnManager;->a(Lcom/android/internal/net/VpnProfile;Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 265
    :catch_1
    move-exception v0

    .line 266
    const-string v1, "MiuiVpnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when connect vpn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    :cond_2
    if-eqz v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private bq(Z)V
    .locals 2

    .prologue
    .line 454
    const-string v0, "vpn_password_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 455
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 456
    if-nez p1, :cond_0

    .line 457
    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 458
    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 459
    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->bs(Z)V

    .line 461
    :cond_0
    return-void

    .line 457
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private br(Z)V
    .locals 1

    .prologue
    .line 464
    const-string v0, "vpn_password_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 465
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 466
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->bs(Z)V

    .line 467
    return-void
.end method

.method private bs(Z)V
    .locals 3

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vpn_password_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayt:Z

    return p1
.end method

.method static synthetic d(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->br(Z)V

    return-void
.end method

.method private do(I)V
    .locals 2

    .prologue
    .line 641
    packed-switch p1, :pswitch_data_0

    .line 648
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayw:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 650
    :goto_0
    return-void

    .line 645
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayw:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lcom/android/internal/net/VpnProfile;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 679
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wN()V

    .line 681
    iput-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayy:Z

    .line 682
    iput-boolean v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayz:Z

    .line 684
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/ConfigPreference;

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayu:Lcom/android/settings/vpn2/ConfigPreference;

    .line 685
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayu:Lcom/android/settings/vpn2/ConfigPreference;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayu:Lcom/android/settings/vpn2/ConfigPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/ConfigPreference;->setChecked(Z)V

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/vpn2/VpnUtils;->a(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 689
    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private wI()V
    .locals 5

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v2, v0, v1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayC:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_2

    .line 291
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    const-string v1, "MiuiVpnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when disconnect vpn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    instance-of v3, v0, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v3, :cond_1

    .line 299
    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    .line 300
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Lcom/android/settings/vpn2/AppPreference;)V

    goto :goto_2

    .line 304
    :cond_3
    return-void
.end method

.method private wJ()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 317
    new-instance v0, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 318
    invoke-virtual {v0}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 320
    :sswitch_0
    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a0518

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 328
    :sswitch_1
    const-class v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a0517

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private wK()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vpn_password_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    move v2, v0

    .line 450
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->br(Z)V

    .line 451
    return-void

    :cond_0
    move v2, v1

    .line 448
    goto :goto_0

    :cond_1
    move v0, v1

    .line 450
    goto :goto_1
.end method

.method private wM()V
    .locals 3

    .prologue
    .line 634
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 636
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_0
    return-void
.end method

.method private wN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 653
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayu:Lcom/android/settings/vpn2/ConfigPreference;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayu:Lcom/android/settings/vpn2/ConfigPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/ConfigPreference;->setChecked(Z)V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/AppPreference;->setChecked(Z)V

    .line 661
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayy:Z

    .line 662
    iput-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayz:Z

    .line 665
    iput-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayu:Lcom/android/settings/vpn2/ConfigPreference;

    .line 666
    iput-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    .line 667
    return-void
.end method

.method private wO()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 670
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayy:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayu:Lcom/android/settings/vpn2/ConfigPreference;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayu:Lcom/android/settings/vpn2/ConfigPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/ConfigPreference;->setChecked(Z)V

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/AppPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 397
    const/16 v0, 0x65

    if-ne p1, v0, :cond_4

    .line 398
    const-string v0, "profile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 399
    const-string v1, "profile_key"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    const-string v2, "profile_delete"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 401
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-static {v1, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    .line 406
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/ConfigPreference;

    .line 407
    if-eqz v2, :cond_2

    .line 408
    if-eqz v0, :cond_0

    .line 409
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {v2, v1}, Lcom/android/settings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 411
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->dF:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 413
    const-string v0, "MiuiVpnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete vpn config, key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->dF:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 419
    if-eqz v0, :cond_3

    .line 420
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    iget-object v2, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Lcom/android/settings/vpn2/ConfigPreference;->update()V

    .line 437
    :goto_1
    iget-object v0, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayv:Ljava/lang/String;

    goto :goto_0

    .line 423
    :cond_3
    new-instance v0, Lcom/android/settings/vpn2/ConfigPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayH:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 424
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    iget-object v2, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v1, Lcom/android/settings/vpn2/MiuiVpnSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn2/MiuiVpnSettings$2;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/ConfigPreference;->c(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 434
    const-string v0, "MiuiVpnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add vpn config, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 439
    :cond_4
    if-nez p1, :cond_0

    .line 440
    const-string v0, "miui_security_fragment_result"

    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wK()V

    goto/16 :goto_0
.end method

.method protected a(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 6

    .prologue
    .line 497
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 498
    const-string v0, "profile"

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 499
    const-string v0, "profile_key"

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, "profile_add"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 501
    const-class v0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 502
    return-void
.end method

.method protected d(Lcom/android/internal/net/VpnProfile;)V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Lcom/android/internal/net/VpnProfile;Z)V

    .line 494
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 560
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayq:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wM()V

    .line 566
    iput-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayv:Ljava/lang/String;

    .line 571
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayF:Lcom/android/internal/net/LegacyVpnInfo;

    .line 572
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayC:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 573
    if-eqz v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/ConfigPreference;

    .line 575
    if-eqz v0, :cond_0

    .line 576
    iget v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v0, v2}, Lcom/android/settings/vpn2/ConfigPreference;->setState(I)V

    .line 577
    iput-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayF:Lcom/android/internal/net/LegacyVpnInfo;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tE:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 583
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayC:Landroid/net/IConnectivityManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    .line 584
    if-eqz v2, :cond_1

    .line 585
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->l(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayE:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    .line 587
    if-eqz v0, :cond_1

    .line 588
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/settings/vpn2/AppPreference;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    const-string v1, "MiuiVpnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when handling message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wO()V

    .line 600
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnManager;->wR()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->do(I)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayq:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 382
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/vpn2/VpnSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 383
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 384
    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->bq(Z)V

    .line 393
    :cond_0
    :goto_1
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 386
    :cond_2
    if-nez p1, :cond_3

    .line 387
    if-ne p2, v1, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wK()V

    goto :goto_1

    .line 390
    :cond_3
    if-eqz p3, :cond_0

    .line 391
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tE:Landroid/os/UserManager;

    .line 110
    new-instance v0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayx:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    .line 111
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tE:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iput-boolean v5, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->bc:Z

    .line 113
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 114
    invoke-virtual {p0, v4}, Lcom/android/settings/vpn2/MiuiVpnSettings;->setHasOptionsMenu(Z)V

    .line 143
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/vpn2/MiuiVpnSettings;->setHasOptionsMenu(Z)V

    .line 119
    new-instance v0, Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    .line 121
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    .line 122
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 123
    new-instance v0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayx:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    .line 124
    const-string v0, "vpn_password_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vpn_password_enable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    :cond_1
    :goto_1
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    const-string v0, "vpn_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayw:Landroid/preference/CheckBoxPreference;

    .line 138
    const-string v0, "vpn_configure_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    const-string v1, "android.net.vpn.SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    invoke-direct {p0, v4}, Lcom/android/settings/vpn2/MiuiVpnSettings;->bs(Z)V

    .line 131
    if-nez v1, :cond_1

    .line 132
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    const-string v2, "default_password"

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 507
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_0
    const v0, 0x7f0a0900

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/settings/vpn2/VpnSettings;->onDestroy()V

    .line 211
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->bc:Z

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 479
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 482
    :goto_0
    iget-object v3, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 485
    :cond_0
    new-instance v3, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Lcom/android/internal/net/VpnProfile;Z)V

    move v0, v2

    .line 488
    :goto_1
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 613
    const-string v0, "vpn_password_enable"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    :cond_0
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 622
    instance-of v0, p1, Lcom/android/settings/vpn2/ConfigPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 623
    check-cast v0, Lcom/android/settings/vpn2/ConfigPreference;

    .line 624
    invoke-virtual {v0}, Lcom/android/settings/vpn2/ConfigPreference;->wG()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->e(Lcom/android/internal/net/VpnProfile;)Z

    .line 626
    :cond_0
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    .line 627
    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    .line 628
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->b(Lcom/android/settings/vpn2/AppPreference;)Z

    .line 630
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 219
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v1, "vpn_password_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayx:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->show(Z)V

    .line 244
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/vpn2/VpnSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wJ()V

    goto :goto_0

    .line 228
    :cond_2
    const-string v1, "vpn_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 229
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 230
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 231
    if-eqz v0, :cond_5

    .line 232
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayy:Z

    if-eqz v0, :cond_3

    .line 233
    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->bp(Z)V

    goto :goto_0

    .line 234
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayz:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayA:Lcom/android/settings/vpn2/AppPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Lcom/android/settings/vpn2/AppPreference;)V

    goto :goto_0

    .line 237
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0eba

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 240
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wI()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings/vpn2/VpnSettings;->onResume()V

    .line 158
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "saved_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 164
    :goto_1
    if-eqz v0, :cond_2

    .line 165
    const-string v1, "show_dialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mS:Z

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayx:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mS:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->show(Z)V

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->bc:Z

    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 172
    if-eqz v0, :cond_0

    .line 173
    const v1, 0x7f0a0625

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 163
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 177
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayt:Z

    if-eqz v0, :cond_5

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayt:Z

    .line 180
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->br(Z)V

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnManager;->wP()I

    move-result v0

    if-nez v0, :cond_8

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wL()V

    .line 192
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayv:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayv:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/ConfigPreference;

    .line 194
    if-eqz v0, :cond_7

    .line 195
    invoke-virtual {v0}, Lcom/android/settings/vpn2/ConfigPreference;->wG()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->e(Lcom/android/internal/net/VpnProfile;)Z

    .line 198
    :cond_7
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 185
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "vpn_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 192
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->cy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 202
    :cond_a
    const-string v0, "vpn_configure_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "show_dialog"

    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mS:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    const-string v1, "saved_bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method protected wL()V
    .locals 8

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    .line 518
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 520
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 521
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 523
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->dF:Landroid/security/KeyStore;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 524
    new-instance v3, Lcom/android/settings/vpn2/ConfigPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayH:Landroid/view/View$OnClickListener;

    invoke-direct {v3, v4, v5, v0}, Lcom/android/settings/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 526
    invoke-virtual {v3, p0}, Lcom/android/settings/vpn2/ConfigPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 527
    new-instance v4, Lcom/android/settings/vpn2/MiuiVpnSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/vpn2/MiuiVpnSettings$3;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/vpn2/ConfigPreference;->c(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayD:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v4, "MiuiVpnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show vpn config, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnManager;->wQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 541
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/vpn2/MiuiVpnSettings;->l(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 542
    new-instance v4, Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v0

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/android/settings/vpn2/AppPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 544
    invoke-virtual {v4, p0}, Lcom/android/settings/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayE:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 549
    :cond_1
    const-string v0, "vpn_configure_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->ayG:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 555
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->wN()V

    .line 556
    return-void
.end method
