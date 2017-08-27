.class Lcom/android/settings/device/k;
.super Landroid/widget/BaseAdapter;
.source "DeviceRankPresenter.java"


# instance fields
.field final synthetic Wp:Lcom/android/settings/device/e;

.field private Wr:Lorg/json/JSONArray;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/e;Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/device/k;->Wp:Lcom/android/settings/device/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    iput-object p3, p0, Lcom/android/settings/device/k;->Wr:Lorg/json/JSONArray;

    .line 137
    iput-object p2, p0, Lcom/android/settings/device/k;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/android/settings/device/k;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/device/k;->Wr:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/device/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/device/k;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/device/k;->Wr:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 156
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 161
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 162
    const v0, 0x7f1300fe

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    const v1, 0x7f1300ff

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    const v2, 0x7f130100

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 176
    const v4, 0x7f0202aa

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 177
    const v4, 0x7f0c0097

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    :goto_0
    iget-object v4, p0, Lcom/android/settings/device/k;->Wr:Lorg/json/JSONArray;

    invoke-static {v4, p1}, Lcom/android/settings/device/x;->c(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/device/k;->Wr:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/android/settings/device/x;->d(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/device/k;->Wr:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/android/settings/device/x;->e(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/device/k;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 183
    const v0, 0x7f130101

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_0
    new-instance v0, Lcom/android/settings/device/l;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/device/l;-><init>(Lcom/android/settings/device/k;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-object v3

    .line 167
    :pswitch_0
    const v4, 0x7f0202a9

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 170
    :pswitch_1
    const v4, 0x7f0202ab

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 173
    :pswitch_2
    const v4, 0x7f0202ac

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
