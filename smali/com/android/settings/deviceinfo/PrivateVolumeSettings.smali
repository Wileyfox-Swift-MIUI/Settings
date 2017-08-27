.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# static fields
.field private static final XV:[I

.field private static final XW:[I


# instance fields
.field private WA:Landroid/os/storage/StorageManager;

.field private XX:Ljava/lang/String;

.field private XY:Landroid/os/storage/VolumeInfo;

.field private XZ:Lcom/android/b/d/a;

.field private Xq:Landroid/os/storage/VolumeInfo;

.field private Xr:Lcom/android/settings/deviceinfo/UsageBarPreference;

.field private Xw:J

.field private Ya:Landroid/content/pm/UserInfo;

.field public Yb:Ljava/util/List;

.field private Yc:Lcom/android/settings/fE;

.field private Yd:Ljava/util/List;

.field private Ye:Ljava/util/List;

.field private Yf:I

.field private Yg:I

.field private Yh:Landroid/preference/Preference;

.field private final Yi:Lcom/android/b/d/g;

.field private final Yj:Landroid/os/storage/StorageEventListener;

.field private Yk:Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;

.field private Yl:Landroid/preference/PreferenceCategory;

.field private tE:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0a0408

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XV:[I

    .line 118
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XW:[I

    return-void

    :array_0
    .array-data 4
        0x7f0a0408
        0x7f0a040b
        0x7f0a040c
        0x7f0a040e
        0x7f0a040d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 143
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yb:Ljava/util/List;

    .line 146
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yd:Ljava/util/List;

    .line 147
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Ye:Ljava/util/List;

    .line 636
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yi:Lcom/android/b/d/g;

    .line 728
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yj:Landroid/os/storage/StorageEventListener;

    .line 904
    return-void
.end method

.method private static varargs a(Lcom/android/b/d/d;I[Ljava/lang/String;)J
    .locals 8

    .prologue
    .line 714
    const-wide/16 v2, 0x0

    .line 715
    iget-object v0, p0, Lcom/android/b/d/d;->aMa:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 716
    if-eqz v0, :cond_1

    .line 717
    array-length v5, p2

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, p2, v4

    .line 718
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 719
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 717
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 723
    :cond_1
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_2
    return-wide v2
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;
    .locals 4

    .prologue
    .line 366
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yf:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Ye:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Ye:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yf:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 373
    :goto_0
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 375
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 376
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yf:I

    .line 377
    return-object v0

    .line 369
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/android/internal/R$attr;->preferenceCategoryStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Ye:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yg:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yd:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yg:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 396
    :goto_0
    if-eqz p3, :cond_2

    .line 397
    invoke-virtual {v0, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    :goto_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eq p4, v1, :cond_0

    .line 434
    const v1, 0x7f020213

    iput v1, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 435
    const v1, 0x7f020217

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 439
    :cond_0
    const v1, 0x7f0a0407

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 440
    iput p4, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 441
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 442
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yg:I

    .line 443
    return-void

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->pF()Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    :cond_2
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 403
    :pswitch_1
    const v1, 0x7f02020c

    iput v1, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 404
    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 405
    const v1, 0x7f0a0408

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1

    .line 408
    :pswitch_2
    const v1, 0x7f02020f

    iput v1, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 409
    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 410
    const v1, 0x7f0a040b

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1

    .line 413
    :pswitch_3
    const v1, 0x7f02020d

    iput v1, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 414
    const v1, 0x7f02020b

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 415
    const v1, 0x7f0a040c

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1

    .line 418
    :pswitch_4
    const v1, 0x7f020212

    iput v1, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 419
    const v1, 0x7f020216

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 420
    const v1, 0x7f0a040d

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1

    .line 423
    :pswitch_5
    const v1, 0x7f02020e

    iput v1, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 424
    const v1, 0x7f020214

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 425
    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 426
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0408
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 1

    .prologue
    .line 360
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 361
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 362
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;ZI)V
    .locals 4

    .prologue
    .line 381
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XW:[I

    .line 382
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 383
    aget v2, v0, v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    :cond_0
    sget-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XV:[I

    goto :goto_0

    .line 385
    :cond_1
    return-void
.end method

.method private a(Lcom/android/b/d/d;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xr:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    move v1, v2

    .line 646
    :goto_0
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yg:I

    if-ge v1, v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 648
    iget v3, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 649
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getTitleRes()I

    move-result v4

    .line 650
    sparse-switch v4, :sswitch_data_0

    .line 646
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 654
    :sswitch_0
    iget-object v4, p1, Lcom/android/b/d/d;->aLZ:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 659
    :sswitch_1
    new-array v4, v9, [Ljava/lang/String;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v5, v4, v2

    sget-object v5, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {p1, v3, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/b/d/d;I[Ljava/lang/String;)J

    move-result-wide v4

    .line 662
    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 665
    :sswitch_2
    new-array v4, v7, [Ljava/lang/String;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {p1, v3, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/b/d/d;I[Ljava/lang/String;)J

    move-result-wide v4

    .line 667
    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 672
    :sswitch_3
    iget-object v3, p1, Lcom/android/b/d/d;->aMb:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 677
    :sswitch_4
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v5, v4, v2

    sget-object v5, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v5, v4, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v5, v4, v9

    const/4 v5, 0x4

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {p1, v3, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/b/d/d;I[Ljava/lang/String;)J

    move-result-wide v4

    .line 681
    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 686
    :sswitch_5
    iget-wide v4, p1, Lcom/android/b/d/d;->cacheSize:J

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 689
    :sswitch_6
    iget-object v4, p1, Lcom/android/b/d/d;->aMc:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 690
    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xr:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 696
    return-void

    .line 650
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x7f0a0408 -> :sswitch_0
        0x7f0a040b -> :sswitch_1
        0x7f0a040c -> :sswitch_4
        0x7f0a040d -> :sswitch_3
        0x7f0a040e -> :sswitch_5
        0x7f0a044c -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/android/b/d/d;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/b/d/d;)V

    return-void
.end method

.method private a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 6

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yc:Lcom/android/settings/fE;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/settings/fE;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 702
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 703
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xr:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xw:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/deviceinfo/UsageBarPreference;->b(IFI)V

    .line 705
    return-void
.end method

.method private a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2

    .prologue
    .line 708
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/os/storage/VolumeInfo;)Z
    .locals 1

    .prologue
    .line 933
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 938
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 936
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Landroid/os/storage/VolumeInfo;)Z
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method private by(I)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 451
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 452
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 453
    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->WA:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private c(Landroid/preference/PreferenceGroup;)V
    .locals 3

    .prologue
    const v2, 0x7f0a1038

    .line 337
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 339
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 340
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 342
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 343
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 344
    return-void
.end method

.method private pE()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 159
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pF()Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2

    .prologue
    .line 446
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 447
    return-object v0
.end method

.method private x(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 347
    const/16 v1, 0x63

    .line 348
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 349
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 351
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-eq v3, v4, :cond_1

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_0

    .line 353
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 356
    :cond_2
    return-void
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x2a

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 174
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->tE:Landroid/os/UserManager;

    .line 175
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->WA:Landroid/os/storage/StorageManager;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    const-string v3, "private"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XX:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->WA:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    .line 183
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->WA:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XY:Landroid/os/storage/VolumeInfo;

    .line 185
    new-instance v0, Lcom/android/b/d/a;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XY:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/b/d/a;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XZ:Lcom/android/b/d/a;

    .line 186
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XZ:Lcom/android/b/d/a;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yi:Lcom/android/b/d/g;

    invoke-virtual {v0, v2}, Lcom/android/b/d/a;->a(Lcom/android/b/d/g;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->pE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 209
    :goto_0
    return-void

    .line 193
    :cond_0
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 196
    const-string v0, "storage_internal"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yl:Landroid/preference/PreferenceCategory;

    .line 197
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yc:Lcom/android/settings/fE;

    .line 201
    new-instance v0, Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xr:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 202
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->tE:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Ya:Landroid/content/pm/UserInfo;

    .line 204
    const v0, 0x7f0a042b

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->by(I)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yh:Landroid/preference/Preference;

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 487
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 488
    const v0, 0x7f140009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 489
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 479
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 480
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XZ:Lcom/android/b/d/a;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XZ:Lcom/android/b/d/a;

    invoke-virtual {v0}, Lcom/android/b/d/a;->onDestroy()V

    .line 483
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 528
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 529
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 552
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 531
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->b(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    move v0, v6

    .line 532
    goto :goto_0

    .line 534
    :pswitch_1
    new-instance v1, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v6

    .line 535
    goto :goto_0

    .line 537
    :pswitch_2
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0424

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v6

    .line 540
    goto :goto_0

    .line 542
    :pswitch_3
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0425

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v6

    .line 545
    goto :goto_0

    .line 547
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 550
    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x7f130424
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 473
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 474
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->WA:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yj:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 475
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 559
    instance-of v0, p2, Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v0, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    move v7, v0

    .line 561
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    .line 563
    sparse-switch v0, :sswitch_data_0

    .line 619
    :goto_1
    const/4 v0, 0x0

    .line 620
    if-eqz v3, :cond_2

    .line 622
    if-ne v7, v8, :cond_1

    .line 623
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v9

    .line 633
    :goto_3
    return v0

    :cond_0
    move v7, v8

    .line 559
    goto :goto_0

    .line 565
    :sswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 566
    const-string v0, "classname"

    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "volumeUuid"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v0, "volumeName"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0a0afa

    const/4 v6, 0x0

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/iH;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    goto :goto_1

    .line 576
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "images_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 578
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 582
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "videos_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 584
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 588
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "audio_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 590
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :sswitch_4
    move v0, v9

    .line 597
    goto/16 :goto_3

    .line 603
    :sswitch_5
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->e(Landroid/app/Fragment;)V

    move v0, v9

    .line 604
    goto/16 :goto_3

    .line 608
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XY:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    goto/16 :goto_1

    .line 625
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 627
    :catch_0
    move-exception v0

    .line 628
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 633
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_3

    .line 563
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a040e -> :sswitch_5
        0x7f0a042b -> :sswitch_6
        0x7f0a044a -> :sswitch_0
        0x7f0a044b -> :sswitch_1
        0x7f0a044c -> :sswitch_2
        0x7f0a044d -> :sswitch_3
        0x7f0a044f -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 493
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->pE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 495
    :cond_0
    const v0, 0x7f130424

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 496
    const v0, 0x7f130425

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 497
    const v0, 0x7f130426

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 498
    const v0, 0x7f130427

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 499
    const v0, 0x7f130428

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 503
    const-string v0, "private"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 506
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 515
    :goto_1
    const v0, 0x7f0a0426

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 510
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_4
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 511
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 512
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v0, v2

    .line 509
    goto :goto_3

    :cond_3
    move v0, v2

    .line 510
    goto :goto_4

    :cond_4
    move v1, v2

    .line 520
    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 458
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 461
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->WA:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    .line 462
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->pE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->WA:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yj:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    goto :goto_0
.end method

.method public update()V
    .locals 14

    .prologue
    const v13, 0x7f0a0dc1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->pE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 333
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0a03e9

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 225
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 229
    new-instance v0, Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-direct {v0, v8}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xr:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 231
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yl:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 233
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yl:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v9, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yl:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xr:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->tE:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 242
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XY:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XY:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 244
    :goto_1
    iput v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yg:I

    .line 245
    iput v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yf:I

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "second_user_id"

    const/16 v5, -0x2710

    invoke-static {v0, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 251
    invoke-direct {p0, v10}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->x(Ljava/util/List;)V

    .line 252
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 253
    if-le v12, v2, :cond_2

    move v4, v2

    :goto_2
    move v7, v3

    move v6, v3

    .line 256
    :goto_3
    if-ge v7, v12, :cond_5

    .line 257
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 258
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Ya:Landroid/content/pm/UserInfo;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 263
    if-eqz v4, :cond_4

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v11, :cond_3

    invoke-virtual {p0, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-direct {p0, v9, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    .line 265
    :goto_5
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5, v1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;ZI)V

    .line 267
    add-int/lit8 v0, v6, 0x1

    .line 256
    :goto_6
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v6, v0

    goto :goto_3

    :cond_1
    move v1, v3

    .line 242
    goto :goto_1

    :cond_2
    move v4, v3

    .line 253
    goto :goto_2

    .line 263
    :cond_3
    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yl:Landroid/preference/PreferenceCategory;

    goto :goto_5

    .line 272
    :cond_5
    sub-int v0, v12, v6

    if-lez v0, :cond_8

    .line 273
    const v0, 0x7f0a0434

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    move v4, v3

    .line 275
    :goto_7
    if-ge v4, v12, :cond_8

    .line 276
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 281
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Ya:Landroid/content/pm/UserInfo;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 282
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v11, :cond_7

    invoke-virtual {p0, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5, v3, v1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 275
    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    .line 282
    :cond_7
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_8

    .line 289
    :cond_8
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->WA:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 291
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->WA:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v1

    .line 292
    :goto_a
    if-eqz v1, :cond_9

    .line 293
    invoke-static {v8, v0, v1}, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->a(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/DiskInfo;)Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yk:Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    .line 294
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yb:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yk:Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yk:Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    invoke-direct {p0, v9, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yk:Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->init()V

    goto :goto_9

    .line 291
    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    .line 302
    :cond_b
    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c(Landroid/preference/PreferenceGroup;)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 317
    sub-long v6, v4, v0

    .line 326
    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xr:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0d3e

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yc:Lcom/android/settings/fE;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11, v0, v1}, Lcom/android/settings/fE;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yc:Lcom/android/settings/fE;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/settings/fE;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    iput-wide v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Xw:J

    .line 331
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->Yl:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->XZ:Lcom/android/b/d/a;

    invoke-virtual {v0}, Lcom/android/b/d/a;->Bm()V

    goto/16 :goto_0

    :cond_c
    move v0, v6

    goto/16 :goto_6
.end method
