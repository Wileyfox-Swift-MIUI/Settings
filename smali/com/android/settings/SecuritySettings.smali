.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/k;


# static fields
.field public static final ix:Lcom/android/settings/search/l;

.field private static final mT:I

.field private static final zv:Landroid/content/Intent;

.field private static final zw:[Ljava/lang/String;


# instance fields
.field private dD:Lcom/android/settings/aL;

.field private dE:Landroid/app/admin/DevicePolicyManager;

.field private dF:Landroid/security/KeyStore;

.field private dO:Lcom/android/internal/widget/LockPatternUtils;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private sL:Landroid/preference/CheckBoxPreference;

.field private ta:Landroid/preference/CheckBoxPreference;

.field private wV:Z

.field private zA:Landroid/preference/CheckBoxPreference;

.field private zB:Landroid/preference/Preference;

.field private zC:Landroid/preference/CheckBoxPreference;

.field private zD:Landroid/content/DialogInterface;

.field private zE:Landroid/preference/Preference;

.field private zF:Landroid/content/Intent;

.field private zG:Landroid/preference/Preference;

.field private zx:Landroid/preference/ListPreference;

.field private zy:Landroid/preference/CheckBoxPreference;

.field private zz:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/SecuritySettings;->zv:Landroid/content/Intent;

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SecuritySettings;->zw:[Ljava/lang/String;

    .line 139
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->mT:I

    .line 935
    new-instance v0, Lcom/android/settings/hn;

    invoke-direct {v0}, Lcom/android/settings/hn;-><init>()V

    sput-object v0, Lcom/android/settings/SecuritySettings;->ix:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 938
    return-void
.end method

.method private V(Z)V
    .locals 3

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 644
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    sget v1, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    sget v0, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const v0, 0x7f080096

    .line 243
    :goto_0
    return v0

    .line 225
    :cond_0
    const v0, 0x7f080090

    goto :goto_0

    .line 228
    :cond_1
    sget v1, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 230
    :sswitch_0
    const v0, 0x7f080099

    .line 231
    goto :goto_0

    .line 234
    :sswitch_1
    const v0, 0x7f08009b

    .line 235
    goto :goto_0

    .line 239
    :sswitch_2
    const v0, 0x7f080098

    goto :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/android/settings/SecuritySettings;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->zD:Landroid/content/DialogInterface;

    return-object p1
.end method

.method private static a(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 607
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 608
    sget-object v1, Lcom/android/settings/SecuritySettings;->zv:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 610
    sget v1, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v6

    .line 612
    invoke-virtual {p2, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    move v2, v3

    .line 615
    :goto_0
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 616
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 617
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 618
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_2

    .line 616
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v2, v0

    .line 612
    goto :goto_0

    .line 619
    :cond_2
    invoke-static {v0, p0}, Lcom/android/settings/ig;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 620
    invoke-static {p0, v0}, Lcom/android/settings/ig;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/ih;

    move-result-object v7

    .line 622
    iget-object v8, v7, Lcom/android/settings/ih;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    invoke-static {v0}, Lcom/android/settings/ig;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/settings/ih;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 626
    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/android/settings/ig;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v9, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 628
    iput-boolean v3, v7, Lcom/android/settings/ih;->Cb:Z

    .line 630
    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_4
    return-object v4
.end method

.method private a(Landroid/preference/PreferenceGroup;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->dE:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0, v1, v4}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    .line 543
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 544
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ih;

    .line 545
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 547
    const-string v6, "trust_agent"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 548
    iget-object v6, v0, Lcom/android/settings/ih;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v6, v0, Lcom/android/settings/ih;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 552
    iget-object v7, v0, Lcom/android/settings/ih;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 553
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 556
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 558
    iget-boolean v0, v0, Lcom/android/settings/ih;->Cb:Z

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 560
    const v0, 0x7f0a0ada

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 543
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 561
    :cond_1
    if-nez v3, :cond_0

    .line 562
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 563
    const v0, 0x7f0a023d

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 566
    :cond_2
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private ec()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_security_encryption_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hD()Landroid/preference/PreferenceScreen;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 257
    :cond_0
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    .line 264
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hE()V

    .line 268
    sget v0, Lcom/android/settings/SecuritySettings;->mT:I

    if-nez v0, :cond_c

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->wV:Z

    .line 270
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->zG:Landroid/preference/Preference;

    .line 271
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zG:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zG:Landroid/preference/Preference;

    new-instance v1, Lcom/android/settings/hl;

    invoke-direct {v1, p0}, Lcom/android/settings/hl;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 298
    :cond_1
    const-string v0, "security_category"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 300
    if-eqz v0, :cond_2

    .line 303
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 307
    :cond_2
    const-string v0, "lock_after_timeout"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    .line 308
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 309
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hJ()V

    .line 310
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hK()V

    .line 314
    :cond_3
    const-string v0, "visiblepattern"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->sL:Landroid/preference/CheckBoxPreference;

    .line 317
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->ta:Landroid/preference/CheckBoxPreference;

    .line 319
    const-string v0, "trust_agent"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->ta:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->ta:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a053a

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    :cond_4
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 332
    const-string v0, "advanced_security"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 335
    const-string v1, "security_encryption_title"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    .line 337
    const-string v2, "encryption"

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 338
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->wV:Z

    if-eqz v2, :cond_f

    .line 339
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 340
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ec()Z

    move-result v2

    if-eqz v2, :cond_d

    const v2, 0x7f0a118e

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1, v4}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 342
    if-eqz v0, :cond_5

    .line 343
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    :cond_5
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 362
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 364
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->wV:Z

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/fE;->isMultiSimSupported()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 365
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v1

    const-string v2, "sim_lock"

    invoke-virtual {v1, v6, v2}, Lcom/android/settings/fE;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 378
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    .line 380
    const-string v1, "screen_pinning_settings"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0a8f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->wV:Z

    if-nez v1, :cond_7

    .line 385
    const-string v1, "sim_lock"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_7

    .line 387
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    :cond_7
    const-string v1, "show_password"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->zy:Landroid/preference/CheckBoxPreference;

    .line 393
    const-string v1, "credentials_reset"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->zB:Landroid/preference/Preference;

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 397
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->dF:Landroid/security/KeyStore;

    .line 398
    const-string v2, "no_config_credentials"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 399
    const-string v2, "credential_storage_type"

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 401
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->dF:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f0a07bc

    .line 404
    :goto_4
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 414
    :goto_5
    const-string v2, "device_admin_category"

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 416
    const-string v3, "toggle_install_applications"

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/SecuritySettings;->zC:Landroid/preference/CheckBoxPreference;

    .line 418
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->zC:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hH()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 421
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->zC:Landroid/preference/CheckBoxPreference;

    sget v3, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_15

    move v3, v4

    :goto_6
    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 422
    const-string v3, "no_install_unknown_sources"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "no_install_apps"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 424
    :cond_8
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->zC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 428
    :cond_9
    if-eqz v0, :cond_a

    .line 429
    const-string v1, "manage_trust_agents"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 431
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 432
    const v1, 0x7f0a023d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 436
    :cond_a
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 437
    const-string v0, "user_experience_program"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->zz:Landroid/preference/CheckBoxPreference;

    .line 438
    const-string v0, "upload_debug_log"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->zA:Landroid/preference/CheckBoxPreference;

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/e;->cp(Landroid/content/Context;)Lcom/android/settings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/settings/search/e;->b(Ljava/lang/String;ZZ)V

    move v0, v5

    .line 447
    :goto_7
    sget-object v1, Lcom/android/settings/SecuritySettings;->zw:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 448
    sget-object v1, Lcom/android/settings/SecuritySettings;->zw:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_b

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 447
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    move v0, v5

    .line 268
    goto/16 :goto_0

    .line 340
    :cond_d
    const-string v2, ""

    goto/16 :goto_1

    .line 346
    :cond_e
    if-eqz v0, :cond_5

    .line 347
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 351
    :cond_f
    if-eqz v0, :cond_5

    .line 352
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 368
    :cond_10
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->wV:Z

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hF()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/e/a;->isDcOnlyVirtualSim(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "hide_sim_lock_settings_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 373
    :cond_11
    const-string v1, "sim_lock"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 376
    :cond_12
    const-string v1, "sim_lock"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hG()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 401
    :cond_13
    const v2, 0x7f0a07bd

    goto/16 :goto_4

    .line 406
    :cond_14
    const-string v2, "credentials_management"

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 408
    const-string v3, "credentials_reset"

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 409
    const-string v3, "credentials_install"

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    const-string v3, "credential_storage_type"

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_15
    move v3, v5

    .line 421
    goto/16 :goto_6

    .line 453
    :cond_16
    const-string v0, "manage_notification_access"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->zE:Landroid/preference/Preference;

    .line 454
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zE:Landroid/preference/Preference;

    if-eqz v0, :cond_17

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAccessSettings;->e(Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 456
    if-nez v0, :cond_18

    .line 457
    if-eqz v2, :cond_17

    .line 458
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zE:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 473
    :cond_17
    :goto_8
    return-object v6

    .line 462
    :cond_18
    if-nez v0, :cond_19

    .line 463
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zE:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0a41

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 466
    :cond_19
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->zE:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000b

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private hE()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 486
    const-string v1, "ad_control_settings"

    .line 487
    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 488
    if-eqz v2, :cond_1

    .line 490
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.miui.systemAdSolution"

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 495
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 496
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "SupportPersonalizedAd"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 502
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 503
    const-string v0, "security_settings_access_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 504
    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 509
    :cond_1
    return-void

    .line 498
    :catch_0
    move-exception v1

    .line 499
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hF()Z
    .locals 3

    .prologue
    .line 571
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 572
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_1

    .line 576
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 577
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hG()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 590
    .line 591
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_1

    .line 594
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 595
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 596
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    move v0, v1

    .line 602
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hH()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hI()V
    .locals 3

    .prologue
    .line 661
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0496

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/internal/R$drawable;->ic_dialog_alert:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/hm;

    invoke-direct {v1, p0}, Lcom/android/settings/hm;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->zD:Landroid/content/DialogInterface;

    .line 676
    return-void
.end method

.method private hJ()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 701
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 703
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dE:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dE:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 704
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    .line 706
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    .line 710
    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->k(J)V

    .line 712
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    .line 703
    goto :goto_0
.end method

.method private hK()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 716
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 718
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 719
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 721
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 722
    aget-object v7, v6, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 723
    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    move v2, v0

    .line 721
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "trust_agent"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 729
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 730
    aget-object v4, v6, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 731
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    const v3, 0x7f0a01ac

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 740
    :goto_1
    return-void

    .line 734
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    const v5, 0x7f0a01ad

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v2, v3, v2

    aput-object v2, v6, v1

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    const v4, 0x7f0a01ab

    new-array v5, v10, [Ljava/lang/Object;

    aget-object v2, v3, v2

    aput-object v2, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic hM()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/android/settings/SecuritySettings;->mT:I

    return v0
.end method

.method private k(J)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 744
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 745
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 746
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 747
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 748
    aget-object v6, v3, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 749
    cmp-long v6, v6, p1

    if-gtz v6, :cond_0

    .line 750
    aget-object v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 754
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v2

    if-ne v0, v2, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v3

    if-eq v0, v2, :cond_3

    .line 755
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 757
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 759
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 760
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gtz v2, :cond_3

    .line 761
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 768
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zx:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 769
    return-void
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x57

    return v0
.end method

.method protected aL()I
    .locals 1

    .prologue
    .line 929
    const v0, 0x7f0a0992

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hL()V
    .locals 3

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zG:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->zG:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 831
    :cond_0
    return-void

    .line 827
    :cond_1
    const v0, 0x7f0a01b2

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 881
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 882
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hD()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zD:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    .line 681
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 682
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->V(Z)V

    .line 683
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->zC:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->zC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 687
    :cond_0
    return-void

    .line 681
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 198
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    .line 200
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->dE:Landroid/app/admin/DevicePolicyManager;

    .line 202
    new-instance v0, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->dD:Lcom/android/settings/aL;

    .line 204
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    .line 209
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "show__install_application_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "show__install_application_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hI()V

    .line 216
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 691
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 692
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zD:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zD:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 695
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 894
    .line 895
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 896
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->dD:Lcom/android/settings/aL;

    invoke-virtual {v3}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 897
    const-string v4, "lock_after_timeout"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 898
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 900
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hK()V

    .line 924
    :cond_0
    :goto_1
    return v1

    .line 902
    :catch_0
    move-exception v0

    .line 903
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 906
    :cond_1
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 907
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v2, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_1

    .line 908
    :cond_2
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 909
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_1

    .line 910
    :cond_3
    const-string v4, "show_password"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 913
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v2, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 911
    goto :goto_2

    .line 914
    :cond_5
    const-string v3, "toggle_install_applications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 916
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 917
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hI()V

    move v1, v2

    .line 919
    goto :goto_1

    .line 921
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings;->V(Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 835
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 836
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    const-string v0, "com.android.settings.MiuiSecuritySettings"

    const/16 v1, 0x7b

    invoke-virtual {p0, p0, v0, v1, v3}, Lcom/android/settings/SecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 872
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 841
    :cond_1
    const-string v1, "trust_agent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 842
    new-instance v0, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 844
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    .line 845
    const/16 v1, 0x7e

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/aL;->b(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 847
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 850
    iput-object v3, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    goto :goto_0

    .line 859
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->zz:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 860
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$Secure;->enableUserExperienceProgram(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 862
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->zA:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 863
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 864
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$Secure;->enableUploadDebugLog(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 865
    :cond_4
    const-string v1, "lock_screen_unlock_show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 866
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 867
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_lock_before_unlock"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 786
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 790
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hD()Landroid/preference/PreferenceScreen;

    .line 792
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dD:Lcom/android/settings/aL;

    invoke-virtual {v0}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 793
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->sL:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 794
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->sL:Landroid/preference/CheckBoxPreference;

    sget v4, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 797
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->ta:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 798
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->ta:Landroid/preference/CheckBoxPreference;

    sget v4, Lcom/android/settings/SecuritySettings;->mT:I

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zy:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 803
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->zy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zz:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isUserExperienceProgramEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 809
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->zz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zA:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isUploadDebugLogEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 814
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->zA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 818
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zB:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 819
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zB:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->dF:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 822
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->hL()V

    .line 823
    return-void

    :cond_6
    move v0, v2

    .line 803
    goto :goto_0

    :cond_7
    move v1, v2

    .line 819
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 773
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 774
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 775
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->zF:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->zD:Landroid/content/DialogInterface;

    if-eqz v0, :cond_1

    .line 779
    const-string v0, "show__install_application_dialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 782
    :cond_1
    return-void
.end method
