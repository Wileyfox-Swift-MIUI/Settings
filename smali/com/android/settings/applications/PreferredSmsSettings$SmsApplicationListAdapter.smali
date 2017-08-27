.class Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferredSmsSettings.java"


# instance fields
.field private final LD:Landroid/content/pm/PackageManager;

.field final synthetic LO:Lcom/android/settings/applications/PreferredSmsSettings;

.field private final LP:Ljava/util/List;

.field private final bI:Landroid/view/LayoutInflater;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/PreferredSmsSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->LO:Lcom/android/settings/applications/PreferredSmsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->LD:Landroid/content/pm/PackageManager;

    .line 158
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->bI:Landroid/view/LayoutInflater;

    .line 160
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 161
    new-instance v0, Lcom/android/settings/applications/PreferredSmsSettings$DisplayNameComparator;

    invoke-direct {v0}, Lcom/android/settings/applications/PreferredSmsSettings$DisplayNameComparator;-><init>()V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    :cond_0
    iput-object p3, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->LP:Ljava/util/List;

    .line 164
    return-void
.end method

.method private ay(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 202
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->LD:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->LD:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public aY(I)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->LP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->LP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->aY(I)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 173
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 183
    if-nez p2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->bI:Landroid/view/LayoutInflater;

    const v1, 0x7f040109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->aY(I)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    .line 188
    const v0, 0x7f130219

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 189
    iget-object v1, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->LO:Lcom/android/settings/applications/PreferredSmsSettings;

    invoke-static {v3}, Lcom/android/settings/applications/PreferredSmsSettings;->a(Lcom/android/settings/applications/PreferredSmsSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 190
    const v1, 0x7f130065

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 191
    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->ay(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const v1, 0x7f130059

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 193
    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 196
    const v0, 0x7f130111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 197
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    return-object p2
.end method
