.class public Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSavedAccessPointsWifiSettings.java"


# instance fields
.field private aBV:Lmiui/widget/EditableListViewWrapper;

.field private aBW:Ljava/util/List;

.field private jt:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->lg()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/b/e/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->b(Lcom/android/b/e/a;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->bH(Z)V

    return-void
.end method

.method private b(Lcom/android/b/e/a;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/b/e/a;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v2, Lcom/android/settings/wifi/m;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/m;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/b/e/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 148
    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->xW()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->bG(Z)V

    return-void
.end method

.method private bG(Z)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/W;

    .line 167
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/W;->bL(Z)V

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method private bH(Z)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/W;

    .line 173
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/W;->bK(Z)V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method private c(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 87
    new-instance v3, Lcom/android/settings/wifi/W;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/W;-><init>(Lcom/android/b/e/a;Landroid/content/Context;)V

    .line 89
    iget-object v0, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/W;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/k;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/k;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 110
    return-object v1
.end method

.method static synthetic c(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->xX()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBW:Ljava/util/List;

    return-object v0
.end method

.method private lg()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 71
    const/4 v1, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/android/b/e/c;->a(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const-string v0, "MiuiSavedAccessPointsWifiSettings"

    const-string v1, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->c(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBW:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/W;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private xV()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBV:Lmiui/widget/EditableListViewWrapper;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBV:Lmiui/widget/EditableListViewWrapper;

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBV:Lmiui/widget/EditableListViewWrapper;

    new-instance v1, Lcom/android/settings/wifi/n;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/n;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListViewWrapper;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBV:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    :cond_0
    return-void
.end method

.method private xW()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/W;

    .line 152
    invoke-virtual {v0}, Lcom/android/settings/wifi/W;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/android/settings/wifi/W;->xH()Lcom/android/b/e/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->b(Lcom/android/b/e/a;)V

    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method

.method private xX()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->aBV:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lmiui/widget/EditableListViewWrapper;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->bG(Z)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 51
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->jt:Landroid/net/wifi/WifiManager;

    .line 52
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 115
    instance-of v1, p2, Lcom/android/settings/wifi/W;

    if-eqz v1, :cond_0

    .line 116
    check-cast p2, Lcom/android/settings/wifi/W;

    .line 117
    invoke-virtual {p2}, Lcom/android/settings/wifi/W;->xH()Lcom/android/b/e/a;

    move-result-object v1

    .line 118
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0a0dcc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0dcd

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02cb

    new-instance v4, Lcom/android/settings/wifi/l;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/wifi/l;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/b/e/a;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0808

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->lg()V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->xV()V

    .line 59
    return-void
.end method
