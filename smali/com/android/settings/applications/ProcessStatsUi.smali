.class public Lcom/android/settings/applications/ProcessStatsUi;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "ProcessStatsUi.java"


# static fields
.field public static final Nl:[I

.field public static final Nm:[I

.field public static final Nn:[I

.field static final No:Ljava/util/Comparator;

.field static final Np:Ljava/util/Comparator;


# instance fields
.field private Nh:Landroid/preference/PreferenceGroup;

.field private Ni:Z

.field private Nj:Landroid/view/MenuItem;

.field private Nk:Landroid/view/MenuItem;

.field private t:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->Nl:[I

    .line 136
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->Nm:[I

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->Nn:[I

    .line 189
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->No:Ljava/util/Comparator;

    .line 202
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->Np:Ljava/util/Comparator;

    return-void

    .line 128
    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data

    .line 140
    :array_1
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method

.method private lv()V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->Nk:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Ni:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Nj:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->Ni:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 97
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x17

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ln()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Nh:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Nh:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->Nh:Landroid/preference/PreferenceGroup;

    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Ni:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0b26

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 159
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->JC:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->lk()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v13

    .line 161
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->JC:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->ll()Ljava/util/List;

    move-result-object v14

    .line 164
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move v1, v11

    :goto_1
    if-ge v1, v2, :cond_1

    .line 165
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 166
    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsPackageEntry;->lm()V

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 155
    :cond_0
    const v0, 0x7f0a0b25

    goto :goto_0

    .line 169
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Ni:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->Np:Ljava/util/Comparator;

    :goto_2
    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Ni:Z

    if-eqz v0, :cond_3

    iget-wide v4, v13, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mb:D

    :goto_3
    move v0, v11

    .line 178
    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 179
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 180
    new-instance v1, Lcom/android/settings/applications/ProcessStatsPreference;

    invoke-direct {v1, v12}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    .line 181
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->t:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->t:Landroid/content/pm/PackageManager;

    iget-wide v6, v13, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mg:D

    iget-wide v8, v13, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mi:D

    iget-boolean v10, p0, Lcom/android/settings/applications/ProcessStatsUi;->Ni:Z

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_5
    invoke-virtual/range {v1 .. v10}, Lcom/android/settings/applications/ProcessStatsPreference;->a(Lcom/android/settings/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V

    .line 184
    invoke-virtual {v1, v0}, Lcom/android/settings/applications/ProcessStatsPreference;->setOrder(I)V

    .line 185
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->Nh:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 169
    :cond_2
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->No:Ljava/util/Comparator;

    goto :goto_2

    .line 176
    :cond_3
    iget-wide v0, v13, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mf:D

    iget-wide v2, v13, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mg:D

    mul-double v4, v0, v2

    goto :goto_3

    :cond_4
    move v10, v11

    .line 182
    goto :goto_5

    .line 187
    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->t:Landroid/content/pm/PackageManager;

    .line 68
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    .line 69
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Nh:Landroid/preference/PreferenceGroup;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 76
    const/4 v0, 0x1

    const v1, 0x7f0a0b2c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Nj:Landroid/view/MenuItem;

    .line 77
    const/4 v0, 0x2

    const v1, 0x7f0a0b2d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Nk:Landroid/view/MenuItem;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->lv()V

    .line 79
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 86
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Ni:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Ni:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->ln()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->lv()V

    goto :goto_0

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 111
    instance-of v0, p2, Lcom/android/settings/applications/ProcessStatsPreference;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_0
    move-object v0, p2

    .line 114
    check-cast v0, Lcom/android/settings/applications/ProcessStatsPreference;

    .line 115
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->JC:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->lk()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v2

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/hs;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcessStatsPreference;->lu()Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/applications/ProcessStatsUi;->a(Lcom/android/settings/hs;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method
