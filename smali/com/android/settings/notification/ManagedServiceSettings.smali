.class public abstract Lcom/android/settings/notification/ManagedServiceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManagedServiceSettings.java"


# instance fields
.field private final akK:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private akL:Landroid/content/pm/PackageManager;

.field private akM:Lcom/android/settings/notification/ServiceListing;

.field private hC:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->sJ()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akK:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akK:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/notification/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->z(Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    if-nez p3, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akM:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v2, p1, v1}, Lcom/android/settings/notification/ServiceListing;->a(Landroid/content/ComponentName;Z)V

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akM:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v2, p1}, Lcom/android/settings/notification/ServiceListing;->g(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->b(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 143
    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ManagedServiceSettings;->a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ServiceListing;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akM:Lcom/android/settings/notification/ServiceListing;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/notification/ManagedServiceSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private z(Ljava/util/List;)V
    .locals 7

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 108
    new-instance v0, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akL:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v2}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 110
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akL:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    new-instance v5, Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 115
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 116
    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akL:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akM:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ServiceListing;->g(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$2;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/settings/notification/ManagedServiceSettings$2;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akL:Landroid/content/pm/PackageManager;

    .line 70
    new-instance v0, Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akK:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akM:Lcom/android/settings/notification/ServiceListing;

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akM:Lcom/android/settings/notification/ServiceListing;

    new-instance v1, Lcom/android/settings/notification/ManagedServiceSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ManagedServiceSettings$1;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->a(Lcom/android/settings/notification/ServiceListing$Callback;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ManagedServiceSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 78
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 85
    const v0, 0x7f0400b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    const v0, 0x1020004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->hC:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->hC:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akK:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget v2, v2, Lcom/android/settings/notification/ManagedServiceSettings$Config;->akU:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->hC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 89
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akM:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akM:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->te()Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->akM:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 97
    return-void
.end method

.method protected abstract sJ()Lcom/android/settings/notification/ManagedServiceSettings$Config;
.end method
