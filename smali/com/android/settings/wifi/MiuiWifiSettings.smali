.class public Lcom/android/settings/wifi/MiuiWifiSettings;
.super Lcom/android/settings/wifi/WifiSettings;
.source "MiuiWifiSettings.java"

# interfaces
.implements Lcom/android/settings/gh;


# static fields
.field public static final aDc:Ljava/util/HashSet;


# instance fields
.field private SU:Lcom/android/settings/eP;

.field private aCP:Landroid/widget/TextView;

.field private aCQ:Landroid/widget/TextView;

.field private aCR:Landroid/widget/TextView;

.field private aCS:Landroid/widget/ImageButton;

.field private aCT:Landroid/widget/ImageButton;

.field private aCU:Landroid/preference/CheckBoxPreference;

.field private aCV:Landroid/preference/CheckBoxPreference;

.field private aCW:Landroid/preference/CheckBoxPreference;

.field private aCX:Landroid/preference/CheckBoxPreference;

.field private aCY:Lmiui/preference/ValuePreference;

.field private aCZ:Z

.field private aDa:Lcom/android/settings/wifi/g;

.field private aDb:Lcom/android/b/e/a;

.field private jt:Landroid/net/wifi/WifiManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mV:Landroid/content/IntentFilter;

.field private uY:Z

.field private vE:Z

.field private vF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 723
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDc:Ljava/util/HashSet;

    .line 724
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDc:Ljava/util/HashSet;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDc:Ljava/util/HashSet;

    const-string v1, "CMCC-AUTO"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDc:Ljava/util/HashSet;

    const-string v1, "CMCC-EDU"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDc:Ljava/util/HashSet;

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 728
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vE:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uY:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/b/e/a;)Lcom/android/b/e/a;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDb:Lcom/android/b/e/a;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vE:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uY:Z

    return p1
.end method

.method private bR()V
    .locals 3

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFn:Z

    if-eqz v0, :cond_2

    .line 355
    :cond_0
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    .line 363
    const-string v0, "notify_open_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCV:Landroid/preference/CheckBoxPreference;

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCV:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 366
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 367
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCV:Landroid/preference/CheckBoxPreference;

    .line 371
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "saved_wifi"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->yx()V

    goto :goto_0
.end method

.method private c(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 782
    .line 785
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 786
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 787
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 788
    iget-object v1, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    invoke-virtual {v0, p0}, Lcom/android/b/e/a;->a(Lcom/android/b/e/b;)V

    .line 793
    invoke-virtual {v0}, Lcom/android/b/e/a;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 794
    invoke-virtual {v0}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 795
    invoke-virtual {v0}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/g;

    .line 796
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/g;->a(Lcom/android/b/e/a;)V

    .line 802
    :goto_0
    iget-object v2, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 803
    const/4 v2, 0x0

    .line 804
    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->xU()Z

    move-result v6

    if-nez v6, :cond_1

    .line 805
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v6, v0, Lcom/android/b/e/a;->bssid:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/android/settings/wifi/openwifi/l;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v2

    .line 807
    if-eqz v2, :cond_1

    .line 808
    invoke-virtual {v1, v9}, Lcom/android/settings/wifi/g;->bF(Z)V

    .line 812
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 813
    const v6, 0x7f0a0fb7

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/settings/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/wifi/MiuiWifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/g;->setSummary(Ljava/lang/CharSequence;)V

    .line 816
    :cond_2
    new-instance v2, Lcom/android/settings/wifi/i;

    invoke-direct {v2, v0, p0}, Lcom/android/settings/wifi/i;-><init>(Lcom/android/b/e/a;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 817
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/g;->d(Landroid/view/View$OnClickListener;)V

    .line 818
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->xH()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->xH()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->xH()Lcom/android/b/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/e/a;->getLevel()I

    move-result v0

    if-gtz v0, :cond_0

    .line 827
    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/g;->xT()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 828
    return-object v3

    .line 798
    :cond_4
    new-instance v1, Lcom/android/settings/wifi/g;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDr:Lcom/android/settings/wifi/c;

    invoke-direct {v1, v0, v2, v6, v8}, Lcom/android/settings/wifi/g;-><init>(Lcom/android/b/e/a;Landroid/content/Context;Lcom/android/settings/wifi/c;Z)V

    .line 800
    invoke-virtual {v0, v1}, Lcom/android/b/e/a;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private e(Lcom/android/b/e/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 848
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDb:Lcom/android/b/e/a;

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/wifi/V;->b(Landroid/content/Context;Lcom/android/b/e/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 850
    if-nez v1, :cond_0

    .line 871
    :goto_0
    return-void

    .line 853
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uY:Z

    .line 854
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0401b5

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 855
    const v0, 0x7f130392

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 856
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 857
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 863
    new-instance v1, Lcom/android/settings/wifi/O;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/O;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 870
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 755
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private yv()V
    .locals 6

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const-class v0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 625
    :cond_0
    return-void
.end method

.method private yx()V
    .locals 2

    .prologue
    .line 760
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    .line 771
    :goto_0
    return-void

    .line 762
    :cond_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCW:Landroid/preference/CheckBoxPreference;

    .line 763
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCW:Landroid/preference/CheckBoxPreference;

    const-string v1, "cmcc_network_notification"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCW:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a10ce

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 765
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCW:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a10cf

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 767
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 768
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 770
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->yy()V

    goto :goto_0
.end method

.method private yy()V
    .locals 2

    .prologue
    .line 774
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCW:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiTipActivity;->cP(Landroid/content/Context;)Z

    move-result v0

    .line 777
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCW:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 778
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCW:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 777
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 684
    sparse-switch p1, :sswitch_data_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 686
    :sswitch_0
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 687
    if-eqz v0, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFq:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 689
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFp:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->yw()V

    goto :goto_0

    .line 695
    :sswitch_1
    const-string v0, "network_id"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 696
    const-string v0, "is_delete"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 697
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 698
    if-eqz v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 699
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFr:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 705
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->yw()V

    goto :goto_0

    .line 701
    :cond_2
    if-eqz v0, :cond_1

    .line 702
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFq:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method a(Lcom/android/settings/wifi/ak;)V
    .locals 0

    .prologue
    .line 717
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/ak;)V

    .line 718
    return-void
.end method

.method protected aL()I
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public al()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bI(Z)V
    .locals 1

    .prologue
    .line 668
    if-eqz p1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->SU:Lcom/android/settings/eP;

    invoke-virtual {v0}, Lcom/android/settings/eP;->fc()V

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->SU:Lcom/android/settings/eP;

    invoke-virtual {v0}, Lcom/android/settings/eP;->stopAnimation()V

    goto :goto_0
.end method

.method protected bJ(Z)V
    .locals 5

    .prologue
    const v4, 0x7f020274

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 732
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->bJ(Z)V

    .line 733
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v0, :cond_0

    .line 734
    if-eqz p1, :cond_1

    .line 735
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 737
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCQ:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCT:Landroid/widget/ImageButton;

    const v1, 0x7f020268

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 740
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCT:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 744
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 745
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCQ:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 746
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCT:Landroid/widget/ImageButton;

    const v1, 0x7f020269

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 747
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCT:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public c(Lcom/android/b/e/a;)V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method public d(Lcom/android/b/e/a;)V
    .locals 1

    .prologue
    .line 842
    invoke-virtual {p1}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p1}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/g;

    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->xI()V

    .line 845
    :cond_0
    return-void
.end method

.method protected dC(I)V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 546
    return-void
.end method

.method public dD(I)V
    .locals 1

    .prologue
    .line 550
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->dD(I)V

    .line 551
    packed-switch p1, :pswitch_data_0

    .line 559
    :goto_0
    :pswitch_0
    return-void

    .line 556
    :pswitch_1
    const v0, 0x7f0a02ce

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->dC(I)V

    goto :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 286
    new-instance v0, Lcom/android/b/e/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v3, v4}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 287
    const-string v3, ""

    iput-object v3, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 288
    new-instance v3, Lcom/android/settings/wifi/g;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v0, v4, v5, v2}, Lcom/android/settings/wifi/g;-><init>(Lcom/android/b/e/a;Landroid/content/Context;Lcom/android/settings/wifi/c;Z)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 291
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "wifi_enable"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCU:Landroid/preference/CheckBoxPreference;

    .line 294
    new-instance v0, Lcom/android/settings/wifi/F;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCU:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/F;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFs:Lcom/android/settings/wifi/F;

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "enable_data_and_wifi_roam"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCX:Landroid/preference/CheckBoxPreference;

    .line 297
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCX:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCX:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "data_and_wifi_roam"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCY:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCY:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 305
    iput-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCY:Lmiui/preference/ValuePreference;

    .line 307
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCV:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCV:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 319
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_4

    .line 321
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 322
    invoke-static {v0}, Lcom/android/b/e/a;->cC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 323
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 326
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 298
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 677
    if-eqz p3, :cond_0

    .line 678
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(ILandroid/os/Bundle;)V

    .line 680
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    const-string v0, "is_dialog_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uY:Z

    .line 144
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uY:Z

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "accesspoint_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/android/b/e/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 147
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->e(Lcom/android/b/e/a;)V

    .line 150
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    .line 152
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v0, :cond_2

    .line 153
    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->setThemeRes(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_disable_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vE:Z

    .line 166
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFn:Z

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 169
    :cond_1
    new-instance v0, Lcom/android/settings/eP;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/eP;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->SU:Lcom/android/settings/eP;

    .line 170
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addPreferencesFromResource(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bR()V

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/MiuiWifiSettings;->setHasOptionsMenu(Z)V

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mV:Landroid/content/IntentFilter;

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mV:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mV:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/android/settings/wifi/L;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/L;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vF:Ljava/lang/String;

    .line 190
    return-void

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_3

    .line 160
    const v0, 0x7f0f0098

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->setThemeRes(I)V

    goto :goto_0

    .line 162
    :cond_3
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->setThemeRes(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->hz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFn:Z

    if-nez v0, :cond_0

    .line 660
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 661
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->SU:Lcom/android/settings/eP;

    invoke-virtual {v1}, Lcom/android/settings/eP;->fH()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 200
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/fE;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 203
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2

    const v0, 0x7f040187

    .line 204
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v1, :cond_3

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 205
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v1, :cond_1

    .line 206
    new-instance v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    .line 207
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    :cond_1
    return-object v0

    .line 203
    :cond_2
    const v0, 0x7f04011a

    goto :goto_0

    .line 204
    :cond_3
    const v0, 0x7f0401b2

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 380
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 395
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 382
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vE:Z

    if-eqz v1, :cond_0

    .line 383
    const/4 v0, 0x0

    goto :goto_1

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->finish()V

    goto :goto_1

    .line 390
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bI(Z)V

    goto :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onPause()V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 564
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 565
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 566
    goto :goto_0

    .line 570
    :cond_1
    const-string v3, "manually_add_network"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 571
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->yv()V

    goto :goto_1

    .line 573
    :cond_2
    const-string v3, "wifi_enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 574
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFs:Lcom/android/settings/wifi/F;

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/F;->aE(Z)V

    goto :goto_1

    .line 576
    :cond_3
    const-string v3, "cmcc_network_notification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Lcom/android/settings/wifi/WifiTipActivity;->r(Landroid/content/Context;Z)V

    .line 583
    :cond_4
    :goto_3
    instance-of v0, p2, Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_8

    move-object v0, p2

    .line 584
    check-cast v0, Lcom/android/settings/wifi/g;

    .line 585
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->xH()Lcom/android/b/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_8

    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->xH()Lcom/android/b/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/b/e/a;->BB()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-nez v3, :cond_8

    .line 587
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->xH()Lcom/android/b/e/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->e(Lcom/android/b/e/a;)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 577
    goto :goto_2

    .line 578
    :cond_6
    const-string v3, "enable_data_and_wifi_roam"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_and_wifi_roam"

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    .line 592
    :cond_8
    instance-of v0, p2, Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_e

    .line 594
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v0, :cond_9

    .line 595
    const-string v0, "provision_wifi"

    const-string v3, "provision_wifi_connect_count"

    invoke-static {v0, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v0, p2

    .line 597
    check-cast v0, Lcom/android/settings/wifi/g;

    .line 598
    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/g;->bC(Z)V

    .line 599
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->xH()Lcom/android/b/e/a;

    move-result-object v2

    .line 600
    iget-object v3, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    .line 601
    if-eqz v3, :cond_d

    iget v4, v2, Lcom/android/b/e/a;->networkId:I

    if-eq v4, v5, :cond_d

    .line 602
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 603
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    iget v5, v2, Lcom/android/b/e/a;->networkId:I

    if-ne v4, v5, :cond_b

    :cond_a
    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v1, :cond_c

    .line 606
    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    iget v2, v2, Lcom/android/b/e/a;->networkId:I

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFp:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v2, v4}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 610
    :goto_5
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    goto/16 :goto_1

    .line 608
    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/g;->bC(Z)V

    goto :goto_5

    .line 613
    :cond_d
    iput v5, v2, Lcom/android/b/e/a;->networkId:I

    .line 616
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 330
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onResume()V

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCX:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCX:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_and_wifi_roam"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/aG;->cO(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCZ:Z

    .line 336
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->yy()V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mV:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "provision_wifi_page"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 342
    const-string v0, "provision_wifi"

    const-string v1, "provision_wifi_page_count"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 332
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 874
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 875
    const-string v0, "is_dialog_shown"

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uY:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 876
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDb:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 878
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDb:Lcom/android/b/e/a;

    invoke-virtual {v1, v0}, Lcom/android/b/e/a;->k(Landroid/os/Bundle;)V

    .line 879
    const-string v1, "accesspoint_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 881
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 215
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 216
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v0, :cond_1

    .line 217
    const v0, 0x7f130279

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f130278

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCQ:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f130276

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCR:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f130277

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCS:Landroid/widget/ImageButton;

    .line 221
    const v0, 0x7f13027a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCT:Landroid/widget/ImageButton;

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 225
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCR:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCS:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCT:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 236
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 243
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 244
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 245
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bJ(Z)V

    .line 248
    new-instance v0, Lcom/android/settings/wifi/M;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/M;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    .line 268
    new-instance v1, Lcom/android/settings/wifi/N;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/N;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    .line 275
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCQ:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCR:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCT:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCS:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_1
    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCP:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCR:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCS:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCT:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public yt()V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->yt()V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->yu()V

    .line 402
    return-void
.end method

.method public yu()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->hz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 414
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 415
    const-string v1, "connected_wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 416
    packed-switch v2, :pswitch_data_0

    .line 518
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCV:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCV:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 521
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->yy()V

    goto :goto_0

    .line 420
    :pswitch_0
    if-nez v0, :cond_10

    .line 421
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-eqz v0, :cond_6

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object v2, v0

    .line 431
    :goto_2
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 432
    if-eqz v1, :cond_4

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object v1, v3

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aFz:Lcom/android/settings/wifi/P;

    invoke-virtual {v0}, Lcom/android/settings/wifi/P;->BG()Ljava/util/List;

    move-result-object v0

    .line 438
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->c(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 439
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 442
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    move-object v6, v1

    move v1, v4

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/g;

    .line 443
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->xH()Lcom/android/b/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/b/e/a;->Bz()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 444
    iget-boolean v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->vC:Z

    if-nez v7, :cond_8

    .line 446
    if-nez v6, :cond_5

    .line 447
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 448
    const-string v7, "connected_wifi"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 449
    const v7, 0x7f0a0dd6

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 450
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 452
    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 454
    :cond_5
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->xH()Lcom/android/b/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/b/e/a;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 455
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/g;->setOrder(I)V

    .line 456
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 457
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    .line 458
    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/g;->bE(Z)V

    :goto_4
    move v0, v1

    move v1, v5

    move-object v5, v6

    :goto_5
    move-object v6, v5

    move v5, v1

    move v1, v0

    .line 471
    goto :goto_3

    .line 424
    :cond_6
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 425
    const-string v2, "nearby_wifi"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 426
    const v2, 0x7f0a0dcb

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 427
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object v2, v0

    goto/16 :goto_2

    .line 460
    :cond_7
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/settings/wifi/g;->setOrder(I)V

    .line 461
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v5, v7

    goto :goto_4

    .line 464
    :cond_8
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/g;->setOrder(I)V

    .line 465
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v7

    move v1, v5

    move-object v5, v6

    goto :goto_5

    .line 468
    :cond_9
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/g;->setOrder(I)V

    .line 469
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v7

    move v1, v5

    move-object v5, v6

    goto :goto_5

    .line 473
    :cond_a
    new-instance v0, Lcom/android/settings/wifi/U;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/settings/wifi/U;-><init>(Landroid/content/Context;)V

    .line 474
    const-string v4, "manually_add_network"

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 475
    const v4, 0x7f0a02c1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 476
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 477
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 479
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aCU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 483
    :pswitch_1
    const v2, 0x7f0a02aa

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->dC(I)V

    .line 487
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    if-eqz v2, :cond_b

    .line 488
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    invoke-virtual {v2, v9}, Lcom/android/settings/wifi/g;->bC(Z)V

    .line 489
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    invoke-virtual {v2}, Lcom/android/settings/wifi/g;->refresh()V

    .line 490
    iput-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    .line 492
    :cond_b
    if-eqz v0, :cond_c

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    :cond_c
    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 502
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    if-eqz v2, :cond_d

    .line 503
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    invoke-virtual {v2, v9}, Lcom/android/settings/wifi/g;->bC(Z)V

    .line 504
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    invoke-virtual {v2}, Lcom/android/settings/wifi/g;->refresh()V

    .line 505
    iput-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDa:Lcom/android/settings/wifi/g;

    .line 508
    :cond_d
    if-eqz v0, :cond_e

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 511
    :cond_e
    if-eqz v1, :cond_f

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 515
    :cond_f
    const v0, 0x7f0a02ce

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->dC(I)V

    goto/16 :goto_1

    :cond_10
    move-object v2, v0

    goto/16 :goto_2

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method yw()V
    .locals 2

    .prologue
    .line 643
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->yw()V

    .line 644
    const-string v0, "connected_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 645
    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 647
    :cond_0
    return-void
.end method
