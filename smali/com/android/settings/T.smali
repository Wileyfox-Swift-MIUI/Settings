.class public Lcom/android/settings/T;
.super Landroid/widget/BaseAdapter;
.source "AutoDisableScreenButtonsAppListSettings.java"


# instance fields
.field private O:Ljava/util/List;

.field final synthetic bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

.field mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V
    .locals 1

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 396
    new-instance v0, Lcom/android/settings/U;

    invoke-direct {v0, p0}, Lcom/android/settings/U;-><init>(Lcom/android/settings/T;)V

    iput-object v0, p0, Lcom/android/settings/T;->mClickListener:Landroid/view/View$OnClickListener;

    .line 316
    return-void
.end method

.method static synthetic a(Lcom/android/settings/T;I)I
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/settings/T;->i(I)I

    move-result v0

    return v0
.end method

.method private h(I)I
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bO:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 427
    sget-object v1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bO:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 430
    :goto_1
    return v0

    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private i(I)I
    .locals 1

    .prologue
    .line 434
    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bO:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 435
    :cond_0
    const/4 v0, 0x3

    .line 436
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bO:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/android/settings/X;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 406
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->a(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a115d

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    iget-object v1, v1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bN:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/X;->e(Lcom/android/settings/X;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/T;->h(I)I

    move-result v2

    new-instance v3, Lcom/android/settings/V;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/V;-><init>(Lcom/android/settings/T;Lcom/android/settings/X;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    iget-object v1, p0, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->a(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 422
    iget-object v0, p0, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->j(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 423
    return-void
.end method

.method public g(I)Lcom/android/settings/X;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/T;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/X;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/T;->O:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/T;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/android/settings/T;->g(I)Lcom/android/settings/X;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 349
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/T;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/X;

    invoke-static {v0}, Lcom/android/settings/X;->c(Lcom/android/settings/X;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 354
    iget-object v0, p0, Lcom/android/settings/T;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/X;

    .line 356
    invoke-static {v0}, Lcom/android/settings/X;->c(Lcom/android/settings/X;)I

    move-result v1

    if-nez v1, :cond_3

    .line 357
    if-nez p2, :cond_1

    .line 358
    new-instance v2, Lcom/android/settings/W;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/W;-><init>(Lcom/android/settings/T;Lcom/android/settings/N;)V

    .line 359
    iget-object v1, p0, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->h(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04001e

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 360
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/android/settings/W;->icon:Landroid/widget/ImageView;

    .line 361
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/W;->title:Landroid/widget/TextView;

    .line 362
    const v1, 0x1020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/W;->summary:Landroid/widget/TextView;

    .line 363
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 368
    :goto_0
    invoke-static {v0}, Lcom/android/settings/X;->d(Lcom/android/settings/X;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, v1, Lcom/android/settings/W;->summary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :goto_1
    iget-object v2, p0, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->i(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/q;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/W;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/settings/X;->ad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/q;->a(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 377
    iget-object v1, v1, Lcom/android/settings/W;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/X;->b(Lcom/android/settings/X;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    const v1, 0x7f0a1158

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/T;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    :cond_0
    :goto_2
    return-object p2

    .line 365
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/W;

    goto :goto_0

    .line 372
    :cond_2
    iget-object v2, v1, Lcom/android/settings/W;->summary:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/X;->d(Lcom/android/settings/X;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, v1, Lcom/android/settings/W;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 380
    :cond_3
    invoke-static {v0}, Lcom/android/settings/X;->c(Lcom/android/settings/X;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 381
    if-nez p2, :cond_4

    .line 382
    new-instance v2, Lcom/android/settings/W;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/W;-><init>(Lcom/android/settings/T;Lcom/android/settings/N;)V

    .line 383
    iget-object v1, p0, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->h(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04001d

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 384
    const v1, 0x7f130041

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/W;->bW:Landroid/widget/TextView;

    .line 385
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 386
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 390
    :goto_3
    iget-object v1, v1, Lcom/android/settings/W;->bW:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/X;->b(Lcom/android/settings/X;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 388
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/W;

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x2

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/settings/T;->O:Ljava/util/List;

    .line 325
    return-void
.end method
