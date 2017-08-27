.class public Lcom/android/settings/MiuiSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field private static final tO:Ljava/util/HashMap;

.field private static final tY:Ljava/util/Map;

.field private static tZ:Ljava/util/HashSet;


# instance fields
.field private tP:[I

.field private tQ:[I

.field private tR:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private tS:Lmiui/widget/NavigationLayout;

.field private tT:Lcom/android/settings/SettingsFragment;

.field private tU:Ljava/lang/String;

.field private tV:Z

.field private tW:Lcom/android/settings/vpn2/VpnManager;

.field private tX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/android/settings/MiuiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/MiuiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiSettings;->tO:Ljava/util/HashMap;

    .line 179
    new-instance v0, Lcom/android/settings/MiuiSettings$2;

    invoke-direct {v0}, Lcom/android/settings/MiuiSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiSettings;->tY:Ljava/util/Map;

    .line 406
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    .line 408
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f130404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    const v1, 0x7f1303f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 125
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tP:[I

    .line 152
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tQ:[I

    .line 169
    const-string v0, "com.android.settings.MiuiDeviceInfoSettings"

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tU:Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->tV:Z

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiSettings;->tX:I

    .line 630
    return-void

    .line 125
    nop

    :array_0
    .array-data 4
        0x7f1303c9
        0x7f1303ca
        0x7f1303c6
        0x7f1303ce
        0x7f1303cf
        0x7f1303f8
        0x7f1303d1
        0x7f1303d4
        0x7f1303d3
        0x7f1303d5
        0x7f1303da
        0x7f130401
        0x7f1303db
        0x7f1303dc
        0x7f1303dd
        0x7f1303d7
        0x7f1303c1
        0x7f1303c2
        0x7f1303df
        0x7f1303e0
        0x7f1303be
        0x7f1303e1
        0x7f1303f2
    .end array-data

    .line 152
    :array_1
    .array-data 4
        0x7f1303f1
        0x7f1303eb
        0x7f1303cd
        0x7f1303f2
        0x7f1303ff
    .end array-data
.end method

.method private a(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1013
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 1014
    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    .line 1017
    if-lez v5, :cond_2

    .line 1018
    invoke-virtual {v4, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1020
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    move v3, v0

    .line 1025
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1026
    invoke-virtual {v4}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 1025
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1028
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_2
    return v1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 246
    const v0, 0x7f1302e1

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tS:Lmiui/widget/NavigationLayout;

    .line 247
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tS:Lmiui/widget/NavigationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Lcom/android/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/SettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lmiui/R$id;->navigation:I

    iget-object v2, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lmiui/R$id;->navigation:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsFragment;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    goto :goto_0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x1020002

    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Lcom/android/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/SettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsFragment;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    goto :goto_0
.end method

.method private gg()V
    .locals 4

    .prologue
    .line 218
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tU:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->gj()V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateHeaders()V

    goto :goto_0
.end method

.method private gj()V
    .locals 3

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1033
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    .line 1034
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1035
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1037
    :cond_0
    return-void
.end method

.method private l(Ljava/util/List;)V
    .locals 8

    .prologue
    .line 570
    const/4 v1, 0x0

    .line 571
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 572
    const v3, 0x7f130403

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v4

    if-ne v3, v4, :cond_0

    .line 573
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    .line 578
    :cond_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 581
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    const/16 v5, 0x80

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 584
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 585
    iget-boolean v4, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_3

    .line 591
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 592
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 593
    if-eqz v4, :cond_3

    const-string v5, "com.android.settings.category"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 596
    const-string v5, "com.android.settings.category"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 597
    sget-object v5, Lcom/android/settings/MiuiSettings;->tY:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 602
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 603
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 604
    sget-object v0, Lcom/android/settings/MiuiSettings;->tY:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 605
    invoke-static {p0, p1, v5}, Lcom/android/settings/iH;->a(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 608
    invoke-interface {p1, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 611
    :cond_4
    return-void
.end method


# virtual methods
.method protected c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    const-string v0, "select_header"

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->tU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tU:Ljava/lang/String;

    .line 236
    :cond_0
    const v0, 0x7f040149

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->setContentView(I)V

    .line 238
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 239
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->d(Landroid/os/Bundle;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->e(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public gh()Lcom/android/settings/accounts/AuthenticatorHelper;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tR:Lcom/android/settings/accounts/AuthenticatorHelper;

    return-object v0
.end method

.method public gi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tU:Ljava/lang/String;

    return-object v0
.end method

.method public gk()V
    .locals 2

    .prologue
    .line 1074
    const v0, 0x7f1302e1

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout;

    .line 1076
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->setNavigationEanbled(Z)V

    .line 1077
    return-void
.end method

.method public gl()V
    .locals 2

    .prologue
    .line 1080
    const v0, 0x7f1302e1

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout;

    .line 1082
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->setNavigationEanbled(Z)V

    .line 1083
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public k(Ljava/util/List;)V
    .locals 12

    .prologue
    const v11, 0x7f130408

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 429
    .line 431
    invoke-static {p0}, Lcom/android/b/a;->cT(Landroid/content/Context;)Z

    move-result v4

    .line 432
    invoke-static {p0}, Lcom/android/b/a;->cU(Landroid/content/Context;)Z

    move-result v5

    .line 433
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnManager;->wP()I

    move-result v6

    move v2, v3

    .line 434
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_29

    .line 436
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 438
    iget-wide v8, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v7, v8

    .line 439
    sget-object v1, Lcom/android/settings/MiuiSettings;->tZ:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 440
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 525
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->tQ:[I

    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 526
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 544
    :cond_1
    :goto_2
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_3

    const v1, 0x7f130407

    if-eq v7, v1, :cond_2

    if-eq v7, v11, :cond_2

    const v1, 0x7f1303f2

    if-ne v7, v1, :cond_3

    .line 545
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->be(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f1303be

    if-ne v7, v1, :cond_4

    .line 549
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 552
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->be(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x7f1303f0

    if-ne v7, v1, :cond_5

    .line 553
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 557
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2b

    .line 558
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_3
    move v2, v0

    .line 560
    goto :goto_0

    .line 441
    :cond_6
    const v1, 0x7f1303cd

    if-eq v7, v1, :cond_7

    const v1, 0x7f1303d9

    if-ne v7, v1, :cond_8

    .line 442
    :cond_7
    invoke-static {p0, p1, v0}, Lcom/android/settings/iH;->a(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 443
    :cond_8
    const v1, 0x7f1303ca

    if-ne v7, v1, :cond_9

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v8, "android.hardware.wifi"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 448
    :cond_9
    const v1, 0x7f1303c6

    if-ne v7, v1, :cond_a

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v8, "android.hardware.bluetooth"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 453
    :cond_a
    const v1, 0x7f1303eb

    if-ne v7, v1, :cond_c

    invoke-static {p0}, Lcom/android/settings/iH;->Z(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fE;->isMultiSimSupported()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 456
    :cond_b
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 457
    :cond_c
    const v1, 0x7f1303f1

    if-ne v7, v1, :cond_d

    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fE;->isMultiSimSupported()Z

    move-result v1

    if-nez v1, :cond_d

    .line 459
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 460
    :cond_d
    const v1, 0x7f1303d7

    if-ne v7, v1, :cond_f

    .line 461
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/settings/iH;->iE()Z

    move-result v1

    if-nez v1, :cond_e

    .line 466
    :cond_e
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 468
    :cond_f
    const v1, 0x7f1303ea

    if-ne v7, v1, :cond_10

    .line 469
    invoke-static {p0}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/payment/PaymentManager;->isMibiServiceDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 472
    :cond_10
    const v1, 0x7f1303fe

    if-ne v7, v1, :cond_12

    .line 473
    if-nez v4, :cond_11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    :cond_11
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 476
    :cond_12
    const v1, 0x7f1303fa

    if-ne v7, v1, :cond_13

    .line 477
    if-eqz v5, :cond_0

    .line 478
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 480
    :cond_13
    const v1, 0x7f1303cc

    if-ne v7, v1, :cond_14

    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_14

    .line 481
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 482
    :cond_14
    const v1, 0x7f130409

    if-ne v7, v1, :cond_15

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_15

    .line 483
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 484
    :cond_15
    const v1, 0x7f1303d0

    if-ne v7, v1, :cond_16

    .line 486
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 487
    :cond_16
    const v1, 0x7f1303fd

    if-ne v7, v1, :cond_17

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_17

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v1, v8, :cond_17

    .line 488
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 489
    :cond_17
    const v1, 0x7f1303df

    if-eq v7, v1, :cond_0

    .line 492
    const v1, 0x7f1303f5

    if-ne v7, v1, :cond_18

    .line 493
    invoke-static {}, Lcom/android/b/a;->zW()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 496
    :cond_18
    const v1, 0x7f1303ff

    if-ne v7, v1, :cond_19

    .line 497
    invoke-static {}, Lcom/android/b/a;->zW()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 500
    :cond_19
    const v1, 0x7f1303f6

    if-ne v7, v1, :cond_1b

    .line 501
    invoke-static {}, Lcom/android/b/a;->zW()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    :cond_1a
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 504
    :cond_1b
    const v1, 0x7f1303e5

    if-ne v7, v1, :cond_1d

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_1c

    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v1, :cond_1d

    .line 505
    :cond_1c
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 506
    :cond_1d
    const v1, 0x7f1303f7

    if-ne v7, v1, :cond_1e

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_1e

    .line 507
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 508
    :cond_1e
    const v1, 0x7f130400

    if-ne v7, v1, :cond_1f

    .line 509
    const-string v1, "support_edge_handgrip"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 512
    :cond_1f
    const v1, 0x7f1303f8

    if-ne v7, v1, :cond_21

    .line 513
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 514
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_20

    const v1, 0x7f0a0d16

    :goto_4
    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 515
    iget v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 514
    :cond_20
    const v1, 0x7f0a0367

    goto :goto_4

    .line 516
    :cond_21
    const v1, 0x7f1303f9

    if-ne v7, v1, :cond_22

    .line 517
    new-instance v1, Lcom/android/settings/dc;

    invoke-direct {v1, p0}, Lcom/android/settings/dc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings/dc;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    const v1, 0x7f0a1146

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 519
    iget v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 521
    :cond_22
    const v1, 0x7f1303fc

    if-ne v7, v1, :cond_0

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/android/b/a;->zW()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    :cond_23
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 527
    :cond_24
    const v1, 0x7f130406

    if-ne v7, v1, :cond_26

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/android/b/a;->zW()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 530
    :cond_25
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 531
    :cond_26
    if-ne v7, v11, :cond_27

    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_27

    .line 532
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v8, "enter_way"

    const-string v9, "00003"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 533
    :cond_27
    const v1, 0x7f1303f3

    if-ne v7, v1, :cond_28

    if-eq v6, v10, :cond_28

    .line 534
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 535
    :cond_28
    const v1, 0x7f1303f4

    if-ne v7, v1, :cond_1

    if-gt v6, v10, :cond_1

    .line 536
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 563
    :cond_29
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_2a

    .line 564
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->l(Ljava/util/List;)V

    .line 566
    :cond_2a
    return-void

    :cond_2b
    move v0, v2

    goto/16 :goto_3
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->tV:Z

    .line 942
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateHeaders()V

    .line 943
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 296
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->finish()V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 300
    sget v0, Lmiui/R$id;->content:I

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/settings/gh;

    if-eqz v2, :cond_1

    .line 302
    check-cast v0, Lcom/android/settings/gh;

    invoke-interface {v0}, Lcom/android/settings/gh;->al()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->finish()V

    goto :goto_0

    .line 312
    :cond_2
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/android/settings/MiuiSettings;->tV:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsFragment;->an()V

    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->tV:Z

    .line 955
    :cond_0
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 276
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    :cond_0
    const-string v1, "settings:ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_2

    .line 284
    const-class v1, Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    const-class v1, Lcom/android/settings/applications/ManageApplicationsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 291
    :cond_2
    :goto_0
    return-object v0

    .line 287
    :cond_3
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/iH;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 191
    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/MiuiSettings;->tR:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 192
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->am(Landroid/content/Context;)V

    .line 193
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v3, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings;->c(Landroid/os/Bundle;)V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->gg()V

    .line 200
    new-instance v0, Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    .line 201
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 206
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 207
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 959
    sget-object v0, Lcom/android/settings/MiuiSettings;->tO:Ljava/util/HashMap;

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 960
    if-eqz v0, :cond_0

    .line 961
    const-string v1, "entry_level_primary"

    invoke-static {v1, v0}, Lcom/android/settings/analytics/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_0
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tU:Ljava/lang/String;

    .line 964
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303ea

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 965
    invoke-static {p0}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/payment/PaymentManager;->gotoMiliCenter(Landroid/app/Activity;)V

    .line 1006
    :cond_1
    :goto_0
    return-void

    .line 966
    :cond_2
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303f5

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 967
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 968
    const-string v1, "com.miui.home"

    const-string v2, "com.miui.home.launcher.setting.WallpaperSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 970
    :cond_3
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303f6

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 971
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 972
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 974
    :cond_4
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303e9

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 975
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 976
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 978
    :cond_5
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 980
    :cond_6
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303e5

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 981
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 982
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme://zhuti.xiaomi.com/list?S.REQUEST_RESOURCE_CODE=fonts&miback=true&miref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 989
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 991
    :cond_7
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f130402

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_8

    .line 992
    const-string v4, "com.android.settings.accounts.AccountSettings"

    iget-object v5, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget v8, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    iget v9, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    move-object v3, p0

    move-object v6, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/MiuiSettings;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto/16 :goto_0

    .line 994
    :cond_8
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 995
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->a(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 998
    :cond_9
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget v8, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    iget v9, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    move-object v3, p0

    move-object v6, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/MiuiSettings;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto/16 :goto_0

    .line 1000
    :cond_a
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1001
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303f1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303eb

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 1002
    :cond_b
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    :cond_c
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 318
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 320
    sget v1, Lmiui/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/BaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 331
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 333
    sget v1, Lmiui/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/BaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/BaseFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings;->setIntent(Landroid/content/Intent;)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->tV:Z

    .line 214
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->gg()V

    .line 215
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 344
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->finish()V

    .line 346
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1093
    const-string v0, "select_header"

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->tU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->tU:Ljava/lang/String;

    .line 1094
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1095
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 615
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 617
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->tW:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnManager;->wP()I

    move-result v0

    .line 618
    iget v1, p0, Lcom/android/settings/MiuiSettings;->tX:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 619
    iput v0, p0, Lcom/android/settings/MiuiSettings;->tX:I

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget v1, p0, Lcom/android/settings/MiuiSettings;->tX:I

    if-eq v0, v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->tT:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsFragment;->an()V

    .line 622
    iput v0, p0, Lcom/android/settings/MiuiSettings;->tX:I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1087
    const-string v0, "select_header"

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->tU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1089
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 7

    .prologue
    .line 1042
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiSettings;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1043
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 3

    .prologue
    .line 1048
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 1049
    invoke-super/range {p0 .. p6}, Lmiui/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1071
    :goto_0
    return-void

    .line 1052
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1053
    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1054
    if-nez v0, :cond_3

    .line 1055
    if-lez p5, :cond_2

    .line 1056
    if-nez p2, :cond_1

    .line 1057
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1059
    :cond_1
    const-string v0, ":android:show_fragment_title"

    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1061
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1063
    :cond_3
    if-eqz p3, :cond_4

    .line 1064
    invoke-virtual {v0, p3, p4}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1067
    :cond_4
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1068
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1069
    sget v2, Lmiui/R$id;->content:I

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1070
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
