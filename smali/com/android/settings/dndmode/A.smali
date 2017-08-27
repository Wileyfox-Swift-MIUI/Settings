.class Lcom/android/settings/dndmode/A;
.super Landroid/preference/Preference;
.source "VipCallSettingsFragment.java"


# instance fields
.field final synthetic adi:Lcom/android/settings/dndmode/v;

.field private adm:J

.field private adn:Landroid/widget/ImageView;

.field private ado:Lcom/android/settings/dndmode/C;

.field private mContext:Landroid/content/Context;

.field op:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/dndmode/v;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/settings/dndmode/A;->adi:Lcom/android/settings/dndmode/v;

    .line 373
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 405
    new-instance v0, Lcom/android/settings/dndmode/B;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/B;-><init>(Lcom/android/settings/dndmode/A;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/A;->op:Landroid/view/View$OnClickListener;

    .line 374
    iput-object p2, p0, Lcom/android/settings/dndmode/A;->mContext:Landroid/content/Context;

    .line 375
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/A;->setLayoutResource(I)V

    .line 376
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dndmode/A;)Lcom/android/settings/dndmode/C;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/dndmode/A;->ado:Lcom/android/settings/dndmode/C;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/dndmode/A;)J
    .locals 2

    .prologue
    .line 366
    iget-wide v0, p0, Lcom/android/settings/dndmode/A;->adm:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/android/settings/dndmode/C;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/settings/dndmode/A;->ado:Lcom/android/settings/dndmode/C;

    .line 415
    return-void
.end method

.method public d(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 380
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 381
    iput-wide v0, p0, Lcom/android/settings/dndmode/A;->adm:J

    .line 382
    const/4 v0, 0x0

    .line 383
    # getter for: Lcom/android/settings/dndmode/v;->adb:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings/dndmode/v;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    # getter for: Lcom/android/settings/dndmode/v;->adb:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings/dndmode/v;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {p0, v2}, Lcom/android/settings/dndmode/A;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/A;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {p0, v2}, Lcom/android/settings/dndmode/A;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 396
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 398
    const v0, 0x7f1303e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/dndmode/A;->adn:Landroid/widget/ImageView;

    .line 399
    iget-object v0, p0, Lcom/android/settings/dndmode/A;->adn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/dndmode/A;->adn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/dndmode/A;->adn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/dndmode/A;->op:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    return-object v1
.end method
