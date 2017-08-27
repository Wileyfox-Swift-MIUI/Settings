.class public Lcom/android/settings/device/e;
.super Ljava/lang/Object;
.source "DeviceRankPresenter.java"


# static fields
.field private static Wm:Lcom/android/settings/device/e;


# instance fields
.field private Wn:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/settings/device/e;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/android/settings/device/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/device/e;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/android/settings/device/j;)V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string v2, "phoneType"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v2, "phoneModel"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v2, "channel"

    const-string v3, "07-0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v2, "dpi"

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "http://adv.sec.miui.com/info/setting"

    new-instance v2, Lcom/android/settings/device/g;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/device/g;-><init>(Landroid/content/Context;Lcom/android/settings/device/j;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/device/n;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/android/settings/device/o;)V

    .line 220
    return-void
.end method

.method private a(Landroid/widget/ListView;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 102
    if-nez v3, :cond_0

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    .line 107
    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 108
    invoke-virtual {v5, v1, v1}, Landroid/view/View;->measure(II)V

    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/android/settings/device/e;->pj()V

    return-void
.end method

.method private b(Landroid/widget/ImageView;)Z
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Mi_pic.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/e;->Wn:Landroid/graphics/Bitmap;

    .line 122
    iget-object v0, p0, Lcom/android/settings/device/e;->Wn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/settings/device/e;->Wn:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bb(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/android/settings/device/h;

    invoke-direct {v0}, Lcom/android/settings/device/h;-><init>()V

    invoke-static {p0, v0}, Lcom/android/settings/device/n;->a(Ljava/lang/String;Lcom/android/settings/device/o;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {}, Lcom/android/settings/device/e;->pj()V

    goto :goto_0
.end method

.method public static bd(Landroid/content/Context;)Lcom/android/settings/device/e;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings/device/e;->Wm:Lcom/android/settings/device/e;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/settings/device/e;

    invoke-direct {v0, p0}, Lcom/android/settings/device/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/device/e;->Wm:Lcom/android/settings/device/e;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/settings/device/e;->Wm:Lcom/android/settings/device/e;

    return-object v0
.end method

.method private static pj()V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Mi_pic.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/device/e;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/device/e;->mContext:Landroid/content/Context;

    const-string v1, "key_store_internet_data"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->z(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v0, p0, Lcom/android/settings/device/e;->mContext:Landroid/content/Context;

    const-string v2, "key_store_date"

    invoke-static {v0, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->z(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const v0, 0x7f1300e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/android/settings/device/x;->be(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 72
    new-instance v4, Lcom/android/settings/device/k;

    iget-object v5, p0, Lcom/android/settings/device/e;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v3}, Lcom/android/settings/device/k;-><init>(Lcom/android/settings/device/e;Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/android/settings/device/e;->a(Landroid/widget/ListView;)V

    .line 78
    :goto_0
    const v0, 0x7f1300e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "device_display_top_image"

    invoke-static {v3, v4}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->y(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->pv()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-direct {p0, v0}, Lcom/android/settings/device/e;->b(Landroid/widget/ImageView;)Z

    move-result v2

    .line 83
    invoke-static {v1}, Lcom/android/settings/device/x;->bf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Lcom/android/settings/device/f;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/device/f;-><init>(Lcom/android/settings/device/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_0
    return-void

    .line 75
    :cond_1
    const v0, 0x7f1300e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public pi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/android/settings/device/e;->mContext:Landroid/content/Context;

    .line 50
    sput-object v1, Lcom/android/settings/device/e;->Wm:Lcom/android/settings/device/e;

    .line 51
    iget-object v0, p0, Lcom/android/settings/device/e;->Wn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/device/e;->Wn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/settings/device/e;->Wn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    iput-object v1, p0, Lcom/android/settings/device/e;->Wn:Landroid/graphics/Bitmap;

    .line 55
    :cond_0
    return-void
.end method
