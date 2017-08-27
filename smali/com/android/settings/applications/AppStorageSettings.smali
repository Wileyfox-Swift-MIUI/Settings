.class public Lcom/android/settings/applications/AppStorageSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/b/a/s;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private HA:Landroid/preference/Preference;

.field private HB:Landroid/preference/Preference;

.field private HC:Landroid/preference/Preference;

.field private HD:Landroid/preference/Preference;

.field private HE:Landroid/preference/Preference;

.field private HF:Landroid/widget/Button;

.field private HG:Landroid/widget/Button;

.field private HH:Landroid/preference/Preference;

.field private HI:Landroid/widget/Button;

.field private HJ:Z

.field private HK:Z

.field private HL:J

.field private HM:J

.field private HN:J

.field private HO:J

.field private HP:J

.field private HQ:J

.field private HR:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

.field private HS:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

.field private HT:Ljava/lang/CharSequence;

.field private HU:Ljava/lang/CharSequence;

.field private HV:[Landroid/os/storage/VolumeInfo;

.field private HW:Landroid/app/AlertDialog$Builder;

.field private Hz:Landroid/preference/Preference;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 55
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HJ:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HK:Z

    .line 107
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HL:J

    .line 108
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HM:J

    .line 109
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HN:J

    .line 110
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HO:J

    .line 111
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HP:J

    .line 112
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HQ:J

    .line 457
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$3;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    .line 509
    return-void
.end method

.method public static a(Lcom/android/b/a/o;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 475
    iget-wide v0, p0, Lcom/android/b/a/o;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/b/a/o;->size:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 477
    :cond_0
    const v0, 0x7f0a0596

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const v0, 0x7f0a0abf

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    const v1, 0x7f0a0ab8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->b(Lcom/android/b/a/o;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_2
    const v0, 0x7f0a0abe

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->kl()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/AppStorageSettings;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    return-object v0
.end method

.method private static b(Lcom/android/b/a/o;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 489
    iget-wide v0, p0, Lcom/android/b/a/o;->size:J

    .line 490
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 491
    const v0, 0x7f0a0597

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 493
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 408
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 409
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 410
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    const v3, 0x7f0a0561

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 411
    if-ne v0, v4, :cond_0

    .line 412
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

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

    .line 413
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FX:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private kf()V
    .locals 3

    .prologue
    const v2, 0x7f13006b

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0596

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HU:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0597

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HT:Ljava/lang/CharSequence;

    .line 148
    const-string v0, "total_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->Hz:Landroid/preference/Preference;

    .line 149
    const-string v0, "app_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HA:Landroid/preference/Preference;

    .line 150
    const-string v0, "data_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HB:Landroid/preference/Preference;

    .line 151
    const-string v0, "external_code_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HC:Landroid/preference/Preference;

    .line 152
    const-string v0, "external_data_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HD:Landroid/preference/Preference;

    .line 154
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "storage_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 156
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->HC:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->HD:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    :cond_0
    const-string v0, "clear_data_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    .line 162
    const-string v0, "storage_used"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HH:Landroid/preference/Preference;

    .line 163
    const-string v0, "change_storage_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HI:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HI:Landroid/widget/Button;

    const v1, 0x7f0a0ac3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HI:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const-string v0, "cache_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HE:Landroid/preference/Preference;

    .line 170
    const-string v0, "clear_cache_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HG:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HG:Landroid/widget/Button;

    const v1, 0x7f0a0553

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 173
    return-void
.end method

.method private kg()Z
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->isPackageFrozen(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 205
    :goto_0
    return v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kh()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v4, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 236
    :cond_0
    iput-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HQ:J

    iput-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HP:J

    iput-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HM:J

    iput-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HL:J

    .line 237
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HK:Z

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HA:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->HU:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HB:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->HU:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HE:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->HU:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->Hz:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->HU:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HG:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 294
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FW:Z

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HG:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    :cond_2
    return-void

    .line 247
    :cond_3
    iput-boolean v9, p0, Lcom/android/settings/applications/AppStorageSettings;->HK:Z

    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v2, v0, Lcom/android/b/a/o;->codeSize:J

    .line 249
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->dataSize:J

    .line 250
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 251
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalCodeSize:J

    add-long/2addr v2, v4

    .line 252
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalDataSize:J

    add-long/2addr v0, v4

    .line 263
    :cond_4
    :goto_1
    iget-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HL:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_5

    .line 264
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HL:J

    .line 265
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HA:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/AppStorageSettings;->l(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    :cond_5
    iget-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HM:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_6

    .line 268
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HM:J

    .line 269
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HB:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->l(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->cacheSize:J

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->externalCacheSize:J

    add-long/2addr v0, v2

    .line 272
    iget-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HP:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_7

    .line 273
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HP:J

    .line 274
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HE:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->l(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    :cond_7
    iget-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HQ:J

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 277
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->size:J

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HQ:J

    .line 278
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->Hz:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v4, v3, Lcom/android/b/a/o;->size:J

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/AppStorageSettings;->l(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    :cond_8
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->dataSize:J

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalDataSize:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-lez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HJ:Z

    if-nez v2, :cond_c

    .line 282
    :cond_9
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 287
    :goto_2
    cmp-long v0, v0, v10

    if-gtz v0, :cond_d

    .line 288
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HG:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 254
    :cond_a
    iget-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HN:J

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v6, v6, Lcom/android/b/a/o;->externalCodeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    .line 255
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalCodeSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HN:J

    .line 256
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HC:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v6, v5, Lcom/android/b/a/o;->externalCodeSize:J

    invoke-direct {p0, v6, v7}, Lcom/android/settings/applications/AppStorageSettings;->l(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    :cond_b
    iget-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HO:J

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v6, v6, Lcom/android/b/a/o;->externalDataSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 259
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalDataSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HO:J

    .line 260
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->HD:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-wide v6, v5, Lcom/android/b/a/o;->externalDataSize:J

    invoke-direct {p0, v6, v7}, Lcom/android/settings/applications/AppStorageSettings;->l(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 284
    :cond_c
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 290
    :cond_d
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HG:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HG:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private ki()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->kk()V

    .line 320
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->kj()V

    .line 321
    return-void
.end method

.method private kj()V
    .locals 4

    .prologue
    const v3, 0x7f0a0561

    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->js:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 334
    iput-boolean v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HJ:Z

    .line 344
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FW:Z

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    :cond_1
    return-void

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    const v1, 0x7f0a0574

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 341
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private kk()V
    .locals 7

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 351
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 353
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v4

    .line 355
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 356
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 358
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/CharSequence;

    .line 359
    const/4 v2, -0x1

    .line 360
    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 361
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 362
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->HH:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v2

    .line 365
    :cond_0
    aput-object v1, v5, v2

    .line 360
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 367
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/VolumeInfo;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/VolumeInfo;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HV:[Landroid/os/storage/VolumeInfo;

    .line 368
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0ac4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a017a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HW:Landroid/app/AlertDialog$Builder;

    .line 377
    :goto_1
    return-void

    .line 373
    :cond_2
    const-string v0, "storage_used"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->X(Ljava/lang/String;)V

    .line 374
    const-string v0, "change_storage_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->X(Ljava/lang/String;)V

    .line 375
    const-string v0, "storage_space"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->X(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private kl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 384
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 387
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

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

    .line 388
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HS:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HS:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 393
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HS:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 394
    if-nez v0, :cond_1

    .line 396
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/applications/AppStorageSettings;->e(II)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    const v1, 0x7f0a0582

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private l(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HT:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 498
    const/16 v0, 0x13

    return v0
.end method

.method public ap(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->kh()V

    .line 455
    :cond_0
    return-void
.end method

.method protected f(II)Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f0a0585

    .line 421
    packed-switch p1, :pswitch_data_0

    .line 447
    :goto_0
    return-object v0

    .line 423
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0583

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0584

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/AppStorageSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0586

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 435
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a058c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a058d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$2;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jP()Z
    .locals 3

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->jO()Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->kh()V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 311
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HH:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->ki()V

    .line 315
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->HV:[Landroid/os/storage/VolumeInfo;

    aget-object v1, v1, p2

    .line 215
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 217
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 223
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 224
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HG:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HR:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HR:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->t:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->HR:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HF:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 185
    invoke-static {}, Lcom/android/settings/iH;->iE()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->FY:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 192
    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->e(II)V

    goto :goto_0

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HI:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HW:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->kg()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->HW:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->addPreferencesFromResource(I)V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->kf()V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->FX:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    .line 141
    return-void
.end method
