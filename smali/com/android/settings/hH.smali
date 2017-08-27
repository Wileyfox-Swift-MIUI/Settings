.class Lcom/android/settings/hH;
.super Landroid/widget/ArrayAdapter;
.source "SettingsFragment.java"


# instance fields
.field final synthetic AE:Lcom/android/settings/SettingsFragment;

.field private final AH:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field mList:Ljava/util/List;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private vF:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings/hH;->AE:Lcom/android/settings/SettingsFragment;

    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 414
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/hH;->AH:I

    .line 423
    iput-object p2, p0, Lcom/android/settings/hH;->mContext:Landroid/content/Context;

    .line 424
    iput-object p3, p0, Lcom/android/settings/hH;->mList:Ljava/util/List;

    .line 425
    iget-object v0, p0, Lcom/android/settings/hH;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/hH;->mInflater:Landroid/view/LayoutInflater;

    .line 426
    iget-object v0, p0, Lcom/android/settings/hH;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hH;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 427
    # invokes: Lcom/android/settings/SettingsFragment;->getLanguage()Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsFragment;->access$1400()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hH;->vF:Ljava/lang/String;

    .line 428
    return-void
.end method

.method private a(Lcom/android/settings/search/t;)I
    .locals 1

    .prologue
    .line 446
    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {p1}, Lcom/android/settings/search/t;->getType()I

    move-result v0

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/android/settings/hG;Lcom/android/settings/search/t;)V
    .locals 4

    .prologue
    .line 473
    invoke-virtual {p3}, Lcom/android/settings/search/t;->uJ()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {p3}, Lcom/android/settings/search/t;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 476
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/settings/hH;->AE:Lcom/android/settings/SettingsFragment;

    iget-object v2, p0, Lcom/android/settings/hH;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v2}, Lcom/android/settings/SettingsFragment;->l(Lcom/android/settings/SettingsFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/hH;->vF:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 479
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p2, Lcom/android/settings/hG;->lC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :cond_1
    invoke-virtual {p3}, Lcom/android/settings/search/t;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    iget-object v0, p2, Lcom/android/settings/hG;->AG:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/settings/search/t;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_2
    if-eqz p1, :cond_3

    .line 486
    new-instance v0, Lcom/android/settings/hI;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/hI;-><init>(Lcom/android/settings/hH;Lcom/android/settings/search/t;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    :cond_3
    return-void
.end method

.method private j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/hH;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/settings/hH;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/32 v2, 0x927c0

    invoke-static {p1, v0, v1, v2, v3}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 442
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ag(I)Lcom/android/settings/search/t;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/settings/hH;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/t;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/settings/hH;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/android/settings/hH;->ag(I)Lcom/android/settings/search/t;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 469
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/settings/hH;->ag(I)Lcom/android/settings/search/t;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/hH;->a(Lcom/android/settings/search/t;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/settings/hH;->ag(I)Lcom/android/settings/search/t;

    move-result-object v2

    .line 497
    invoke-direct {p0, v2}, Lcom/android/settings/hH;->a(Lcom/android/settings/search/t;)I

    move-result v3

    .line 499
    if-eqz p2, :cond_1

    .line 501
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hG;

    move-object v1, v0

    .line 526
    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 545
    :goto_1
    :pswitch_0
    return-object p2

    .line 503
    :cond_1
    new-instance v1, Lcom/android/settings/hG;

    invoke-direct {v1, v0}, Lcom/android/settings/hG;-><init>(Lcom/android/settings/hB;)V

    .line 504
    packed-switch v3, :pswitch_data_1

    move-object p2, v0

    .line 522
    :goto_2
    if-eqz p2, :cond_0

    .line 523
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 507
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/hH;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040140

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/hH;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lmiui/R$attr;->preferenceWithIconBackground:I

    invoke-static {v0, v4}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 510
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 511
    const v0, 0x7f1302cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/hG;->icon:Landroid/widget/ImageView;

    .line 512
    const v0, 0x7f1302cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/hG;->lC:Landroid/widget/TextView;

    .line 513
    const v0, 0x7f1302cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/hG;->AG:Landroid/widget/TextView;

    goto :goto_2

    .line 516
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/hH;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04013d

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 519
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/hH;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04013e

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 528
    :pswitch_4
    invoke-direct {p0, p2, v1, v2}, Lcom/android/settings/hH;->a(Landroid/view/View;Lcom/android/settings/hG;Lcom/android/settings/search/t;)V

    .line 529
    invoke-static {}, Lcom/android/settings/SettingsFragment;->hZ()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/settings/search/t;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_2

    .line 531
    iget-object v1, v1, Lcom/android/settings/hG;->icon:Landroid/widget/ImageView;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 533
    :cond_2
    iget-object v0, v1, Lcom/android/settings/hG;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/hH;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/settings/search/t;->uM()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/hH;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 537
    :pswitch_5
    invoke-direct {p0, p2, v1, v2}, Lcom/android/settings/hH;->a(Landroid/view/View;Lcom/android/settings/hG;Lcom/android/settings/search/t;)V

    .line 538
    iget-object v0, v1, Lcom/android/settings/hG;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 504
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x4

    return v0
.end method

.method public q(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/settings/hH;->mList:Ljava/util/List;

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/hH;->notifyDataSetChanged()V

    .line 433
    return-void
.end method
