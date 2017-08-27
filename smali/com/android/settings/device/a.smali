.class public Lcom/android/settings/device/a;
.super Ljava/lang/Object;
.source "DeviceBasicInfoPresenter.java"


# static fields
.field private static Wf:Lcom/android/settings/device/a;

.field static Wg:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/device/a;->Wg:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/android/settings/device/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 77
    if-nez p6, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006d

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 84
    :goto_0
    const v0, 0x7f1300fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f1300fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v0, 0x7f1300fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const v0, 0x7f1300fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    add-int/lit8 v0, p6, 0x1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0096

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    return-object v1

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006e

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static a(Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/android/settings/device/a;->Wg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    if-eqz p0, :cond_1

    .line 112
    sget-object v0, Lcom/android/settings/device/c;->Wj:[I

    invoke-virtual {p0}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/device/a;->Wg:Ljava/lang/String;

    return-object v0

    .line 114
    :pswitch_0
    const-string v0, "low_configuration_version"

    sput-object v0, Lcom/android/settings/device/a;->Wg:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_1
    const-string v0, "standard_configuration_version"

    sput-object v0, Lcom/android/settings/device/a;->Wg:Ljava/lang/String;

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v0, "high_configuration_version"

    sput-object v0, Lcom/android/settings/device/a;->Wg:Ljava/lang/String;

    goto :goto_0

    .line 123
    :pswitch_3
    const-string v0, "enjoy_version"

    sput-object v0, Lcom/android/settings/device/a;->Wg:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_1
    const-string v0, "standard_configuration_version"

    sput-object v0, Lcom/android/settings/device/a;->Wg:Ljava/lang/String;

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static bc(Landroid/content/Context;)Lcom/android/settings/device/a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings/device/a;->Wf:Lcom/android/settings/device/a;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/settings/device/a;

    invoke-direct {v0, p0}, Lcom/android/settings/device/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/device/a;->Wf:Lcom/android/settings/device/a;

    .line 32
    :cond_0
    sget-object v0, Lcom/android/settings/device/a;->Wf:Lcom/android/settings/device/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Lcom/android/settings/device/d;

    iget-object v0, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/device/d;-><init>(Lcom/android/settings/device/a;Landroid/content/Context;Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;)V

    .line 47
    const v0, 0x7f1300e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    new-instance v0, Lcom/android/settings/device/y;

    iget-object v2, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/device/b;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/device/b;-><init>(Lcom/android/settings/device/a;Lcom/android/settings/device/d;)V

    invoke-direct {v0, v2, v3}, Lcom/android/settings/device/y;-><init>(Landroid/content/Context;Lcom/android/settings/device/z;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/device/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;Landroid/view/View$OnClickListener;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 63
    invoke-static {p2}, Lcom/android/settings/device/a;->a(Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "device_display_summary"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/device/a;->s(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 65
    const-string v1, "device_display_secondary"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/device/a;->s(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 66
    if-eqz v7, :cond_0

    array-length v0, v7

    if-ne v0, v9, :cond_0

    if-eqz v8, :cond_0

    array-length v0, v8

    if-ne v0, v9, :cond_0

    .line 68
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v9, :cond_0

    .line 69
    aget-object v3, v7, v6

    aget-object v4, v8, v6

    iget-object v0, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device_display_image_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->y(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/device/a;->a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/view/View;

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public pi()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    .line 37
    sput-object v0, Lcom/android/settings/device/a;->Wf:Lcom/android/settings/device/a;

    .line 38
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->w(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/a;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "standard_configuration_version_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->w(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_1
    return-object v0
.end method
