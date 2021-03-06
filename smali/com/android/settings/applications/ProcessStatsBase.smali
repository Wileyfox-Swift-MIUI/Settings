.class public abstract Lcom/android/settings/applications/ProcessStatsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProcessStatsBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final Mw:J

.field protected static Mx:[J

.field protected static My:[I


# instance fields
.field protected JC:Lcom/android/settings/applications/ProcStatsData;

.field private KQ:Landroid/widget/Spinner;

.field private MA:Landroid/widget/ArrayAdapter;

.field protected MB:I

.field private Mz:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const-wide/16 v6, 0x2

    .line 46
    sget-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings/applications/ProcessStatsBase;->Mw:J

    .line 47
    new-array v0, v8, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xa4cb80

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsBase;->Mw:J

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, 0x1499700

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsBase;->Mw:J

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/32 v2, 0x2932e00

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsBase;->Mw:J

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/32 v2, 0x5265c00

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsBase;->Mw:J

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsBase;->Mx:[J

    .line 51
    new-array v0, v8, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsBase;->My:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a075a
        0x7f0a075b
        0x7f0a075c
        0x7f0a075d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/hs;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 133
    const-string v0, "package_entry"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    const-string v0, "weight_to_ram"

    iget-wide v6, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mg:D

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 135
    const-string v0, "total_time"

    iget-wide v6, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->LR:J

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 136
    const-string v0, "max_memory_usage"

    iget-wide v6, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mf:D

    iget-wide v8, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mg:D

    mul-double/2addr v6, v8

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 138
    const-string v0, "total_scale"

    iget-wide v6, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Mi:D

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 139
    const-class v0, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0b27

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hs;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 141
    return-void
.end method


# virtual methods
.method public abstract ln()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 68
    new-instance v3, Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    const-string v0, "transfer_stats"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {v3, v4, v0}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsBase;->JC:Lcom/android/settings/applications/ProcStatsData;

    .line 71
    if-eqz p1, :cond_2

    const-string v0, "duration_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->MB:I

    .line 74
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsBase;->JC:Lcom/android/settings/applications/ProcStatsData;

    if-eqz p1, :cond_4

    const-string v0, "duration"

    sget-object v3, Lcom/android/settings/applications/ProcessStatsBase;->Mx:[J

    aget-wide v4, v3, v1

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_2
    invoke-virtual {v2, v0, v1}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 76
    return-void

    :cond_1
    move v0, v1

    .line 68
    goto :goto_0

    .line 71
    :cond_2
    if-eqz v2, :cond_3

    const-string v0, "duration_index"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    .line 74
    :cond_4
    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->Mx:[J

    aget-wide v0, v0, v1

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->JC:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->li()V

    .line 98
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 117
    iput p3, p0, Lcom/android/settings/applications/ProcessStatsBase;->MB:I

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->JC:Lcom/android/settings/applications/ProcStatsData;

    sget-object v1, Lcom/android/settings/applications/ProcessStatsBase;->Mx:[J

    aget-wide v2, v1, p3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->ln()V

    .line 120
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->KQ:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->JC:Lcom/android/settings/applications/ProcStatsData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcStatsData;->at(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->ln()V

    .line 90
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "duration"

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->JC:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    const-string v0, "duration_index"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->MB:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsBase;->ah(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->Mz:Landroid/view/ViewGroup;

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->Mz:Landroid/view/ViewGroup;

    const v1, 0x7f13003f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->KQ:Landroid/widget/Spinner;

    .line 105
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040085

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->MA:Landroid/widget/ArrayAdapter;

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->MA:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 107
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->MA:Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/android/settings/applications/ProcessStatsBase;->My:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ProcessStatsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->KQ:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->MA:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->KQ:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->MB:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->KQ:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 113
    return-void
.end method
