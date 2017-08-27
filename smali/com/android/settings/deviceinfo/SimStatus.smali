.class public Lcom/android/settings/deviceinfo/SimStatus;
.super Lcom/android/settings/dG;
.source "SimStatus.java"


# instance fields
.field private YD:Landroid/preference/Preference;

.field private YE:Landroid/telephony/SubscriptionInfo;

.field private YF:Z

.field private YG:Ljava/lang/String;

.field private YH:Ljava/util/List;

.field private YI:Landroid/content/BroadcastReceiver;

.field private bK:Landroid/widget/ListView;

.field private cu:Lcom/android/internal/telephony/Phone;

.field private hg:Landroid/widget/TabHost;

.field private hi:Landroid/widget/TabWidget;

.field private ij:Landroid/widget/TabHost$TabContentFactory;

.field private ik:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRes:Landroid/content/res/Resources;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private yB:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/dG;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    .line 118
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$1;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YI:Landroid/content/BroadcastReceiver;

    .line 457
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$3;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ik:Landroid/widget/TabHost$OnTabChangeListener;

    .line 483
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$4;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ij:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus;->yB:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method private a(Landroid/telephony/ServiceState;)V
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 313
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00d1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    packed-switch v1, :pswitch_data_0

    .line 334
    :goto_0
    const-string v1, "service_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_1
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YD:Landroid/preference/Preference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->YD:Landroid/preference/Preference;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_0
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->a(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->bm(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->hb()V

    return-void
.end method

.method private bk(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_0
    return-void
.end method

.method private bm(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->hc()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YH:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->yB:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->pH()V

    return-void
.end method

.method private getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_0
    :goto_0
    return-object v0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 421
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->pG()V

    return-void
.end method

.method private hb()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 291
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00d1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    packed-switch v1, :pswitch_data_0

    .line 308
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void

    .line 295
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hc()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x0

    .line 244
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 245
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    .line 247
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v4

    .line 249
    if-eqz v3, :cond_4

    .line 251
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/fE;->a(ILandroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    const-string v0, "LTE_CA"

    .line 268
    :cond_0
    :goto_0
    :try_start_0
    const-string v2, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 269
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "config_show4GForLTE"

    const-string v5, "bool"

    const-string v6, "com.android.systemui"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 273
    if-lez v3, :cond_1

    .line 274
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 282
    const-string v0, "4G"

    .line 284
    :cond_2
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void

    .line 258
    :cond_3
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_4
    if-eqz v4, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 278
    const-string v2, "SimStatus"

    const-string v3, "NameNotFoundException for show4GFotLTE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic i(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->hg:Landroid/widget/TabHost;

    return-object v0
.end method

.method private pG()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 380
    const-string v0, "br"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YF:Z

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 389
    const/4 v0, 0x0

    .line 390
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_1
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YF:Z

    if-nez v0, :cond_2

    .line 404
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->bk(Ljava/lang/String;)V

    .line 406
    :cond_2
    return-void
.end method

.method private pH()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 429
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    if-nez v0, :cond_1

    .line 432
    const-string v0, "SimStatus"

    const-string v1, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    .line 437
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$2;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/SimStatus$2;-><init>(Lcom/android/settings/deviceinfo/SimStatus;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->yB:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method

.method private u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 231
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object p2, p0, Lcom/android/settings/deviceinfo/SimStatus;->YG:Ljava/lang/String;

    .line 235
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    :cond_1
    return-void
.end method

.method private w(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->hg:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->ij:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x2b

    return v0
.end method

.method a(Landroid/telephony/SignalStrength;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YD:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 355
    if-eq v7, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_2

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YD:Landroid/preference/Preference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 362
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .line 364
    if-ne v4, v2, :cond_3

    move v2, v1

    .line 368
    :cond_3
    if-ne v4, v0, :cond_4

    move v0, v1

    .line 372
    :cond_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->YD:Landroid/preference/Preference;

    const v5, 0x7f0a09e1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/dG;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 143
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YH:Ljava/util/List;

    .line 145
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 148
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YG:Ljava/lang/String;

    .line 150
    const-string v0, "signal_strength"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YD:Landroid/preference/Preference;

    .line 152
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YH:Ljava/util/List;

    if-nez v0, :cond_1

    .line 153
    iput-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->pH()V

    .line 175
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YH:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YE:Landroid/telephony/SubscriptionInfo;

    .line 157
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 158
    sget v0, Lcom/android/internal/R$layout;->common_tab_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setContentView(I)V

    .line 160
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->hg:Landroid/widget/TabHost;

    .line 161
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->hi:Landroid/widget/TabWidget;

    .line 162
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->bK:Landroid/widget/ListView;

    .line 164
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->hg:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->hg:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->ik:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->hg:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    move v1, v2

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->hg:Landroid/widget/TabHost;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/settings/deviceinfo/SimStatus;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 168
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 155
    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/settings/dG;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->yB:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YF:Z

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YI:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/settings/dG;->onResume()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->pG()V

    .line 188
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->a(Landroid/telephony/SignalStrength;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->cu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->a(Landroid/telephony/ServiceState;)V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->hb()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->yB:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 195
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YF:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->YI:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method
