.class public Lcom/android/settings/ga;
.super Landroid/widget/BaseAdapter;
.source "NotificationAppListSettings.java"


# instance fields
.field private O:Ljava/util/List;

.field mClickListener:Landroid/view/View$OnClickListener;

.field final synthetic wg:Lcom/android/settings/NotificationAppListSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/NotificationAppListSettings;)V
    .locals 1

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/ga;->wg:Lcom/android/settings/NotificationAppListSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 363
    new-instance v0, Lcom/android/settings/gb;

    invoke-direct {v0, p0}, Lcom/android/settings/gb;-><init>(Lcom/android/settings/ga;)V

    iput-object v0, p0, Lcom/android/settings/ga;->mClickListener:Landroid/view/View$OnClickListener;

    .line 282
    return-void
.end method


# virtual methods
.method public ac(I)Lcom/android/settings/gd;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings/ga;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gd;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings/ga;->O:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ga;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/settings/ga;->ac(I)Lcom/android/settings/gd;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 315
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/ga;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gd;

    invoke-static {v0}, Lcom/android/settings/gd;->c(Lcom/android/settings/gd;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/settings/ga;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gd;

    .line 322
    invoke-static {v0}, Lcom/android/settings/gd;->c(Lcom/android/settings/gd;)I

    move-result v1

    if-nez v1, :cond_3

    .line 323
    if-nez p2, :cond_1

    .line 324
    new-instance v2, Lcom/android/settings/gc;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/gc;-><init>(Lcom/android/settings/ga;Lcom/android/settings/fW;)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/ga;->wg:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/NotificationAppListSettings;->g(Lcom/android/settings/NotificationAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04015f

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 326
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/android/settings/gc;->icon:Landroid/widget/ImageView;

    .line 327
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/gc;->title:Landroid/widget/TextView;

    .line 328
    const v1, 0x1020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/gc;->summary:Landroid/widget/TextView;

    .line 329
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 334
    :goto_0
    invoke-static {v0}, Lcom/android/settings/gd;->d(Lcom/android/settings/gd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, v1, Lcom/android/settings/gc;->summary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :goto_1
    iget-object v2, p0, Lcom/android/settings/ga;->wg:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {v2}, Lcom/android/settings/NotificationAppListSettings;->h(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/q;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/gc;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/settings/gd;->ad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/q;->a(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 343
    iget-object v1, v1, Lcom/android/settings/gc;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/gd;->b(Lcom/android/settings/gd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const v1, 0x7f0a0007

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/ga;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :cond_0
    :goto_2
    return-object p2

    .line 331
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/gc;

    goto :goto_0

    .line 338
    :cond_2
    iget-object v2, v1, Lcom/android/settings/gc;->summary:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/gd;->d(Lcom/android/settings/gd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v2, v1, Lcom/android/settings/gc;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 347
    :cond_3
    invoke-static {v0}, Lcom/android/settings/gd;->c(Lcom/android/settings/gd;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 348
    if-nez p2, :cond_4

    .line 349
    new-instance v2, Lcom/android/settings/gc;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/gc;-><init>(Lcom/android/settings/ga;Lcom/android/settings/fW;)V

    .line 350
    iget-object v1, p0, Lcom/android/settings/ga;->wg:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/NotificationAppListSettings;->g(Lcom/android/settings/NotificationAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04015e

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 351
    const v1, 0x7f130041

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/gc;->bW:Landroid/widget/TextView;

    .line 352
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 353
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 357
    :goto_3
    iget-object v1, v1, Lcom/android/settings/gc;->bW:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/gd;->b(Lcom/android/settings/gd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 355
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/gc;

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x2

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings/ga;->O:Ljava/util/List;

    .line 291
    return-void
.end method
