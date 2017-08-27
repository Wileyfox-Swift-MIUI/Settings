.class public Lcom/android/settings/MiuiSmartCoverSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSmartCoverSettingsFragment.java"


# instance fields
.field private ug:Landroid/preference/CheckBoxPreference;

.field private uh:Ljava/util/List;

.field private ui:Ljava/util/List;

.field private final uj:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uh:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->ui:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/android/settings/fw;

    invoke-direct {v0, p0}, Lcom/android/settings/fw;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uj:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 169
    return-void
.end method

.method private Z(I)V
    .locals 6

    .prologue
    .line 108
    const v3, 0x7f0a10df

    .line 109
    const-string v2, "normal"

    .line 110
    const v1, 0x7f0202e5

    .line 111
    const v0, 0x7f0202e6

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    new-instance v4, Lcom/android/settings/fx;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1, v0}, Lcom/android/settings/fx;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;II)V

    invoke-direct {p0, v4, v3, v2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings/fx;ILjava/lang/String;)V

    .line 137
    return-void

    .line 116
    :pswitch_0
    const v3, 0x7f0a10e0

    .line 117
    const-string v2, "smallwindow"

    .line 118
    const v1, 0x7f0202e7

    .line 119
    const v0, 0x7f0202e8

    .line 120
    goto :goto_0

    .line 122
    :pswitch_1
    const v3, 0x7f0a10e1

    .line 123
    const-string v2, "lattice"

    .line 124
    const v1, 0x7f0202e3

    .line 125
    const v0, 0x7f0202e4

    .line 126
    goto :goto_0

    .line 128
    :pswitch_2
    const v3, 0x7f0a10e2

    .line 129
    const-string v2, "transparent"

    .line 130
    const v1, 0x7f0202e9

    .line 131
    const v0, 0x7f0202ea

    .line 132
    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->ug:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;ZI)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->c(ZI)V

    return-void
.end method

.method private a(Lcom/android/settings/fx;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p1, p2}, Lcom/android/settings/fx;->setTitle(I)V

    .line 141
    invoke-virtual {p1, p3}, Lcom/android/settings/fx;->setKey(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/fx;->setPersistent(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 144
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uj:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/fx;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uh:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->ui:Ljava/util/List;

    return-object v0
.end method

.method private c(ZI)V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fx;

    .line 151
    packed-switch p2, :pswitch_data_0

    .line 149
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/android/settings/fx;->setEnabled(Z)V

    goto :goto_1

    .line 156
    :pswitch_1
    invoke-virtual {v0, p1}, Lcom/android/settings/fx;->setChecked(Z)V

    goto :goto_1

    .line 162
    :cond_0
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 78
    const-string v0, "persist.sys.smartcover_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 81
    :goto_0
    const-string v0, "smartcover_mode_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->ug:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->ug:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uj:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    const-string v0, "small_win_cover_type"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 87
    if-eqz v4, :cond_0

    array-length v0, v4

    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 105
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 78
    goto :goto_0

    .line 91
    :cond_2
    array-length v5, v4

    move v0, v3

    :goto_2
    if-ge v0, v5, :cond_3

    aget v6, v4, v0

    .line 92
    iget-object v7, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->ui:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-direct {p0, v6}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->Z(I)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 96
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->c(ZI)V

    .line 97
    const-string v0, "persist.sys.smallwin_type"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 99
    if-ne v0, v9, :cond_4

    .line 100
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uh:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fx;

    .line 104
    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/settings/fx;->setChecked(Z)V

    goto :goto_1

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->uh:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->ui:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fx;

    goto :goto_3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-class v0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 72
    :cond_0
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->addPreferencesFromResource(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->init()V

    .line 74
    return-void
.end method
