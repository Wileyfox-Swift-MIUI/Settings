.class public Lcom/android/settings/display/PaperModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaperModeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/display/C;


# static fields
.field private static abi:I

.field private static abj:I


# instance fields
.field private abb:Landroid/database/ContentObserver;

.field private abc:Landroid/database/ContentObserver;

.field private abd:Landroid/database/ContentObserver;

.field private abe:Lcom/android/settings/dndmode/LabelPreference;

.field private abf:Lcom/android/settings/dndmode/LabelPreference;

.field private abg:Landroid/preference/CheckBoxPreference;

.field private abh:Landroid/preference/CheckBoxPreference;

.field private abk:Z

.field private abl:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/display/PaperModeFragment;->abk:Z

    .line 107
    new-instance v0, Lcom/android/settings/display/y;

    invoke-direct {v0, p0}, Lcom/android/settings/display/y;-><init>(Lcom/android/settings/display/PaperModeFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abl:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/PaperModeFragment;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->bP(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/display/PaperModeFragment;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/display/PaperModeFragment;->abk:Z

    return v0
.end method

.method private aO(Z)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 293
    return-void
.end method

.method private aP(Z)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 298
    return-void
.end method

.method static synthetic b(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bN(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 301
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->qe()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 302
    const-string v0, "persist.sys.eyecare_cache"

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->qf()I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_paper_mode_time_enabled"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    :cond_0
    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->bu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {v5}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    .line 314
    :cond_1
    return-void
.end method

.method private bO(I)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    return-void
.end method

.method private bP(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->bQ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bQ(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic bR(I)I
    .locals 0

    .prologue
    .line 67
    sput p0, Lcom/android/settings/display/PaperModeFragment;->abi:I

    return p0
.end method

.method static synthetic bS(I)I
    .locals 0

    .prologue
    .line 67
    sput p0, Lcom/android/settings/display/PaperModeFragment;->abj:I

    return p0
.end method

.method public static bu(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bv(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abe:Lcom/android/settings/dndmode/LabelPreference;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abf:Lcom/android/settings/dndmode/LabelPreference;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/display/PaperModeFragment;)I
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->qf()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/android/settings/display/PaperModeFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abh:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic hM()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/settings/display/PaperModeFragment;->abi:I

    return v0
.end method

.method private qe()I
    .locals 2

    .prologue
    .line 317
    const-string v0, "persist.sys.eyecare_cache"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private qf()I
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic qg()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/settings/display/PaperModeFragment;->abj:I

    return v0
.end method


# virtual methods
.method public a(Lmiui/preference/RadioButtonPreference;)V
    .locals 6

    .prologue
    .line 271
    invoke-virtual {p1}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "pape_mode_local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-class v0, Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0a0f01

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/display/PaperModeFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 276
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-class v0, Lcom/android/settings/display/PaperModeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->addPreferencesFromResource(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    .line 135
    const-string v0, "paper_mode_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abh:Landroid/preference/CheckBoxPreference;

    .line 137
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abh:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->bu(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    const-string v0, "paper_mode_time_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abg:Landroid/preference/CheckBoxPreference;

    .line 142
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abg:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->bv(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/H;->bz(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/display/PaperModeFragment;->abi:I

    .line 146
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/H;->bA(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/display/PaperModeFragment;->abj:I

    .line 147
    const-string v0, "paper_mode_start_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abe:Lcom/android/settings/dndmode/LabelPreference;

    .line 148
    const-string v0, "paper_mode_end_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abf:Lcom/android/settings/dndmode/LabelPreference;

    .line 149
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abe:Lcom/android/settings/dndmode/LabelPreference;

    sget v1, Lcom/android/settings/display/PaperModeFragment;->abi:I

    invoke-direct {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->bP(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abf:Lcom/android/settings/dndmode/LabelPreference;

    sget v1, Lcom/android/settings/display/PaperModeFragment;->abj:I

    invoke-direct {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->bP(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abe:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abf:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    const-string v0, "paper_mode_adjust_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SeekBarPreference;

    .line 156
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    .line 157
    invoke-virtual {v0}, Lcom/android/settings/SeekBarPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "paper_mode_adjust_level"

    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->qe()I

    move-result v5

    mul-int/lit8 v5, v5, 0xe

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 159
    invoke-virtual {v0, v2}, Lcom/android/settings/SeekBarPreference;->W(Z)V

    .line 161
    invoke-virtual {v0, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    const-string v0, "pape_mode_global"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/PaperModePreference;

    .line 165
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->qf()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/display/PaperModePreference;->setChecked(Z)V

    .line 166
    invoke-virtual {v0, p0}, Lcom/android/settings/display/PaperModePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 167
    const-string v1, "pape_mode_local"

    invoke-virtual {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/PaperModePreference;

    .line 169
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->qf()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/settings/display/PaperModePreference;->setChecked(Z)V

    .line 170
    invoke-virtual {v1, p0}, Lcom/android/settings/display/PaperModePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    invoke-virtual {v1, p0}, Lcom/android/settings/display/PaperModePreference;->a(Lcom/android/settings/display/C;)V

    .line 172
    invoke-virtual {v1, v2}, Lcom/android/settings/display/PaperModePreference;->setShowRightArrow(Z)V

    .line 174
    new-instance v2, Lcom/android/settings/display/z;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4, v0, v1}, Lcom/android/settings/display/z;-><init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;Lcom/android/settings/display/PaperModePreference;Lcom/android/settings/display/PaperModePreference;)V

    iput-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->abb:Landroid/database/ContentObserver;

    .line 185
    new-instance v0, Lcom/android/settings/display/A;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/A;-><init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abd:Landroid/database/ContentObserver;

    .line 192
    new-instance v0, Lcom/android/settings/display/B;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/B;-><init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abc:Landroid/database/ContentObserver;

    .line 203
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->abd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->abb:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_start"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->abc:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_end"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->abc:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    return-void

    :cond_0
    move v1, v3

    .line 165
    goto/16 :goto_0

    :cond_1
    move v4, v3

    .line 169
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->abb:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->abc:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 345
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->abd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abb:Landroid/database/ContentObserver;

    .line 347
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 348
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v1, "paper_mode_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->abh:Landroid/preference/CheckBoxPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->aO(Z)V

    .line 235
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_1
    const-string v1, "paper_mode_time_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 227
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->aP(Z)V

    .line 228
    const-string v1, "ScreenEffect"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PapermodeTimeControl"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "on"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abg:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/H;->bw(Landroid/content/Context;)V

    goto :goto_0

    .line 228
    :cond_2
    const-string v0, "off"

    goto :goto_1

    .line 231
    :cond_3
    const-string v1, "paper_mode_adjust_level"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 233
    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x41600000    # 14.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->bN(I)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 240
    new-instance v0, Lmiui/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->abl:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    sget v3, Lcom/android/settings/display/PaperModeFragment;->abi:I

    div-int/lit8 v3, v3, 0x3c

    sget v4, Lcom/android/settings/display/PaperModeFragment;->abi:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 243
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string v2, "pape_mode_global"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-direct {p0, v5}, Lcom/android/settings/display/PaperModeFragment;->bO(I)V

    .line 265
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->abb:Landroid/database/ContentObserver;

    invoke-virtual {v0, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 266
    return v6

    .line 246
    :cond_1
    const-string v2, "pape_mode_local"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->bO(I)V

    goto :goto_0

    .line 248
    :cond_2
    const-string v2, "paper_mode_start_time"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 249
    iput-boolean v6, p0, Lcom/android/settings/display/PaperModeFragment;->abk:Z

    .line 250
    sget v1, Lcom/android/settings/display/PaperModeFragment;->abi:I

    if-lez v1, :cond_3

    .line 251
    sget v1, Lcom/android/settings/display/PaperModeFragment;->abi:I

    div-int/lit8 v1, v1, 0x3c

    sget v2, Lcom/android/settings/display/PaperModeFragment;->abi:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    .line 255
    :goto_1
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {v0, v6, v6}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_1

    .line 256
    :cond_4
    const-string v2, "paper_mode_end_time"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iput-boolean v5, p0, Lcom/android/settings/display/PaperModeFragment;->abk:Z

    .line 258
    sget v1, Lcom/android/settings/display/PaperModeFragment;->abj:I

    if-lez v1, :cond_5

    .line 259
    sget v1, Lcom/android/settings/display/PaperModeFragment;->abj:I

    div-int/lit8 v1, v1, 0x3c

    sget v2, Lcom/android/settings/display/PaperModeFragment;->abj:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    .line 263
    :goto_2
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_0

    .line 261
    :cond_5
    invoke-virtual {v0, v6, v6}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 352
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 353
    return-void
.end method
