.class public Lcom/android/settings/device/m;
.super Lcom/android/settings/ai;
.source "DeviceStatusController.java"


# instance fields
.field private Wt:Landroid/widget/TextView;

.field private Wu:Landroid/widget/TextView;

.field private Wv:Ljava/lang/String;

.field private Ww:Ljava/lang/String;

.field private Wx:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ai;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 22
    iget-object v0, p0, Lcom/android/settings/device/m;->mContext:Landroid/content/Context;

    const-string v1, "key_store_internet_data"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->z(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/m;->Wx:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private aK(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/device/m;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/device/m;->Wu:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/m;->Wu:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected as()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public b(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings/device/m;->Wt:Landroid/widget/TextView;

    .line 27
    iput-object p2, p0, Lcom/android/settings/device/m;->Wu:Landroid/widget/TextView;

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/device/m;->updateState()V

    .line 29
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/device/m;->updateState()V

    .line 88
    return-void
.end method

.method public updateState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/settings/device/m;->Wt:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/device/m;->Wu:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/android/settings/device/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/m;->Ww:Ljava/lang/String;

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/android/settings/device/m;->Ww:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    iget-object v0, p0, Lcom/android/settings/device/m;->Wx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/settings/device/m;->Wx:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/device/x;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/m;->Ww:Ljava/lang/String;

    .line 45
    invoke-direct {p0, v2}, Lcom/android/settings/device/m;->aK(Z)V

    .line 50
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/device/m;->Ww:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/settings/device/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/m;->Ww:Ljava/lang/String;

    .line 52
    invoke-direct {p0, v2}, Lcom/android/settings/device/m;->aK(Z)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/settings/device/m;->Wx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/settings/device/m;->Wx:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/device/x;->bh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/m;->Wv:Ljava/lang/String;

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/settings/device/m;->Wv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 60
    iget-object v0, p0, Lcom/android/settings/device/m;->Wt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/device/m;->Wv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/device/m;->Wt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_2
    iget-object v0, p0, Lcom/android/settings/device/m;->Ww:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 66
    iget-object v0, p0, Lcom/android/settings/device/m;->Wu:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/device/m;->Ww:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/device/m;->Wu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :cond_3
    :goto_3
    return-void

    .line 40
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/device/m;->Ww:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/device/m;->aK(Z)V

    goto :goto_1

    .line 63
    :cond_6
    iget-object v0, p0, Lcom/android/settings/device/m;->Wt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 69
    :cond_7
    iget-object v0, p0, Lcom/android/settings/device/m;->Wu:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
