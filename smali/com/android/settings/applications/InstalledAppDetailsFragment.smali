.class public Lcom/android/settings/applications/InstalledAppDetailsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/b/a/s;


# instance fields
.field private FL:Lcom/android/b/a/w;

.field private FX:Lcom/android/b/a/a;

.field private FY:Lcom/android/b/a/o;

.field private FZ:Landroid/content/pm/PackageInfo;

.field private Ga:Landroid/hardware/usb/IUsbManager;

.field private HJ:Z

.field private HK:Z

.field private HL:J

.field private HM:J

.field private HN:J

.field private HO:J

.field private HP:J

.field private HQ:J

.field private HT:Ljava/lang/CharSequence;

.field private HU:Ljava/lang/CharSequence;

.field private final JF:Landroid/content/BroadcastReceiver;

.field private JI:Lcom/android/settings/applications/AppInfoPreference;

.field private JJ:Lmiui/preference/ValuePreference;

.field private JK:Lmiui/preference/ValuePreference;

.field private JL:Lmiui/preference/ValuePreference;

.field private JM:Lmiui/preference/ValuePreference;

.field private JN:Lmiui/preference/ValuePreference;

.field private JO:Lmiui/preference/ValuePreference;

.field private JP:Lmiui/preference/ButtonPreference;

.field private JQ:Lmiui/preference/ButtonPreference;

.field private JR:Lmiui/preference/ValuePreference;

.field private JS:Landroid/preference/CheckBoxPreference;

.field private JT:Landroid/preference/Preference;

.field private JU:Landroid/preference/Preference;

.field private JV:Landroid/preference/Preference;

.field private JW:Landroid/preference/Preference;

.field private JX:Landroid/content/pm/IPackageManager;

.field private JY:Z

.field private JZ:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

.field private Jp:Z

.field private Ka:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

.field private Kb:Z

.field private Kc:Landroid/view/MenuItem;

.field private Kd:Landroid/view/MenuItem;

.field private Ke:Z

.field private Kf:Z

.field private Kg:I

.field private Kh:I

.field private Ki:Ljava/util/HashSet;

.field private ad:Landroid/appwidget/AppWidgetManager;

.field private cG:Lcom/android/settings/a/a;

.field private js:Landroid/app/admin/DevicePolicyManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mHandler:Landroid/os/Handler;

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 134
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JY:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Jp:Z

    .line 138
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HJ:Z

    .line 141
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kb:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ke:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kf:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HK:Z

    .line 151
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HL:J

    .line 152
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HM:J

    .line 153
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HN:J

    .line 154
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HO:J

    .line 155
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HP:J

    .line 156
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HQ:J

    .line 193
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    .line 1238
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JF:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetailsFragment;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->aM(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JT:Landroid/preference/Preference;

    const v1, 0x7f0a0565

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 682
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JT:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 683
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->l(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetailsFragment;ZZ)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->c(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kb:Z

    return p1
.end method

.method private aM(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1075
    packed-switch p1, :pswitch_data_0

    .line 1089
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1077
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a059e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1079
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a059f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1081
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a05a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1083
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a05a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1085
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a05a2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1087
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 1075
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ao(Z)V
    .locals 2

    .prologue
    .line 1246
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ke:Z

    .line 1247
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kc:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kc:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ke:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1250
    :cond_0
    return-void
.end method

.method private ap(Z)V
    .locals 5

    .prologue
    .line 1093
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x18

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1095
    return-void

    .line 1093
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private aq(Z)V
    .locals 2

    .prologue
    .line 1332
    if-eqz p1, :cond_0

    const-string v0, "com.jeejen.family.miui"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->cG:Lcom/android/settings/a/a;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/a/a;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_2

    const-string v0, "com.amazon.appmanager"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1335
    :cond_1
    const/4 p1, 0x0

    .line 1338
    :cond_2
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kf:Z

    .line 1340
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kd:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 1341
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kd:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1342
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kd:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kg:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1343
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kd:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kh:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1345
    :cond_3
    return-void
.end method

.method private at(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 651
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 655
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 657
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 658
    :catch_0
    move-exception v1

    .line 660
    const-string v1, "InstalledAppDetails"

    const-string v2, "Can\'t talk packageManager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/a;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FX:Lcom/android/b/a/a;

    return-object v0
.end method

.method private b(Landroid/content/pm/PackageInfo;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    .line 501
    const/4 v0, 0x0

    .line 502
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0a0599

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JI:Lcom/android/settings/applications/AppInfoPreference;

    new-instance v3, Lcom/android/settings/applications/AppInfoPreference$AppInfo;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/b/a/o;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v5, v5, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/android/settings/applications/AppInfoPreference$AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/AppInfoPreference;->a(Lcom/android/settings/applications/AppInfoPreference$AppInfo;)V

    .line 508
    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private b(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 531
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 532
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 533
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    const v3, 0x7f0a0561

    invoke-virtual {v2, v3}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 534
    if-ne v0, v4, :cond_1

    .line 535
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FX:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    .line 541
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kM()V

    .line 543
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    .line 547
    :cond_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v4}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->ap(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->at(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 511
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 512
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 514
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JY:Z

    .line 515
    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    .line 516
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FX:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    .line 523
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->jP()Z

    .line 524
    return-void

    .line 521
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->ao(Z)V

    return-void
.end method

.method private c(ZZ)V
    .locals 3

    .prologue
    .line 674
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 675
    const-string v1, "chg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, p0, v2, v0}, Lcom/android/settings/fE;->a(Landroid/app/Activity;Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 677
    return-void
.end method

.method static synthetic d(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private e(II)V
    .locals 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->h(II)Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    move-result-object v0

    .line 554
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kl()V

    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1064
    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 1066
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FX:Lcom/android/b/a/a;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/b/a/a;->A(Ljava/lang/String;I)V

    .line 1067
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FX:Lcom/android/b/a/a;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/b/a/a;->u(Ljava/lang/String;I)Lcom/android/b/a/o;

    move-result-object v0

    .line 1068
    if-eqz v0, :cond_0

    .line 1069
    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    .line 1071
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kM()V

    .line 1072
    return-void
.end method

.method static synthetic g(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lmiui/preference/ButtonPreference;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    return-object v0
.end method

.method private jP()Z
    .locals 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 375
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JY:Z

    if-eqz v0, :cond_1

    move v2, v4

    .line 495
    :cond_0
    :goto_0
    return v2

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 380
    if-eqz v5, :cond_4

    const-string v0, "package"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_1
    if-nez v0, :cond_13

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 383
    if-eqz v3, :cond_12

    .line 384
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 387
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 388
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_2
    const-string v6, "is_xspace_app"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 393
    :goto_3
    if-eqz v5, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 394
    const-string v0, "intent"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 395
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v11, v0

    move v0, v3

    move-object v3, v11

    .line 399
    :goto_5
    if-eqz v0, :cond_7

    const/16 v0, 0x3e7

    :goto_6
    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    .line 400
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FX:Lcom/android/b/a/a;

    iget v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, v3, v5}, Lcom/android/b/a/a;->u(Ljava/lang/String;I)Lcom/android/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    .line 402
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    if-eqz v0, :cond_0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v5, v5, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    iget v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 424
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v0, v5, v3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ga:Landroid/hardware/usb/IUsbManager;

    iget v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v0, v3, v6}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 445
    :goto_7
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/content/pm/IPackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    .line 449
    :goto_8
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->ad:Landroid/appwidget/AppWidgetManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v7, v7, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v6

    .line 452
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_3

    if-nez v0, :cond_3

    if-eqz v3, :cond_8

    :cond_3
    move v3, v4

    .line 453
    :goto_9
    if-nez v3, :cond_9

    if-nez v6, :cond_9

    .line 454
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 489
    :goto_a
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kM()V

    .line 490
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->b(Landroid/content/pm/PackageInfo;)V

    .line 491
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->ki()V

    .line 492
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kh()V

    .line 493
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kO()V

    move v2, v4

    .line 495
    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 380
    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    .line 384
    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    .line 395
    goto/16 :goto_4

    .line 399
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto/16 :goto_6

    .line 413
    :catch_0
    move-exception v0

    .line 414
    const-string v1, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 431
    const-string v1, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when getPreferredActivities for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 440
    :catch_2
    move-exception v0

    .line 441
    const-string v3, "InstalledAppDetails"

    const-string v6, "mUsbManager.hasDefaults"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto/16 :goto_7

    .line 446
    :catch_3
    move-exception v3

    .line 447
    const-string v6, "InstalledAppDetails"

    const-string v7, "mPackageManager.getDefaultBrowserPackageName"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    goto/16 :goto_8

    :cond_8
    move v3, v2

    .line 452
    goto/16 :goto_9

    .line 456
    :cond_9
    if-eqz v6, :cond_d

    if-eqz v3, :cond_d

    move v0, v4

    .line 459
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0048

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 461
    if-eqz v3, :cond_b

    .line 462
    const v3, 0x7f0a0563

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 463
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 464
    if-eqz v0, :cond_a

    .line 465
    new-instance v8, Landroid/text/style/BulletSpan;

    invoke-direct {v8, v5}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v7, v8, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 467
    :cond_a
    if-nez v1, :cond_e

    new-array v1, v9, [Ljava/lang/CharSequence;

    aput-object v7, v1, v2

    const-string v3, "\n"

    aput-object v3, v1, v4

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 470
    :cond_b
    :goto_c
    if-eqz v6, :cond_10

    .line 471
    const v3, 0x7f0a0564

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 473
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 474
    if-eqz v0, :cond_c

    .line 475
    new-instance v0, Landroid/text/style/BulletSpan;

    invoke-direct {v0, v5}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v6, v0, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 478
    :cond_c
    if-nez v1, :cond_f

    new-array v0, v9, [Ljava/lang/CharSequence;

    aput-object v6, v0, v2

    const-string v1, "\n"

    aput-object v1, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 481
    :goto_d
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JT:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JT:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JT:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_a

    :cond_d
    move v0, v2

    .line 456
    goto :goto_b

    .line 467
    :cond_e
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v1, v3, v2

    const-string v1, "\n"

    aput-object v1, v3, v4

    aput-object v7, v3, v9

    const-string v1, "\n"

    aput-object v1, v3, v10

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_c

    .line 478
    :cond_f
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    const-string v1, "\n"

    aput-object v1, v0, v4

    aput-object v6, v0, v9

    const-string v1, "\n"

    aput-object v1, v0, v10

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d

    :cond_10
    move-object v0, v1

    goto :goto_d

    :cond_11
    move-object v11, v0

    move v0, v3

    move-object v3, v11

    goto/16 :goto_5

    :cond_12
    move v3, v2

    goto/16 :goto_3

    :cond_13
    move-object v3, v0

    move v0, v2

    goto/16 :goto_5
.end method

.method private kI()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1280
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Jp:Z

    .line 1283
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Jp:Z

    if-eqz v0, :cond_1

    .line 1285
    const v0, 0x7f0a0562

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kg:I

    .line 1323
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->js:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1327
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->aq(Z)V

    .line 1328
    return-void

    :cond_0
    move v0, v2

    .line 1280
    goto :goto_0

    .line 1287
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 1294
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1295
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v3, v0, v4, v5, v6}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1300
    const v3, 0x7f020024

    iput v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kh:I

    .line 1301
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kR()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1303
    :cond_3
    const v0, 0x7f0a055f

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kg:I

    move v1, v2

    goto :goto_1

    .line 1304
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5

    .line 1305
    const v0, 0x7f0a055f

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kg:I

    move v1, v2

    .line 1306
    goto :goto_1

    .line 1308
    :cond_5
    const v0, 0x7f0a0560

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kg:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    const-string v1, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 1313
    goto :goto_1

    .line 1316
    :cond_6
    sget v0, Lmiui/R$drawable;->action_button_delete_light:I

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kh:I

    .line 1317
    const v0, 0x7f0a055c

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kg:I

    goto/16 :goto_1

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method private kM()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1253
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->js:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.miui"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->cG:Lcom/android/settings/a/a;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/a/a;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1258
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->ao(Z)V

    .line 1277
    :cond_1
    :goto_0
    return-void

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 1262
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->ao(Z)V

    goto :goto_0

    .line 1264
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1266
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1268
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1269
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1273
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JF:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private kO()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JV:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private kP()V
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JR:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/NotificationAppListSettings;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JR:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JR:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 715
    return-void
.end method

.method private kQ()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 718
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 722
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    if-eqz v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    .line 724
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 725
    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kb:Z

    if-eqz v2, :cond_3

    .line 726
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v5, v5, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 728
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 734
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kb:Z

    goto :goto_0

    .line 731
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kb:Z

    if-eqz v0, :cond_4

    .line 732
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private kR()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 758
    const-string v1, "com.android.documentsui"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return v0

    .line 762
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    iget v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 763
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ki:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 766
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private kh()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 772
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 774
    :cond_0
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HQ:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HP:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HM:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HL:J

    .line 775
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HK:Z

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JK:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HU:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JM:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HU:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JO:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HU:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JJ:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HU:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JQ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 831
    :goto_0
    return-void

    .line 785
    :cond_2
    iput-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HK:Z

    .line 786
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v2, v0, Lcom/android/b/a/o;->codeSize:J

    .line 787
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->dataSize:J

    .line 788
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 789
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalCodeSize:J

    add-long/2addr v2, v4

    .line 790
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalDataSize:J

    add-long/2addr v0, v4

    .line 792
    :cond_3
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HL:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_4

    .line 793
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HL:J

    .line 794
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JK:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->l(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 796
    :cond_4
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HM:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    .line 797
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HM:J

    .line 798
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JM:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->l(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 800
    :cond_5
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HN:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->externalCodeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 801
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->externalCodeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HN:J

    .line 802
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JL:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v2, v1, Lcom/android/b/a/o;->externalCodeSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->l(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 805
    :cond_6
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HO:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->externalDataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 806
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->externalDataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HO:J

    .line 807
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JN:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v2, v1, Lcom/android/b/a/o;->externalDataSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->l(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 809
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->cacheSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->externalCacheSize:J

    add-long/2addr v0, v2

    .line 810
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HP:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    .line 811
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HP:J

    .line 812
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JO:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->l(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 814
    :cond_8
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HQ:J

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 815
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->size:J

    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HQ:J

    .line 816
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JJ:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v4, v3, Lcom/android/b/a/o;->size:J

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->l(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 819
    :cond_9
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->dataSize:J

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalDataSize:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-lez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HJ:Z

    if-nez v2, :cond_b

    .line 820
    :cond_a
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    invoke-virtual {v2, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 824
    :goto_1
    cmp-long v0, v0, v8

    if-gtz v0, :cond_c

    .line 825
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JQ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 822
    :cond_b
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    invoke-virtual {v2, v7}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    goto :goto_1

    .line 827
    :cond_c
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JQ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v7}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 828
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JQ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0
.end method

.method private ki()V
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JY:Z

    if-nez v0, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kI()V

    .line 688
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kj()V

    .line 689
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kP()V

    .line 690
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kQ()V

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->aq(Z)V

    goto :goto_0
.end method

.method private kj()V
    .locals 4

    .prologue
    const v3, 0x7f0a0561

    const/4 v2, 0x0

    .line 739
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->js:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FZ:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 744
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 745
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HJ:Z

    .line 754
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    const v1, 0x7f0a0574

    invoke-virtual {v0, v1}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 752
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ButtonPreference;->setText(I)V

    goto :goto_1
.end method

.method private kl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1040
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 1042
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1043
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JZ:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JZ:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    .line 1048
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JZ:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    .line 1049
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    const v2, 0x7f0a0582

    invoke-virtual {v0, v2}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x2718

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .line 1054
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt clear application user data for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1055
    const/4 v0, 0x4

    invoke-direct {p0, v0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0
.end method

.method private l(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HT:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private l(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 628
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Lcom/android/settings/applications/InstalledAppDetailsFragment$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 633
    const-string v0, "InstalledAppDetails"

    const-string v1, "Can\'t talk packageManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Lcom/android/settings/applications/InstalledAppDetailsFragment$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 638
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->at(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 642
    :catch_1
    move-exception v0

    .line 644
    const-string v0, "InstalledAppDetails"

    const-string v1, "Can\'t talk packageManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public ak(Z)V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public ap(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->kh()V

    .line 580
    :cond_0
    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-class v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jJ()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->jP()Z

    .line 565
    return-void
.end method

.method public jK()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public jL()V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public jM()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public jN()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 588
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 264
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 266
    const v0, 0x7f0a055c

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kg:I

    .line 267
    const v0, 0x7f020024

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kh:I

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0a0596

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->HU:Ljava/lang/CharSequence;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 272
    new-instance v0, Ljava/util/HashSet;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ki:Ljava/util/HashSet;

    .line 273
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 274
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ki:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/a/a;->ba(Landroid/content/Context;)Lcom/android/settings/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->cG:Lcom/android/settings/a/a;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/a;->a(Landroid/app/Application;)Lcom/android/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FX:Lcom/android/b/a/a;

    .line 279
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FX:Lcom/android/b/a/a;

    invoke-virtual {v0, p0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/s;)Lcom/android/b/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FL:Lcom/android/b/a/w;

    .line 280
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 282
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ga:Landroid/hardware/usb/IUsbManager;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->ad:Landroid/appwidget/AppWidgetManager;

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->js:Landroid/app/admin/DevicePolicyManager;

    .line 287
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->addPreferencesFromResource(I)V

    .line 289
    const-string v0, "applications_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppInfoPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JI:Lcom/android/settings/applications/AppInfoPreference;

    .line 290
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JI:Lcom/android/settings/applications/AppInfoPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppInfoPreference;->setSelectable(Z)V

    .line 291
    const-string v0, "total_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JJ:Lmiui/preference/ValuePreference;

    .line 292
    const-string v0, "application_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JK:Lmiui/preference/ValuePreference;

    .line 293
    const-string v0, "external_code_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JL:Lmiui/preference/ValuePreference;

    .line 294
    const-string v0, "data_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JM:Lmiui/preference/ValuePreference;

    .line 295
    const-string v0, "external_data_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JN:Lmiui/preference/ValuePreference;

    .line 296
    const-string v0, "cache_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JO:Lmiui/preference/ValuePreference;

    .line 297
    const-string v0, "clear_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ButtonPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JP:Lmiui/preference/ButtonPreference;

    .line 298
    const-string v0, "clear_cache"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ButtonPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JQ:Lmiui/preference/ButtonPreference;

    .line 299
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JQ:Lmiui/preference/ButtonPreference;

    const v1, 0x7f0a0553

    invoke-virtual {v0, v1}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 300
    const-string v0, "notification_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JR:Lmiui/preference/ValuePreference;

    .line 301
    const-string v0, "floating_window_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    .line 302
    const-string v0, "clear_default_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JT:Landroid/preference/Preference;

    .line 303
    const-string v0, "permission_detail_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JU:Landroid/preference/Preference;

    .line 304
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JU:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 305
    const-string v0, "permission_manage"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JV:Landroid/preference/Preference;

    .line 306
    const-string v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JW:Landroid/preference/Preference;

    .line 308
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3

    .line 309
    const-string v0, "permissions_label"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 310
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JV:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JV:Landroid/preference/Preference;

    .line 319
    :goto_1
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JW:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JV:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JV:Landroid/preference/Preference;

    const v1, 0x7f0a11a2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 330
    :cond_1
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setHasOptionsMenu(Z)V

    .line 333
    if-eqz p1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FX:Lcom/android/b/a/a;

    const-string v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->u(Ljava/lang/String;I)Lcom/android/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    .line 336
    :cond_2
    return-void

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JV:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JS:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 325
    :cond_4
    const-string v0, "permissions_label"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 326
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JW:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JW:Landroid/preference/Preference;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1197
    const v0, 0x7f0a0f07

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kc:Landroid/view/MenuItem;

    .line 1198
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kc:Landroid/view/MenuItem;

    sget v1, Lmiui/R$drawable;->action_button_discard_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1199
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kc:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ke:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1200
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kc:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1202
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kg:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kd:Landroid/view/MenuItem;

    .line 1203
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kd:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kh:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1204
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kd:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kf:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1205
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Kd:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1206
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 371
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FL:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->release()V

    .line 372
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1235
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1213
    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1217
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Jp:Z

    if-eqz v0, :cond_0

    .line 1218
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1

    .line 1222
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1224
    :cond_1
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1229
    :cond_2
    const/16 v0, 0xa

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 365
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FL:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->pause()V

    .line 366
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1099
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1100
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1102
    const-string v4, "notification_switch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return v3

    .line 1108
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1112
    :goto_1
    if-eqz v0, :cond_0

    .line 1115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1116
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string v1, "com.android.settings"

    const-string v4, "com.android.settings.Settings$NotificationFilterActivity"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    const-string v1, "appName"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    const-string v1, "packageName"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1120
    const-string v1, "userId"

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1121
    const-string v1, ":miui:starting_window_label"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 1123
    :cond_2
    const-string v4, "floating_window_switch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1124
    const/16 v0, 0x9

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1125
    :cond_3
    const-string v4, "clear_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1126
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1127
    invoke-static {}, Lcom/android/settings/iH;->iE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1134
    :cond_4
    invoke-direct {p0, v5, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(II)V

    goto/16 :goto_0

    .line 1136
    :cond_5
    const-string v4, "clear_cache"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1137
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ka:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    if-nez v0, :cond_6

    .line 1138
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ka:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    .line 1141
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ka:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-interface {v0, v1, v2, v4}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesForUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1142
    :catch_1
    move-exception v0

    .line 1143
    const-string v1, "InstalledAppDetails"

    const-string v2, "Can not clear cache for pkg,"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1145
    :cond_7
    const-string v4, "clear_default_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1147
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1149
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JX:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .line 1151
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->Ga:Landroid/hardware/usb/IUsbManager;

    iget v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v0, v2, v4}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1155
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->ad:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v3}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1156
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 1152
    :catch_2
    move-exception v0

    .line 1153
    const-string v4, "InstalledAppDetails"

    const-string v5, "mUsbManager.clearDefaults"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1157
    :cond_9
    const-string v1, "permission_detail_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1158
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_a

    .line 1159
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1160
    const-string v0, "extra_package_application"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1161
    const-class v0, Lcom/android/settings/applications/PermissionInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    .line 1163
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/applications/PermissionInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1164
    const-string v1, "extra_package_application"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1165
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1167
    :cond_b
    const-string v1, "permission_manage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1169
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1170
    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v1, :cond_c

    .line 1171
    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1177
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1178
    :catch_3
    move-exception v0

    .line 1179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1174
    :cond_c
    :try_start_4
    const-string v1, "miui.intent.action.APP_PERM_EDITOR_PRIVATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    const-string v1, "extra_pkgname"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1181
    :cond_d
    const-string v1, "permission_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1183
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    const-string v1, "hideInfoButton"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1186
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 1187
    :catch_4
    move-exception v0

    .line 1188
    const-string v1, "InstalledAppDetails"

    const-string v2, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 349
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 351
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FL:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->resume()V

    .line 352
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->jP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0, v6, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->c(ZZ)V

    .line 360
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/PermissionInfoFragment;->a(ILandroid/content/Context;)Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->JU:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0edb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->lc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->lb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->ld()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "package_name"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "user_id"

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    :cond_0
    return-void
.end method
