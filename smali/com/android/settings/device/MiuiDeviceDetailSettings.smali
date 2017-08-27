.class public Lcom/android/settings/device/MiuiDeviceDetailSettings;
.super Lcom/android/settings/BaseFragment;
.source "MiuiDeviceDetailSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private WM:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

.field private WN:Lcom/android/settings/device/e;

.field private WO:Lcom/android/settings/device/a;

.field private final WP:I

.field lG:I

.field lH:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WP:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;Z)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x1020016

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 187
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 189
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0, v3, p3}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 192
    sget v0, Lmiui/R$id;->arrow_right:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    const v0, 0x1020018

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    const v0, 0x1020010

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    const v0, 0x1020006

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    sget v0, Lmiui/R$id;->value_right:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    sget v0, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 201
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->preference_horizontal_extra_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 210
    :cond_0
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    .line 211
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 213
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 215
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    return-object v3

    :cond_1
    move v0, v2

    .line 192
    goto :goto_0
.end method

.method private bu(I)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 327
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->pq()I

    move-result v2

    .line 329
    packed-switch p1, :pswitch_data_0

    .line 354
    :pswitch_0
    const-string v0, "provision_about"

    const-string v1, "provision_about_view_more"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "http://m.mi.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    .line 331
    :pswitch_1
    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_1_recommend_list_id_1"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 333
    :goto_1
    const-string v1, "provision_about"

    const-string v3, "provision_about_phone_case"

    invoke-static {v1, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 357
    :goto_2
    if-ne v2, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_1_recommend_type"

    invoke-static {v0, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 359
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://m.mi.com/1/#/product/list?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&client_id=180100031058&masid=114.000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_recommend_list_id_1"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 336
    :pswitch_2
    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_1_recommend_list_id_2"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 338
    :goto_4
    const-string v1, "provision_about"

    const-string v3, "provision_about_mi_band"

    invoke-static {v1, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 339
    goto :goto_2

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_recommend_list_id_2"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 341
    :pswitch_3
    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_1_recommend_list_id_3"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 343
    :goto_5
    const-string v1, "provision_about"

    const-string v3, "provision_about_power_bank"

    invoke-static {v1, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 344
    goto :goto_2

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_recommend_list_id_3"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    .line 346
    :pswitch_4
    if-ne v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_1_recommend_list_id_4"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 348
    :goto_6
    const-string v1, "provision_about"

    const-string v3, "provision_about_earphones"

    invoke-static {v1, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 349
    goto/16 :goto_2

    .line 346
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_recommend_list_id_4"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 351
    :pswitch_5
    const-string v0, "provision_about"

    const-string v1, "provision_about_enter_mi_net"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "http://m.mi.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 357
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_recommend_type"

    invoke-static {v0, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->x(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x7f1300ec
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    sget v0, Lmiui/R$id;->value_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method private d(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 309
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 312
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 313
    const-string v3, "com.xiaomi.shop"

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "com.xiaomi.shop"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->startActivity(Landroid/content/Intent;)V

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 142
    const v0, 0x7f0a0d18

    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->a(Landroid/view/ViewGroup;ILjava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/android/settings/device/s;

    invoke-direct {v1, p0}, Lcom/android/settings/device/s;-><init>(Lcom/android/settings/device/MiuiDeviceDetailSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method

.method private pw()V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 136
    const v2, 0x7f0201f6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->bu(I)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->d(Landroid/net/Uri;)V

    .line 306
    :goto_0
    return-void

    .line 273
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    const-string v1, "com.android.updater"

    const-string v2, "com.android.updater.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->startActivity(Landroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "key_store_update_info_display"

    const-string v2, "has_displayed"

    invoke-static {v0, v1, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 281
    :sswitch_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 282
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-class v0, Lcom/android/settings/device/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a0d28

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->a(Lmiui/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 287
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 294
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->bu(I)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->d(Landroid/net/Uri;)V

    goto :goto_0

    .line 297
    :sswitch_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 298
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-class v0, Lcom/android/settings/device/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a0d1e

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->a(Lmiui/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 271
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7f1300dd -> :sswitch_0
        0x7f1300e7 -> :sswitch_4
        0x7f1300ec -> :sswitch_3
        0x7f1300ee -> :sswitch_3
        0x7f1300ef -> :sswitch_3
        0x7f1300f0 -> :sswitch_3
        0x7f1300f1 -> :sswitch_3
        0x7f1300f6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->setHasOptionsMenu(Z)V

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bh(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->pl()Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WM:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 227
    const v2, 0x7f140002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 228
    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 265
    iget-object v0, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WN:Lcom/android/settings/device/e;

    invoke-virtual {v0}, Lcom/android/settings/device/e;->pi()V

    .line 266
    iget-object v0, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WO:Lcom/android/settings/device/a;

    invoke-virtual {v0}, Lcom/android/settings/device/a;->pi()V

    .line 267
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/fE;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 80
    :cond_0
    const v0, 0x7f04006b

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 82
    const v0, 0x7f1300dd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_0
    const v0, 0x7f1300e7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f1300ea

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    const v1, 0x7f1300ed

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/device/a;->bc(Landroid/content/Context;)Lcom/android/settings/device/a;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WO:Lcom/android/settings/device/a;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/device/e;->bd(Landroid/content/Context;)Lcom/android/settings/device/e;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WN:Lcom/android/settings/device/e;

    .line 98
    iget-object v3, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WN:Lcom/android/settings/device/e;

    invoke-virtual {v3, v2}, Lcom/android/settings/device/e;->i(Landroid/view/View;)V

    .line 99
    iget-object v3, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WO:Lcom/android/settings/device/a;

    iget-object v4, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WM:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-static {v4}, Lcom/android/settings/device/a;->a(Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_info_title"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/device/a;->s(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 100
    iget-object v4, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WO:Lcom/android/settings/device/a;

    iget-object v5, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WM:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-static {v5}, Lcom/android/settings/device/a;->a(Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "device_info_title"

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/device/a;->s(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    .line 101
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0x7f0a0d29

    invoke-virtual {p0, v3}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WO:Lcom/android/settings/device/a;

    iget-object v1, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WM:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/device/a;->a(Landroid/view/View;Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;)V

    .line 109
    const v0, 0x7f1300e8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    invoke-direct {p0, v0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->e(Landroid/view/ViewGroup;)V

    .line 112
    const v0, 0x7f1300eb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    iget-object v1, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WO:Lcom/android/settings/device/a;

    iget-object v3, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->WM:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-virtual {v1, v0, v3, p0}, Lcom/android/settings/device/a;->a(Landroid/view/ViewGroup;Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f1300ee

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f1300ef

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f1300f0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f1300f1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f1300ec

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f1300f2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-object v2

    .line 88
    :cond_4
    const v0, 0x7f1300e0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 235
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    const-string v1, "com.android.updater"

    const-string v2, "com.android.updater.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->startActivity(Landroid/content/Intent;)V

    .line 239
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x7f13039a
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onPause()V

    .line 259
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onResume()V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "provision_about_page"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 253
    const-string v0, "provision_about"

    const-string v1, "provision_about_page_count"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onStart()V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->pw()V

    .line 129
    return-void
.end method
