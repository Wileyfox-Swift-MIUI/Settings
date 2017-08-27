.class public Lcom/android/settings/MiuiSecuritySettings;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private dD:Lcom/android/settings/aL;

.field private dE:Landroid/app/admin/DevicePolicyManager;

.field private sZ:Landroid/preference/ListPreference;

.field private ta:Landroid/preference/CheckBoxPreference;

.field private tb:Landroid/preference/CheckBoxPreference;

.field private tc:Landroid/preference/CheckBoxPreference;

.field private td:Landroid/preference/Preference;

.field private te:Landroid/preference/Preference;

.field private tf:Landroid/preference/PreferenceCategory;

.field private tg:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private G(I)V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->J(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private J(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 246
    return-void
.end method

.method private L(Z)V
    .locals 3

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_wake_screen"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 414
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private M(Z)V
    .locals 3

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_launch_camera"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    return-void

    .line 422
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private X(I)V
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 228
    const v0, 0x7f0a1123

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->G(I)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    const/16 v1, 0x6b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 329
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v0

    .line 331
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 332
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 333
    cmp-long v4, p2, v4

    if-ltz v4, :cond_0

    move v1, v0

    .line 331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    aget-object v0, v2, v1

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecuritySettings;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecuritySettings;->X(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecuritySettings;)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fO()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiSecuritySettings;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fZ()V

    return-void
.end method

.method private d(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 292
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private fO()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dD:Lcom/android/settings/aL;

    invoke-virtual {v0}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dH;->f(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    .line 250
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fZ()V
    .locals 6

    .prologue
    .line 222
    const-string v2, "com.android.settings.FingerprintManageSetting$FingerprintManageFragment"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7f0a1228

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 224
    return-void
.end method

.method private ga()V
    .locals 4

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 299
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->gc()V

    .line 302
    return-void
.end method

.method private gb()V
    .locals 8

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 307
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    .line 309
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 311
    const-string v0, ""

    .line 321
    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    .line 322
    const v0, 0x7f0a0d67

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    return-void

    .line 313
    :cond_1
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_3

    .line 315
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0a03a9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private gc()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x7ffffffe

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 344
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 345
    :goto_0
    const-string v7, "oled"

    const-string v8, "ro.display.type"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 346
    if-eqz v7, :cond_9

    .line 347
    cmp-long v7, v0, v2

    if-nez v7, :cond_1

    move-wide v0, v4

    :goto_1
    move-wide v4, v0

    .line 349
    :goto_2
    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 383
    :goto_3
    return-void

    :cond_0
    move-wide v0, v2

    .line 344
    goto :goto_0

    .line 347
    :cond_1
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 353
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 356
    :goto_4
    array-length v8, v2

    if-ge v0, v8, :cond_4

    .line 357
    aget-object v8, v2, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 358
    cmp-long v8, v8, v4

    if-gtz v8, :cond_3

    .line 359
    aget-object v8, v1, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    aget-object v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 363
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v1

    if-ne v0, v1, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v2

    if-eq v0, v1, :cond_6

    .line 364
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 365
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 367
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 369
    int-to-long v8, v1

    cmp-long v0, v8, v4

    if-gtz v0, :cond_8

    .line 370
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 382
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v6, 0x1

    :cond_7
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 371
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 375
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-wide v4, v0

    goto/16 :goto_2
.end method

.method private gd()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volumekey_wake_screen"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private ge()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_launch_camera"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 212
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fZ()V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance v0, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dD:Lcom/android/settings/aL;

    .line 86
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dE:Landroid/app/admin/DevicePolicyManager;

    .line 87
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_0

    .line 93
    const v0, 0x7f0400d6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 388
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 390
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 392
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->gb()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 255
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->dD:Lcom/android/settings/aL;

    invoke-virtual {v1}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 258
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 260
    const-string v0, "add_keyguard_password_then_add_fingerprint"

    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fO()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    const-string v2, "com.android.settings.MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment"

    const/4 v3, -0x1

    const v5, 0x7f0a1101

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 288
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 263
    :cond_2
    const-string v2, "lockenabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    const-string v2, "power_button_instantly_locks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings/dH;->c(Lcom/android/internal/widget/LockPatternUtils;Z)V

    goto :goto_0

    .line 268
    :cond_3
    const-string v1, "keyguard_shortcut_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    const-string v2, "com.android.settings.KeyguardShortcutSettings"

    const v5, 0x7f0a11d8

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 271
    :cond_4
    const-string v1, "wakeup_for_keyguard_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wakeup_for_keyguard_notification"

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 275
    :cond_5
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->tb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 276
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->tb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->L(Z)V

    goto :goto_0

    .line 277
    :cond_6
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->tc:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 278
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->tc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->M(Z)V

    goto :goto_0

    .line 279
    :cond_7
    const-string v1, "privacy_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/privacypassword/TransparentHelper;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    :cond_8
    const-string v1, "keyguard_advance_setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const-string v2, "com.android.settings.KeyguardAdvancedSettings"

    const v5, 0x7f0a121c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const v4, 0x7f0a121b

    const v3, 0x7f0a121a

    .line 102
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 109
    :cond_0
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 111
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 114
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ta:Landroid/preference/CheckBoxPreference;

    .line 118
    const-string v0, "screen_timeout"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    .line 119
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sZ:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->ga()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->gb()V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dD:Lcom/android/settings/aL;

    invoke-virtual {v0}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ta:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ta:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/settings/dH;->m(Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    const-string v0, "security_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ta:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_3

    .line 135
    :cond_3
    new-instance v1, Lcom/android/settings/dc;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settings/dc;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v1}, Lcom/android/settings/dc;->isHardwareDetected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->tg:Z

    .line 137
    const-string v0, "fingerprint_first_open_screen_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->tf:Landroid/preference/PreferenceCategory;

    .line 138
    const-string v0, "add_or_manage_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->td:Landroid/preference/Preference;

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->tg:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_6

    .line 140
    invoke-virtual {v1}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v0

    .line 141
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->td:Landroid/preference/Preference;

    new-instance v2, Lcom/android/settings/fh;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/fh;-><init>(Lcom/android/settings/MiuiSecuritySettings;I)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->td:Landroid/preference/Preference;

    const v1, 0x7f0a1111

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 171
    :goto_1
    const-string v0, "unlock_set_or_change"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_8

    .line 173
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fO()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 183
    :goto_2
    const-string v0, "privacy_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->te:Landroid/preference/Preference;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->cg(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->um()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->te:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 191
    :goto_3
    const-string v0, "wakeup_for_keyguard_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wakeup_for_keyguard_notification"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    const-string v0, "pref_volume_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->tb:Landroid/preference/CheckBoxPreference;

    .line 199
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->tb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->gd()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    const-string v0, "pref_volume_launch_camera"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->tc:Landroid/preference/CheckBoxPreference;

    .line 202
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->tc:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->ge()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    return-void

    .line 141
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_0

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->td:Landroid/preference/Preference;

    const v1, 0x7f0a1110

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 168
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->tf:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 176
    :cond_7
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 179
    :cond_8
    const-string v0, "security_second_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 180
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 188
    :cond_9
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->te:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3
.end method
