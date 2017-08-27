.class Lcom/android/settings/device/d;
.super Landroid/widget/BaseAdapter;
.source "DeviceBasicInfoPresenter.java"


# instance fields
.field final synthetic Wi:Lcom/android/settings/device/a;

.field private Wk:[Ljava/lang/String;

.field private Wl:[Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/a;Landroid/content/Context;Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 147
    iput-object p1, p0, Lcom/android/settings/device/d;->Wi:Lcom/android/settings/device/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/settings/device/d;->context:Landroid/content/Context;

    .line 149
    invoke-static {p3}, Lcom/android/settings/device/a;->a(Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "description_primary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->w(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/device/d;->Wk:[Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/android/settings/device/d;->Wk:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/device/d;->Wk:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v3, :cond_1

    .line 152
    :cond_0
    const-string v1, "standard_configuration_version_description_primary"

    invoke-static {p2, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->w(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/device/d;->Wk:[Ljava/lang/String;

    .line 154
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "description_secondary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->w(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/d;->Wl:[Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/settings/device/d;->Wl:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/device/d;->Wl:[Ljava/lang/String;

    array-length v0, v0

    if-eq v0, v3, :cond_3

    .line 156
    :cond_2
    const-string v0, "standard_configuration_version_description_secondary"

    invoke-static {p2, v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->w(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/d;->Wl:[Ljava/lang/String;

    .line 158
    :cond_3
    return-void
.end method


# virtual methods
.method public e(ILjava/lang/String;)Lcom/android/settings/device/d;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/device/d;->Wk:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 162
    return-object p0
.end method

.method public f(ILjava/lang/String;)Lcom/android/settings/device/d;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/device/d;->Wl:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 167
    return-object p0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/device/d;->Wk:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/device/d;->Wk:[Ljava/lang/String;

    array-length v0, v0

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 190
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 195
    if-eqz p2, :cond_0

    .line 197
    :goto_0
    const v0, 0x7f1300da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 199
    const v2, 0x1020015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 200
    iget-object v3, p0, Lcom/android/settings/device/d;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device_description_image_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->y(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/device/d;->Wk:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/device/d;->Wl:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    rem-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f0200c2

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    return-object p2

    .line 195
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 203
    :cond_1
    const v0, 0x7f0200c1

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method
