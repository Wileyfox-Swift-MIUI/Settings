.class Lcom/android/settings/wfd/c;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic ayY:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/settings/wfd/c;->ayY:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings/wfd/c;->ayY:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 363
    const v1, 0x7f040193

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 368
    :cond_0
    const v0, 0x7f130335

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 369
    const v1, 0x7f0a028e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 370
    new-instance v1, Lcom/android/settings/wfd/d;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/d;-><init>(Lcom/android/settings/wfd/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    const v0, 0x7f130336

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 378
    const v1, 0x7f0a028f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 379
    new-instance v1, Lcom/android/settings/wfd/e;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/e;-><init>(Lcom/android/settings/wfd/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    return-object p1
.end method
