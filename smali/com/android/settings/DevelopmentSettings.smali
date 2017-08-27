.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/k;


# static fields
.field public static final ix:Lcom/android/settings/search/l;

.field private static jo:Ljava/lang/String;

.field private static final jp:[I


# instance fields
.field private aY:Landroid/os/UserManager;

.field private bc:Z

.field private dD:Lcom/android/settings/aL;

.field private dO:Lcom/android/internal/widget/LockPatternUtils;

.field private jA:Landroid/preference/CheckBoxPreference;

.field private jB:Landroid/preference/Preference;

.field private jC:Landroid/preference/CheckBoxPreference;

.field private jD:Landroid/preference/CheckBoxPreference;

.field private jE:Landroid/preference/CheckBoxPreference;

.field private jF:Landroid/preference/CheckBoxPreference;

.field private jG:Landroid/preference/CheckBoxPreference;

.field private jH:Z

.field private jI:Landroid/preference/CheckBoxPreference;

.field private jJ:Landroid/preference/ListPreference;

.field private jK:Landroid/preference/PreferenceScreen;

.field private jL:Ljava/lang/String;

.field private jM:Landroid/preference/Preference;

.field private jN:Ljava/lang/String;

.field private jO:Landroid/preference/Preference;

.field private jP:Landroid/preference/CheckBoxPreference;

.field private jQ:Landroid/preference/CheckBoxPreference;

.field private jR:Landroid/preference/CheckBoxPreference;

.field private jS:Landroid/preference/CheckBoxPreference;

.field private jT:Landroid/preference/CheckBoxPreference;

.field private jU:Landroid/preference/CheckBoxPreference;

.field private jV:Landroid/preference/CheckBoxPreference;

.field private jW:Landroid/preference/CheckBoxPreference;

.field private jX:Landroid/preference/CheckBoxPreference;

.field private jY:Landroid/preference/CheckBoxPreference;

.field private jZ:Landroid/preference/CheckBoxPreference;

.field private jq:Landroid/view/IWindowManager;

.field private jr:Landroid/app/backup/IBackupManager;

.field private js:Landroid/app/admin/DevicePolicyManager;

.field private jt:Landroid/net/wifi/WifiManager;

.field private ju:Landroid/preference/CheckBoxPreference;

.field private jv:Z

.field private jw:Z

.field private jx:Z

.field private jy:Landroid/preference/CheckBoxPreference;

.field private jz:Landroid/preference/Preference;

.field private final kA:Ljava/util/ArrayList;

.field private final kB:Ljava/util/ArrayList;

.field private kC:Landroid/preference/CheckBoxPreference;

.field private kD:Landroid/preference/CheckBoxPreference;

.field private kE:Landroid/preference/CheckBoxPreference;

.field private kF:Landroid/preference/CheckBoxPreference;

.field private kG:Landroid/preference/CheckBoxPreference;

.field private kH:Landroid/preference/CheckBoxPreference;

.field private kI:Landroid/preference/CheckBoxPreference;

.field private kJ:Landroid/preference/ListPreference;

.field private kK:Landroid/preference/CheckBoxPreference;

.field private final kL:Ljava/util/HashSet;

.field private kM:Z

.field private kN:Landroid/app/Dialog;

.field private kO:Landroid/app/Dialog;

.field private kP:Landroid/app/Dialog;

.field private kQ:Landroid/content/BroadcastReceiver;

.field private ka:Landroid/preference/CheckBoxPreference;

.field private kb:Landroid/preference/CheckBoxPreference;

.field private kc:Landroid/preference/CheckBoxPreference;

.field private kd:Landroid/preference/CheckBoxPreference;

.field private ke:Landroid/preference/CheckBoxPreference;

.field private kf:Landroid/preference/CheckBoxPreference;

.field private kg:Landroid/preference/CheckBoxPreference;

.field private kh:Landroid/preference/CheckBoxPreference;

.field private ki:Landroid/preference/CheckBoxPreference;

.field private kj:Landroid/preference/CheckBoxPreference;

.field private kk:Landroid/preference/ListPreference;

.field private kl:Landroid/preference/ListPreference;

.field private km:Landroid/preference/ListPreference;

.field private kn:Landroid/preference/ListPreference;

.field private ko:Landroid/preference/ListPreference;

.field private kp:Landroid/preference/ListPreference;

.field private kq:Landroid/preference/ListPreference;

.field private kr:Landroid/preference/ListPreference;

.field private ks:Landroid/preference/ListPreference;

.field private kt:Landroid/preference/ListPreference;

.field private ku:Landroid/preference/ListPreference;

.field private kv:Lmiui/preference/ValuePreference;

.field private kw:Landroid/preference/CheckBoxPreference;

.field private kx:Landroid/preference/CheckBoxPreference;

.field private ky:Landroid/preference/ListPreference;

.field private kz:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 212
    const-string v0, "262144"

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->jo:Ljava/lang/String;

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->jp:[I

    .line 2457
    new-instance v0, Lcom/android/settings/cf;

    invoke-direct {v0}, Lcom/android/settings/cf;-><init>()V

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->ix:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 250
    const-string v0, "btdebug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jH:Z

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kB:Ljava/util/ArrayList;

    .line 380
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kL:Ljava/util/HashSet;

    .line 2412
    new-instance v0, Lcom/android/settings/ce;

    invoke-direct {v0, p0}, Lcom/android/settings/ce;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kQ:Landroid/content/BroadcastReceiver;

    .line 2419
    return-void
.end method

.method private E(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2

    .prologue
    .line 695
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 696
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 698
    return-object v0
.end method

.method private F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 3

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 726
    if-nez v0, :cond_0

    .line 727
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find preference with key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kB:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kH:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private a(ILandroid/preference/ListPreference;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1716
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jq:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1717
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1718
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->jw:Z

    .line 1720
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1721
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1722
    aget-object v3, v2, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1723
    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1724
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1725
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1733
    :goto_1
    return-void

    .line 1721
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1729
    :cond_2
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1730
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1731
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1743
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1744
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jq:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1745
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    :goto_1
    return-void

    .line 1743
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1746
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 1

    .prologue
    .line 702
    if-eqz p1, :cond_0

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 704
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/DevelopmentSettings;I)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->x(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/DevelopmentSettings;Z)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->s(Z)V

    return-void
.end method

.method private a(Landroid/content/res/Resources;I)Z
    .locals 2

    .prologue
    .line 2264
    new-instance v0, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f0a0631

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/settings/aL;->b(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->cm()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bX()V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1370
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1373
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cD()V

    .line 1374
    return-void

    .line 1370
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 752
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->c(Landroid/preference/Preference;)V

    .line 754
    const/4 v0, 0x1

    .line 756
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bW()V
    .locals 3

    .prologue
    .line 766
    .line 768
    :try_start_0
    const-string v0, "com.miui.whetstone.WhetstoneManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 769
    const-string v1, "getWhetstoneLeve"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 770
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 775
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 776
    const-string v0, "debug_applications_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 777
    if-eqz v0, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 783
    :cond_1
    :goto_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 773
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    const-string v0, "debug_applications_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 777
    if-eqz v0, :cond_2

    .line 778
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 780
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 775
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 776
    const-string v0, "debug_applications_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 777
    if-eqz v0, :cond_3

    .line 778
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 781
    throw v1
.end method

.method private bX()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 873
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 874
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->jw:Z

    .line 875
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->jy:Landroid/preference/CheckBoxPreference;

    const-string v0, "adb_enabled"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 877
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jA:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 878
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->jA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.android.terminal"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 882
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jC:Landroid/preference/CheckBoxPreference;

    const-string v0, "bugreport_in_power_menu"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 884
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jD:Landroid/preference/CheckBoxPreference;

    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 886
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jE:Landroid/preference/CheckBoxPreference;

    const-string v0, "bluetooth_hci_log"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 888
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jF:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/iH;->af(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 891
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jG:Landroid/preference/CheckBoxPreference;

    const-string v0, "debug_view_attributes"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 894
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jI:Landroid/preference/CheckBoxPreference;

    const-string v3, "bluetooth_trace_log"

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 896
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bY()V

    .line 898
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ca()V

    .line 901
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cg()V

    .line 902
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ch()V

    .line 903
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cr()V

    .line 904
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ct()V

    .line 905
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cv()V

    .line 906
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cw()V

    .line 907
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dg()V

    .line 908
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cz()V

    .line 909
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cB()V

    .line 910
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cD()V

    .line 911
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cE()V

    .line 912
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cF()V

    .line 913
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cH()V

    .line 914
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cJ()V

    .line 915
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cK()V

    .line 916
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dk()V

    .line 917
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dl()V

    .line 918
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kc:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 919
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kc:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.debug.multi_window"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 922
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dm()V

    .line 923
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dj()V

    .line 924
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dn()V

    .line 926
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->do()V

    .line 927
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dq()V

    .line 929
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dx()V

    .line 930
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ci()V

    .line 931
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->co()V

    .line 932
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cQ()V

    .line 933
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->de()V

    .line 934
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cS()V

    .line 935
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cU()V

    .line 936
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cW()V

    .line 937
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cY()V

    .line 938
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->da()V

    .line 939
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dc()V

    .line 940
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cM()V

    .line 941
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cO()V

    .line 942
    return-void

    :cond_3
    move v0, v2

    .line 875
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 878
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 882
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 884
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 886
    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 891
    goto/16 :goto_5

    :cond_9
    move v1, v2

    .line 894
    goto/16 :goto_6
.end method

.method private bY()V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ju:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 951
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-nez v1, :cond_2

    .line 953
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kC:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 954
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kC:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kC:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->dD:Lcom/android/settings/aL;

    invoke-virtual {v2}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kC:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private bZ()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 964
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->jx:Z

    move v1, v2

    .line 965
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kB:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 969
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 970
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 971
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 965
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 974
    :cond_1
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->cf()V

    .line 975
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->f(Ljava/lang/Object;)V

    .line 976
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kp:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0, v4}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 977
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kq:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v0, v4}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 978
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kr:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 980
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->e(Ljava/lang/Object;)V

    .line 983
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->h(Ljava/lang/Object;)V

    .line 984
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->j(Ljava/lang/Object;)V

    .line 985
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->jw:Z

    .line 986
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bX()V

    .line 987
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->jx:Z

    .line 988
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 989
    return-void
.end method

.method private c(Landroid/preference/Preference;)V
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 761
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kB:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 763
    return-void
.end method

.method static synthetic c(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->df()V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1396
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1399
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cE()V

    .line 1400
    return-void

    .line 1396
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2448
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2450
    :cond_0
    :goto_0
    return v0

    .line 2449
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private cA()V
    .locals 2

    .prologue
    .line 1338
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ke:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1340
    return-void

    .line 1338
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private cB()V
    .locals 3

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kf:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1344
    return-void
.end method

.method private cC()V
    .locals 2

    .prologue
    .line 1347
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1349
    return-void

    .line 1347
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private cD()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1352
    const-string v0, "debug.hwui.profile"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1353
    if-nez v0, :cond_0

    .line 1354
    const-string v0, ""

    .line 1357
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kn:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1358
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1359
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1360
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kn:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1361
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kn:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kn:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1367
    :goto_1
    return-void

    .line 1358
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1365
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kn:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1366
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kn:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kn:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private cE()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1377
    const-string v0, "debug.hwui.show_non_rect_clip"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1379
    if-nez v0, :cond_0

    .line 1380
    const-string v0, "hide"

    .line 1383
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ko:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1384
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1385
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ko:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1387
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ko:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ko:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1393
    :goto_1
    return-void

    .line 1384
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1391
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ko:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1392
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ko:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ko:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private cF()V
    .locals 3

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kg:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1405
    return-void
.end method

.method private cG()V
    .locals 2

    .prologue
    .line 1408
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1411
    return-void

    .line 1408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cH()V
    .locals 3

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kh:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1416
    return-void
.end method

.method private cI()V
    .locals 2

    .prologue
    .line 1419
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1422
    return-void

    .line 1419
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cJ()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1425
    const-string v0, "debug.hwui.overdraw"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1426
    if-nez v0, :cond_0

    .line 1427
    const-string v0, ""

    .line 1430
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kk:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1431
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1432
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1433
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kk:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1434
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kk:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kk:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1440
    :goto_1
    return-void

    .line 1431
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1438
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kk:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kk:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kk:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private cK()V
    .locals 3

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ki:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1452
    return-void
.end method

.method private cL()V
    .locals 2

    .prologue
    .line 1455
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ki:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1458
    return-void

    .line 1455
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private cM()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 1461
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1462
    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1464
    :goto_0
    if-eqz v0, :cond_2

    .line 1465
    const-string v0, "accessibility_display_daltonizer"

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1468
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->ku:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1469
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->ku:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1470
    if-gez v0, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ku:Landroid/preference/ListPreference;

    const v3, 0x7f0a0685

    new-array v1, v1, [Ljava/lang/Object;

    const v4, 0x7f0a0681

    invoke-virtual {p0, v4}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1481
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1462
    goto :goto_0

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ku:Landroid/preference/ListPreference;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1478
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ku:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private cN()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1488
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1489
    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 1491
    :goto_0
    if-eqz v2, :cond_1

    .line 1492
    const-string v2, "accessibility_display_daltonizer"

    const/4 v4, -0x1

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1495
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->ku:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1496
    if-ltz v2, :cond_1

    .line 1501
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1489
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1501
    goto :goto_1
.end method

.method private cO()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1516
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_audio_automatic_routing_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1518
    return-void
.end method

.method private cP()V
    .locals 3

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_audio_automatic_routing_disabled"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1524
    return-void

    .line 1521
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cQ()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1527
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kj:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1530
    return-void
.end method

.method private cR()V
    .locals 4

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kj:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 1534
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1536
    const-string v2, "debug.force_rtl"

    if-eqz v1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1538
    return-void

    .line 1534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1536
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private cS()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1541
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1544
    return-void
.end method

.method private cT()V
    .locals 3

    .prologue
    .line 1547
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1550
    return-void

    .line 1547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cU()V
    .locals 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1554
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1555
    return-void

    .line 1553
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cV()V
    .locals 2

    .prologue
    .line 1558
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1559
    return-void

    .line 1558
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cW()V
    .locals 2

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1563
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1564
    return-void

    .line 1562
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cX()V
    .locals 2

    .prologue
    .line 1567
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1568
    return-void

    .line 1567
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cY()V
    .locals 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1572
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1573
    return-void

    .line 1571
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cZ()V
    .locals 2

    .prologue
    .line 1576
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1577
    return-void

    .line 1576
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ca()V
    .locals 7

    .prologue
    .line 992
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 993
    if-eqz v0, :cond_0

    .line 994
    const-string v1, "persist.sys.hdcp_checking"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 995
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 996
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 997
    const/4 v2, 0x1

    .line 998
    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 999
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1004
    :goto_1
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1005
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1006
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1008
    :cond_0
    return-void

    .line 998
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private cb()V
    .locals 3

    .prologue
    .line 1023
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 1025
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_hci_log"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1028
    return-void

    .line 1025
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cc()V
    .locals 3

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_trace_log"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1035
    return-void

    .line 1032
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cd()V
    .locals 4

    .prologue
    .line 1040
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ce()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1047
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1050
    sget-object v1, Lcom/android/settings/DevelopmentSettings;->jp:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    .line 1051
    if-eqz v1, :cond_1

    .line 1053
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    .line 1054
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v2

    if-eq v2, v7, :cond_0

    .line 1055
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1057
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v4, 0x200

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1059
    const/16 v4, 0x3a

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v2, v1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1071
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jN:Ljava/lang/String;

    const/16 v3, 0x200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1073
    const/16 v2, 0x3a

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1079
    :cond_2
    :goto_1
    return-void

    .line 1075
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static cf()V
    .locals 4

    .prologue
    .line 1083
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    return-void

    .line 1085
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cg()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jL:Ljava/lang/String;

    .line 1092
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wait_for_debugger"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1094
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jL:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1097
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jL:Ljava/lang/String;

    const/16 v4, 0x200

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1104
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jM:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0856

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1105
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1106
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->jw:Z

    .line 1111
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1092
    goto :goto_0

    .line 1100
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jL:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jL:Ljava/lang/String;

    goto :goto_1

    .line 1108
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jM:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0855

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1109
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private ch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1114
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1116
    sget-object v1, Lcom/android/settings/DevelopmentSettings;->jp:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    .line 1117
    if-eqz v1, :cond_1

    .line 1118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 1119
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jN:Ljava/lang/String;

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1127
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jN:Ljava/lang/String;

    .line 1129
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jN:Ljava/lang/String;

    const/16 v3, 0x200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1131
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1132
    if-eqz v1, :cond_2

    .line 1133
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1139
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jO:Landroid/preference/Preference;

    const v2, 0x7f0a0639

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1140
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->jw:Z

    .line 1144
    :goto_1
    return-void

    .line 1142
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jO:Landroid/preference/Preference;

    const v1, 0x7f0a0638

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1135
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private ci()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1147
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1149
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ck()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1150
    return-void

    .line 1147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cj()V
    .locals 3

    .prologue
    .line 1153
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1155
    return-void

    .line 1153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ck()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1158
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1159
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return v0

    .line 1162
    :cond_1
    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1166
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1167
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1169
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1170
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1174
    goto :goto_0
.end method

.method private cl()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1178
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cm()Z
    .locals 2

    .prologue
    .line 1183
    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cn()Z
    .locals 2

    .prologue
    .line 1187
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private co()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1196
    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.android.shell"

    const-string v4, "com.android.shell.BugreportStorageProvider"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v0, "user"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1201
    const-string v0, "adb_enabled"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1203
    :goto_0
    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jB:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1205
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1224
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1201
    goto :goto_0

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jB:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1211
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1212
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1213
    const-string v0, "bugreport_in_power_menu"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1214
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1220
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method private static cp()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1232
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1236
    :goto_0
    return v0

    .line 1235
    :cond_0
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1236
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private cq()V
    .locals 2

    .prologue
    .line 1241
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jq:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jX:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 1245
    :goto_1
    return-void

    .line 1241
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1243
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private cr()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1248
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jX:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->cp()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1249
    return-void

    .line 1248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cs()V
    .locals 3

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1254
    return-void

    .line 1252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ct()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1257
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1260
    return-void
.end method

.method private cu()V
    .locals 3

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1265
    return-void

    .line 1263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cv()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1268
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1271
    return-void
.end method

.method private cw()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1276
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1277
    if-eqz v2, :cond_0

    .line 1278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1280
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1281
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1283
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 1285
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 1286
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1287
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->ka:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1289
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 1290
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1291
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->kb:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1292
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 1287
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1291
    goto :goto_1

    .line 1295
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private cx()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1301
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1302
    if-eqz v1, :cond_1

    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1304
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1305
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->ka:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1306
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    const/16 v0, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1308
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1310
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cw()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    :cond_1
    :goto_0
    return-void

    .line 1312
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cy()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1318
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1319
    if-eqz v1, :cond_1

    .line 1320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1321
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1322
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->kb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1323
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    const/16 v0, 0x3f0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1325
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1327
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cw()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :cond_1
    :goto_0
    return-void

    .line 1329
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cz()V
    .locals 3

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ke:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1335
    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1443
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1446
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cJ()V

    .line 1447
    return-void

    .line 1443
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic dB()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->cn()Z

    move-result v0

    return v0
.end method

.method private da()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1580
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "legacy_dhcp_client"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1583
    return-void
.end method

.method private db()V
    .locals 3

    .prologue
    .line 1586
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "legacy_dhcp_client"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1589
    return-void

    .line 1586
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dc()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1592
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data_always_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1595
    return-void
.end method

.method private dd()V
    .locals 3

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data_always_on"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1601
    return-void

    .line 1598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private de()V
    .locals 7

    .prologue
    const v5, 0x7f0e0046

    .line 1604
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kl:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 1605
    const-string v0, "persist.logd.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1606
    if-nez v0, :cond_0

    .line 1607
    const-string v0, "ro.logd.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1608
    if-nez v0, :cond_0

    .line 1609
    const-string v0, "256K"

    .line 1612
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1613
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1614
    const-string v2, "ro.config.low_ram"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1615
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kl:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1616
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1618
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1619
    const/4 v3, 0x1

    .line 1620
    const/4 v2, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_5

    .line 1621
    aget-object v6, v4, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v1, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1627
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kl:Landroid/preference/ListPreference;

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kl:Landroid/preference/ListPreference;

    aget-object v1, v5, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1629
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kl:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1631
    :cond_3
    return-void

    .line 1620
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method private df()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1653
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->km:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 1654
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1656
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e006f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1657
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e006e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move v1, v2

    .line 1659
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1660
    aget-object v5, v3, v1

    invoke-virtual {v0, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1665
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->km:Landroid/preference/ListPreference;

    aget-object v2, v3, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->km:Landroid/preference/ListPreference;

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1667
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->km:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1669
    :cond_0
    return-void

    .line 1659
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private dg()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1683
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1686
    return-void
.end method

.method private dh()V
    .locals 4

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 1690
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1692
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1694
    if-eqz v1, :cond_1

    .line 1695
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1699
    :goto_1
    return-void

    .line 1690
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1697
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private di()V
    .locals 2

    .prologue
    .line 1703
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    :goto_0
    return-void

    .line 1705
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dj()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1710
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1712
    return-void
.end method

.method private dk()V
    .locals 2

    .prologue
    .line 1736
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kp:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 1737
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kq:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 1738
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kr:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 1739
    return-void
.end method

.method private dl()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1751
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1753
    if-nez v0, :cond_0

    .line 1754
    const-string v0, ""

    .line 1757
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ks:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1758
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1759
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1760
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ks:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1761
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ks:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ks:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1767
    :goto_1
    return-void

    .line 1758
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1765
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ks:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1766
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ks:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ks:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private dm()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1776
    const-string v0, "debug.egl.trace"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1777
    if-nez v0, :cond_0

    .line 1778
    const-string v0, ""

    .line 1781
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kt:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1782
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1783
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1784
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kt:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1785
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kt:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kt:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1791
    :goto_1
    return-void

    .line 1782
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1789
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kt:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1790
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kt:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kt:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private dn()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1801
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1802
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ky:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1803
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1804
    aget-object v3, v2, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1805
    if-lt v3, v1, :cond_1

    .line 1806
    if-eqz v0, :cond_0

    .line 1807
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->jw:Z

    .line 1809
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ky:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1810
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ky:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ky:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1818
    :goto_1
    return-void

    .line 1803
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1814
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ky:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1815
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ky:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ky:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1816
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private do()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1830
    .line 1833
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "com.miui.whetstone"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1834
    const-string v2, "com.miui.whetstone.WhetstoneManager"

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1835
    const-string v2, "getWhetstoneLeve"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1836
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1841
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v0, v1

    .line 1842
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1843
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1844
    if-ne v4, v2, :cond_0

    .line 1845
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1846
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1852
    :goto_1
    return-void

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1842
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1850
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1851
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private dp()V
    .locals 3

    .prologue
    .line 1927
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1930
    return-void

    .line 1927
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dq()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1933
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1935
    return-void
.end method

.method private dr()V
    .locals 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1940
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1941
    const-string v1, "sys.mqsas.force_enable"

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    return-void

    .line 1939
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1941
    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method

.method private ds()V
    .locals 2

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1946
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1947
    const-string v1, "sys.mqsas.skip_bg_anr"

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    return-void

    .line 1945
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1947
    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method

.method private dt()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1957
    const-string v0, "sys.mqsas.anr_interval"

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v2, v0, 0x3e8

    .line 1958
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v0, v1

    .line 1959
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1960
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1961
    if-ne v4, v2, :cond_0

    .line 1962
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1963
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1969
    :goto_1
    return-void

    .line 1959
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1967
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1968
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private du()V
    .locals 3

    .prologue
    .line 1973
    new-instance v0, Lcom/android/settings/cc;

    invoke-direct {v0, p0}, Lcom/android/settings/cc;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    .line 1983
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0633

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0634

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0560

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1992
    return-void
.end method

.method private dv()V
    .locals 3

    .prologue
    .line 1995
    new-instance v0, Lcom/android/settings/cd;

    invoke-direct {v0, p0}, Lcom/android/settings/cd;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    .line 2003
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0885

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0886

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0560

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2010
    return-void
.end method

.method private dw()V
    .locals 3

    .prologue
    .line 2073
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2075
    return-void

    .line 2073
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dx()V
    .locals 2

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2080
    return-void
.end method

.method private dy()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2258
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hs;

    const-class v1, Lcom/android/settings/fuelgauge/InactiveApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0b1d

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hs;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2261
    return-void
.end method

.method private dz()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2333
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kO:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kO:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2335
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kO:Landroid/app/Dialog;

    .line 2337
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kP:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2338
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kP:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2339
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kP:Landroid/app/Dialog;

    .line 2341
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kN:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 2342
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kN:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2343
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kN:Landroid/app/Dialog;

    .line 2345
    :cond_2
    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1505
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1506
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1507
    if-gez v1, :cond_0

    .line 1508
    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1513
    :goto_0
    return-void

    .line 1510
    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1511
    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private f(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1634
    const-string v0, "ro.logd.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1635
    if-eqz v0, :cond_0

    .line 1636
    sput-object v0, Lcom/android/settings/DevelopmentSettings;->jo:Ljava/lang/String;

    .line 1638
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1640
    :goto_0
    const-string v1, "persist.logd.size"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1643
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat -b all -G "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 1644
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 1645
    const-string v1, "DevelopmentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logcat ring buffer sizes set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1649
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->de()V

    .line 1650
    return-void

    .line 1638
    :cond_1
    sget-object v0, Lcom/android/settings/DevelopmentSettings;->jo:Ljava/lang/String;

    goto :goto_0

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    const-string v1, "DevelopmentSettings"

    const-string v2, "Cannot set logcat ring buffer sizes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private g(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1673
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1674
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1675
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1676
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 1680
    :goto_0
    return-void

    .line 1678
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method

.method private h(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1772
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dl()V

    .line 1773
    return-void
.end method

.method private i(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1794
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1796
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dm()V

    .line 1797
    return-void

    .line 1794
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1822
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1823
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1824
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    :goto_1
    return-void

    .line 1822
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1825
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private k(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1860
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 1862
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "com.miui.whetstone"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1863
    const-string v2, "com.miui.whetstone.WhetstoneManager"

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 1864
    const-string v0, "getWhetstoneLeve"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1865
    const-string v3, "setWhetstoneLeve"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1866
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1867
    if-eq v0, v1, :cond_0

    .line 1869
    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->x(I)V

    .line 1870
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a1052

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a1053

    new-instance v6, Lcom/android/settings/bZ;

    invoke-direct {v6, p0, v3, v2, v1}, Lcom/android/settings/bZ;-><init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/reflect/Method;Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bY;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/bY;-><init>(Lcom/android/settings/DevelopmentSettings;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    :cond_0
    :goto_1
    return-void

    .line 1860
    :cond_1
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1892
    :catch_0
    move-exception v0

    .line 1894
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private l(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1900
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1923
    :goto_0
    return-void

    .line 1903
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    .line 1904
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a1188

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a1186

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a118b

    :goto_3
    new-instance v2, Lcom/android/settings/cb;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/cb;-><init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a118c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ca;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ca;-><init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const v0, 0x7f0a1189

    goto :goto_1

    :cond_2
    const v0, 0x7f0a1187

    goto :goto_2

    :cond_3
    const v0, 0x7f0a118a

    goto :goto_3
.end method

.method private m(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1951
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1952
    :goto_0
    const-string v1, "sys.mqsas.anr_interval"

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dt()V

    .line 1954
    return-void

    .line 1951
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private r(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 786
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 789
    if-eqz v0, :cond_0

    .line 790
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->kL:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 786
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 790
    goto :goto_1

    .line 792
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bX()V

    .line 793
    return-void
.end method

.method private s(Z)V
    .locals 2

    .prologue
    .line 1191
    const-string v0, "persist.sys.debug.multi_window"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 1193
    return-void
.end method

.method private x(I)V
    .locals 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1856
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1857
    return-void
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 396
    const/16 v0, 0x27

    return v0
.end method

.method a(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1

    .prologue
    .line 867
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 868
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jw:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jw:Z

    .line 869
    return-void
.end method

.method dA()V
    .locals 2

    .prologue
    .line 2406
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jx:Z

    if-nez v0, :cond_0

    .line 2408
    new-instance v0, Lcom/android/settings/cg;

    invoke-direct {v0}, Lcom/android/settings/cg;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/cg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2410
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const-class v0, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2040
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 2041
    if-ne p2, v1, :cond_0

    .line 2042
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jL:Ljava/lang/String;

    .line 2043
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cd()V

    .line 2044
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cg()V

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 2046
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 2047
    if-ne p2, v1, :cond_0

    .line 2048
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jN:Ljava/lang/String;

    .line 2049
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ce()V

    .line 2050
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ch()V

    goto :goto_0

    .line 2052
    :cond_2
    if-nez p1, :cond_4

    .line 2053
    if-ne p2, v1, :cond_0

    .line 2054
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2055
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->du()V

    goto :goto_0

    .line 2057
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/iH;->g(Landroid/content/Context;Z)V

    goto :goto_0

    .line 2060
    :cond_4
    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    .line 2061
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kE:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/BootloaderApplyActivity;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 2062
    :cond_5
    const/16 v0, 0xb

    if-ne p1, v0, :cond_6

    .line 2063
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/a/a;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 2064
    :cond_6
    const/16 v0, 0xc

    if-ne p1, v0, :cond_7

    .line 2065
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kG:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/a/a;->isInputEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 2067
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 2348
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kO:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 2349
    if-ne p2, v1, :cond_1

    .line 2350
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->kM:Z

    .line 2351
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2353
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2354
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ci()V

    .line 2355
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->co()V

    .line 2382
    :cond_0
    :goto_0
    return-void

    .line 2358
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 2360
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kP:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 2361
    if-ne p2, v1, :cond_0

    .line 2363
    :try_start_0
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2364
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    .line 2365
    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2366
    :catch_0
    move-exception v0

    .line 2367
    const-string v1, "DevelopmentSettings"

    const-string v2, "Unable to clear adb keys"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2370
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kN:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 2371
    if-ne p2, v1, :cond_4

    .line 2372
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->kM:Z

    .line 2373
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2375
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    .line 2376
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->r(Z)V

    goto :goto_0

    .line 2379
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ju:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 401
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 407
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jq:Landroid/view/IWindowManager;

    .line 408
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jr:Landroid/app/backup/IBackupManager;

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->js:Landroid/app/admin/DevicePolicyManager;

    .line 411
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->aY:Landroid/os/UserManager;

    .line 413
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jt:Landroid/net/wifi/WifiManager;

    .line 419
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->aY:Landroid/os/UserManager;

    const-string v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->bc:Z

    .line 426
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 692
    :goto_0
    return-void

    .line 430
    :cond_1
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 432
    const-string v0, "debug_debugging_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 435
    const-string v1, "development_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ju:Landroid/preference/CheckBoxPreference;

    .line 436
    const-string v1, "enable_adb"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jy:Landroid/preference/CheckBoxPreference;

    .line 437
    const-string v1, "clear_adb_keys"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jz:Landroid/preference/Preference;

    .line 438
    const-string v1, "ro.adb.secure"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 439
    if-eqz v0, :cond_2

    .line 440
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jz:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jz:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    const-string v1, "enable_terminal"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jA:Landroid/preference/CheckBoxPreference;

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "com.android.terminal"

    invoke-static {v1, v4}, Lcom/android/settings/DevelopmentSettings;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 448
    if-eqz v0, :cond_3

    .line 449
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 451
    :cond_3
    iput-object v5, p0, Lcom/android/settings/DevelopmentSettings;->jA:Landroid/preference/CheckBoxPreference;

    .line 454
    :cond_4
    const-string v1, "bugreport"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jB:Landroid/preference/Preference;

    .line 460
    const-string v1, "bugreport_in_power"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jC:Landroid/preference/CheckBoxPreference;

    .line 461
    const-string v1, "keep_screen_on"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jD:Landroid/preference/CheckBoxPreference;

    .line 462
    const-string v1, "bt_hci_snoop_log"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jE:Landroid/preference/CheckBoxPreference;

    .line 463
    const-string v1, "oem_unlock_enable"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jF:Landroid/preference/CheckBoxPreference;

    .line 466
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->cm()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 467
    :cond_5
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jF:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->c(Landroid/preference/Preference;)V

    .line 468
    iput-object v5, p0, Lcom/android/settings/DevelopmentSettings;->jF:Landroid/preference/CheckBoxPreference;

    .line 472
    :cond_6
    const-string v1, "oled"

    const-string v4, "ro.display.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 473
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jD:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->c(Landroid/preference/Preference;)V

    .line 476
    :cond_7
    const-string v1, "bootloader_status"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kv:Lmiui/preference/ValuePreference;

    .line 477
    const-string v1, "ro.secureboot.devicelock"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 478
    if-ne v1, v2, :cond_f

    .line 479
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kv:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 480
    const-string v1, "ro.secureboot.lockstate"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    const-string v4, "locked"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 482
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kv:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 486
    :goto_1
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->kv:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :goto_2
    const-string v1, "debug_view_attributes"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jG:Landroid/preference/CheckBoxPreference;

    .line 495
    const-string v1, "local_backup_password"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jK:Landroid/preference/PreferenceScreen;

    .line 496
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jK:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    const-string v1, "bt_trace_log"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jI:Landroid/preference/CheckBoxPreference;

    .line 500
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->jH:Z

    if-nez v1, :cond_8

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jB:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 509
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 510
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jz:Landroid/preference/Preference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/Preference;)V

    .line 511
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jA:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/Preference;)V

    .line 512
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jK:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/Preference;)V

    .line 515
    :cond_9
    const-string v1, "debug_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jM:Landroid/preference/Preference;

    .line 516
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jM:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    const-string v1, "wait_for_debugger"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jP:Landroid/preference/CheckBoxPreference;

    .line 521
    const-string v1, "mock_location_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jO:Landroid/preference/Preference;

    .line 522
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jO:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v1, "verify_apps_over_usb"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    .line 527
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cl()Z

    move-result v1

    if-nez v1, :cond_a

    .line 528
    if-eqz v0, :cond_10

    .line 529
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 543
    :cond_a
    :goto_3
    const-string v1, "strict_mode"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jX:Landroid/preference/CheckBoxPreference;

    .line 544
    const-string v1, "pointer_location"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jY:Landroid/preference/CheckBoxPreference;

    .line 545
    const-string v1, "show_touches"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jZ:Landroid/preference/CheckBoxPreference;

    .line 546
    const-string v1, "show_screen_updates"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ka:Landroid/preference/CheckBoxPreference;

    .line 547
    const-string v1, "disable_overlays"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kb:Landroid/preference/CheckBoxPreference;

    .line 548
    const-string v1, "show_cpu_usage"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kd:Landroid/preference/CheckBoxPreference;

    .line 549
    const-string v1, "force_hw_ui"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ke:Landroid/preference/CheckBoxPreference;

    .line 550
    const-string v1, "force_msaa"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kf:Landroid/preference/CheckBoxPreference;

    .line 552
    const-string v1, "track_frame_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kn:Landroid/preference/ListPreference;

    .line 553
    const-string v1, "show_non_rect_clip"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ko:Landroid/preference/ListPreference;

    .line 566
    const-string v1, "show_hw_screen_udpates"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kg:Landroid/preference/CheckBoxPreference;

    .line 567
    const-string v1, "show_hw_layers_udpates"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kh:Landroid/preference/CheckBoxPreference;

    .line 568
    const-string v1, "debug_layout"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ki:Landroid/preference/CheckBoxPreference;

    .line 569
    const-string v1, "force_rtl_layout_all_locales"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kj:Landroid/preference/CheckBoxPreference;

    .line 570
    const-string v1, "debug_hw_overdraw"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kk:Landroid/preference/ListPreference;

    .line 571
    const-string v1, "wifi_display_certification"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jR:Landroid/preference/CheckBoxPreference;

    .line 572
    const-string v1, "wifi_verbose_logging"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jS:Landroid/preference/CheckBoxPreference;

    .line 573
    const-string v1, "wifi_aggressive_handover"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jT:Landroid/preference/CheckBoxPreference;

    .line 574
    const-string v1, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jW:Landroid/preference/CheckBoxPreference;

    .line 575
    const-string v1, "legacy_dhcp_client"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jU:Landroid/preference/CheckBoxPreference;

    .line 576
    const-string v1, "mobile_data_always_on"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jV:Landroid/preference/CheckBoxPreference;

    .line 578
    const-string v1, "select_logd_size"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kl:Landroid/preference/ListPreference;

    .line 579
    const-string v1, "select_usb_configuration"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->km:Landroid/preference/ListPreference;

    .line 581
    const-string v1, "window_animation_scale"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kp:Landroid/preference/ListPreference;

    .line 582
    const-string v1, "transition_animation_scale"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kq:Landroid/preference/ListPreference;

    .line 583
    const-string v1, "animator_duration_scale"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kr:Landroid/preference/ListPreference;

    .line 584
    const-string v1, "overlay_display_devices"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ks:Landroid/preference/ListPreference;

    .line 587
    const-string v1, "enable_multi_window"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kc:Landroid/preference/CheckBoxPreference;

    .line 588
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->cn()Z

    move-result v1

    if-nez v1, :cond_b

    .line 589
    const-string v1, "debug_drawing_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 591
    if-eqz v1, :cond_11

    .line 592
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->kc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 596
    :goto_4
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kc:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->c(Landroid/preference/Preference;)V

    .line 597
    iput-object v5, p0, Lcom/android/settings/DevelopmentSettings;->kc:Landroid/preference/CheckBoxPreference;

    .line 599
    :cond_b
    const-string v1, "enable_opengl_traces"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kt:Landroid/preference/ListPreference;

    .line 600
    const-string v1, "simulate_color_space"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ku:Landroid/preference/ListPreference;

    .line 603
    const-string v1, "usb_audio"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kw:Landroid/preference/CheckBoxPreference;

    .line 607
    const-string v1, "immediately_destroy_activities"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kx:Landroid/preference/CheckBoxPreference;

    .line 609
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->kx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kB:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->kx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v1, "app_process_limit"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ky:Landroid/preference/ListPreference;

    .line 616
    const-string v1, "show_all_anrs"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kz:Landroid/preference/CheckBoxPreference;

    .line 618
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->kz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kB:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->kz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    const-string v1, "show_fc"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kD:Landroid/preference/CheckBoxPreference;

    .line 625
    const-string v1, "bootloader"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kE:Landroid/preference/CheckBoxPreference;

    .line 626
    invoke-static {}, Lcom/android/settings/BootloaderApplyActivity;->aw()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 627
    if-eqz v0, :cond_c

    .line 628
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 634
    :cond_c
    :goto_5
    const-string v0, "adb_install"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kF:Landroid/preference/CheckBoxPreference;

    .line 636
    const-string v0, "adb_input"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kG:Landroid/preference/CheckBoxPreference;

    .line 638
    const-string v0, "is_pad"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 639
    const-string v0, "debug_debugging_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 640
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 641
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 647
    :goto_6
    const-string v0, "unlock_enter_system"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->F(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kC:Landroid/preference/CheckBoxPreference;

    .line 648
    new-instance v0, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->dD:Lcom/android/settings/aL;

    .line 649
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    .line 653
    const-string v0, "whetstone_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    .line 654
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 656
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bW()V

    .line 660
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_d

    .line 662
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->b(Landroid/preference/Preference;)Z

    .line 667
    :cond_d
    const-string v0, "miui_experience_optimization"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kH:Landroid/preference/CheckBoxPreference;

    .line 668
    const-string v1, "persist.sys.miui_optimization"

    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v0, :cond_14

    move v0, v2

    :goto_7
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 669
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 670
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 671
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    const-string v0, "open_anr_debug"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kI:Landroid/preference/CheckBoxPreference;

    .line 674
    const-string v0, "sys.mqsas.force_enable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 675
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 677
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    const-string v0, "anr_record_interval"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->E(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    .line 680
    const-string v0, "sys.mqsas.anr_interval"

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 681
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 682
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 683
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 684
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 686
    const-string v0, "record_anr_in_background"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kK:Landroid/preference/CheckBoxPreference;

    .line 687
    const-string v0, "sys.mqsas.skip_bg_anr"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 688
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 484
    :cond_e
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kv:Lmiui/preference/ValuePreference;

    const v4, 0x7f0a1174

    invoke-virtual {v1, v4}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_1

    .line 488
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->kv:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 531
    :cond_10
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 594
    :cond_11
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 631
    :cond_12
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kE:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/BootloaderApplyActivity;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 643
    :cond_13
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/a/a;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 644
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kG:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/a/a;->isInputEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_14
    move v0, v3

    .line 668
    goto/16 :goto_7
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2401
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dz()V

    .line 2402
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 2403
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 851
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 853
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->bc:Z

    if-eqz v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kQ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2386
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kO:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 2387
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->kM:Z

    if-nez v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2390
    :cond_0
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kO:Landroid/app/Dialog;

    .line 2397
    :cond_1
    :goto_0
    return-void

    .line 2391
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kN:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 2392
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->kM:Z

    if-nez v0, :cond_3

    .line 2393
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ju:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2395
    :cond_3
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kN:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 843
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 844
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kQ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 846
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2270
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2271
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ca()V

    .line 2273
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->dA()V

    .line 2329
    :goto_0
    return v0

    .line 2275
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kl:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 2276
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 2278
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->km:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 2279
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 2281
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kp:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 2282
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kp:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 2284
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kq:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 2285
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->kq:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 2287
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kr:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 2288
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kr:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 2290
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ks:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 2291
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->h(Ljava/lang/Object;)V

    goto :goto_0

    .line 2293
    :cond_6
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kt:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 2294
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2296
    :cond_7
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kn:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 2297
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 2299
    :cond_8
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kk:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 2300
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 2302
    :cond_9
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ko:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 2303
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 2305
    :cond_a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ky:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 2306
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->j(Ljava/lang/Object;)V

    goto :goto_0

    .line 2308
    :cond_b
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_c

    .line 2309
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->k(Ljava/lang/Object;)V

    goto :goto_0

    .line 2311
    :cond_c
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ku:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_d

    .line 2312
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 2314
    :cond_d
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jJ:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_e

    .line 2315
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->k(Ljava/lang/Object;)V

    goto :goto_0

    .line 2317
    :cond_e
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kH:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_10

    .line 2318
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->l(Ljava/lang/Object;)V

    :cond_f
    move v0, v1

    .line 2329
    goto :goto_0

    .line 2319
    :cond_10
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kI:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_11

    .line 2320
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dr()V

    goto/16 :goto_0

    .line 2322
    :cond_11
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kK:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_12

    .line 2323
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ds()V

    goto/16 :goto_0

    .line 2325
    :cond_12
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kJ:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_f

    .line 2326
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->m(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2084
    invoke-static {}, Lcom/android/settings/iH;->iE()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2254
    :cond_0
    :goto_0
    return v1

    .line 2088
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jy:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 2089
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2092
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2094
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->kM:Z

    .line 2095
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kO:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dz()V

    .line 2096
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a064d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a064c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kO:Landroid/app/Dialog;

    .line 2102
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kO:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 2106
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2108
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2109
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2110
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->co()V

    goto :goto_0

    .line 2112
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jz:Landroid/preference/Preference;

    if-ne p2, v2, :cond_6

    .line 2113
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kP:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dz()V

    .line 2114
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a064e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kP:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 2119
    :cond_6
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jA:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 2120
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2121
    const-string v3, "com.android.terminal"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    .line 2124
    :cond_8
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    .line 2125
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_2

    .line 2128
    :cond_a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jD:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 2129
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_3

    .line 2133
    :cond_c
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jE:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 2134
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cb()V

    goto/16 :goto_0

    .line 2136
    :cond_d
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jI:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 2137
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cc()V

    goto/16 :goto_0

    .line 2138
    :cond_e
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jF:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_10

    .line 2139
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2141
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->du()V

    goto/16 :goto_0

    .line 2143
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/iH;->g(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 2147
    :cond_10
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kv:Lmiui/preference/ValuePreference;

    if-ne p2, v2, :cond_11

    .line 2148
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/bootloader/BootloaderStatusActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2149
    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2151
    :cond_11
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jO:Landroid/preference/Preference;

    if-ne p2, v2, :cond_12

    .line 2152
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/AppPicker;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2153
    const-string v2, "com.android.settings.extra.REQUESTIING_PERMISSION"

    const-string v3, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2155
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2156
    :cond_12
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->jG:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_14

    .line 2157
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug_view_attributes"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->jG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto :goto_4

    .line 2160
    :cond_14
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jM:Landroid/preference/Preference;

    if-ne p2, v0, :cond_15

    .line 2163
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/MiuiAppPicker;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2164
    :cond_15
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 2165
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cd()V

    goto/16 :goto_0

    .line 2166
    :cond_16
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jQ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    .line 2167
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cj()V

    goto/16 :goto_0

    .line 2168
    :cond_17
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jX:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_18

    .line 2169
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cq()V

    goto/16 :goto_0

    .line 2170
    :cond_18
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jY:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    .line 2171
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cs()V

    goto/16 :goto_0

    .line 2172
    :cond_19
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jZ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1a

    .line 2173
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cu()V

    goto/16 :goto_0

    .line 2174
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ka:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    .line 2175
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cx()V

    goto/16 :goto_0

    .line 2176
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1c

    .line 2177
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cy()V

    goto/16 :goto_0

    .line 2178
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kc:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1e

    .line 2179
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2180
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dv()V

    goto/16 :goto_0

    .line 2182
    :cond_1d
    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->s(Z)V

    goto/16 :goto_0

    .line 2184
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kd:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 2185
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dh()V

    goto/16 :goto_0

    .line 2186
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kx:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_20

    .line 2187
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->di()V

    goto/16 :goto_0

    .line 2188
    :cond_20
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kz:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_21

    .line 2189
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dp()V

    goto/16 :goto_0

    .line 2190
    :cond_21
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ke:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_22

    .line 2191
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cA()V

    goto/16 :goto_0

    .line 2192
    :cond_22
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kf:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_23

    .line 2193
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cC()V

    goto/16 :goto_0

    .line 2194
    :cond_23
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kg:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_24

    .line 2195
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cG()V

    goto/16 :goto_0

    .line 2196
    :cond_24
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kh:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_25

    .line 2197
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cI()V

    goto/16 :goto_0

    .line 2198
    :cond_25
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ki:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_26

    .line 2199
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cL()V

    goto/16 :goto_0

    .line 2200
    :cond_26
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kj:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_27

    .line 2201
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cR()V

    goto/16 :goto_0

    .line 2202
    :cond_27
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jR:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_28

    .line 2203
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cT()V

    goto/16 :goto_0

    .line 2204
    :cond_28
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jS:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_29

    .line 2205
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cV()V

    goto/16 :goto_0

    .line 2206
    :cond_29
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jT:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2a

    .line 2207
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cX()V

    goto/16 :goto_0

    .line 2208
    :cond_2a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jW:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2b

    .line 2209
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cZ()V

    goto/16 :goto_0

    .line 2210
    :cond_2b
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jU:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2c

    .line 2211
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->db()V

    goto/16 :goto_0

    .line 2212
    :cond_2c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->jV:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2d

    .line 2213
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dd()V

    goto/16 :goto_0

    .line 2214
    :cond_2d
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kw:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2e

    .line 2215
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    goto/16 :goto_0

    .line 2216
    :cond_2e
    const-string v0, "inactive_apps"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2217
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dy()V

    goto/16 :goto_0

    .line 2222
    :cond_2f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_30

    .line 2223
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 2224
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    goto/16 :goto_0

    .line 2225
    :cond_30
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kD:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_31

    .line 2226
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dw()V

    goto/16 :goto_0

    .line 2227
    :cond_31
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ju:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_32

    .line 2228
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ju:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->t(Z)V

    goto/16 :goto_0

    .line 2229
    :cond_32
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kE:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_34

    .line 2230
    invoke-static {}, Lcom/android/settings/BootloaderApplyActivity;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2231
    invoke-static {v1}, Lcom/android/settings/BootloaderApplyActivity;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2233
    :cond_33
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/BootloaderApplyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2234
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2235
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 2237
    :cond_34
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kF:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_36

    .line 2238
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2239
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/a/a;->a(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 2241
    :cond_35
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.securitycenter.action.ADB_INSTALL_VERIFY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2242
    const/16 v2, 0xb

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2244
    :cond_36
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kG:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 2245
    invoke-static {}, Lcom/android/a/a;->isInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2246
    invoke-static {v1}, Lcom/android/a/a;->setInputEnabled(Z)V

    goto/16 :goto_0

    .line 2248
    :cond_37
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.securitycenter.action.ADB_INPUT_APPLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2249
    const/16 v2, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2250
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 797
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 799
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->bc:Z

    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 802
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 803
    if-eqz v0, :cond_0

    .line 804
    const v1, 0x7f0a0624

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->js:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 814
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kL:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 819
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 820
    const-string v3, "development_settings_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    .line 822
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ju:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 823
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->r(Z)V

    .line 825
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 832
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    .line 833
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ju:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 834
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->r(Z)V

    goto :goto_0

    .line 816
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->kL:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->jD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public t(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2016
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    if-eq p1, v0, :cond_1

    .line 2017
    if-eqz p1, :cond_2

    .line 2018
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->kM:Z

    .line 2019
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kN:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dz()V

    .line 2020
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0650

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a064f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kN:Landroid/app/Dialog;

    .line 2027
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->kN:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2036
    :cond_1
    :goto_0
    return-void

    .line 2029
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bZ()V

    .line 2030
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2032
    iput-boolean p1, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    .line 2033
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->jv:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->r(Z)V

    goto :goto_0
.end method
