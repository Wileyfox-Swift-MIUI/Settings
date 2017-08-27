.class public Lcom/android/settings/SettingsFragment;
.super Lcom/android/settings/BasePreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static AA:Ljava/util/HashMap;


# instance fields
.field private AB:Lmiui/view/SearchActionMode$Callback;

.field private AC:Landroid/widget/TextView$OnEditorActionListener;

.field private AD:Landroid/text/TextWatcher;

.field private Ar:Landroid/view/View;

.field private As:Landroid/widget/EditText;

.field private At:Lcom/android/settings/ft;

.field private Au:Ljava/lang/String;

.field private Av:Landroid/widget/ListView;

.field private Aw:Landroid/widget/ListView;

.field private Ax:Ljava/util/List;

.field private Ay:Lcom/android/settings/hH;

.field private Az:Lcom/android/settings/search/r;

.field private IS_TABLET:Z

.field private bK:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/SettingsFragment;->AA:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;-><init>()V

    .line 177
    new-instance v0, Lcom/android/settings/hC;

    invoke-direct {v0, p0}, Lcom/android/settings/hC;-><init>(Lcom/android/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->AB:Lmiui/view/SearchActionMode$Callback;

    .line 271
    new-instance v0, Lcom/android/settings/hE;

    invoke-direct {v0, p0}, Lcom/android/settings/hE;-><init>(Lcom/android/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->AC:Landroid/widget/TextView$OnEditorActionListener;

    .line 278
    new-instance v0, Lcom/android/settings/hF;

    invoke-direct {v0, p0}, Lcom/android/settings/hF;-><init>(Lcom/android/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->AD:Landroid/text/TextWatcher;

    .line 102
    return-void
.end method

.method private U(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Au:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->Ax:Ljava/util/List;

    .line 253
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Ax:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Az:Lcom/android/settings/search/r;

    invoke-virtual {v0, p1}, Lcom/android/settings/search/r;->bW(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->Ax:Ljava/util/List;

    .line 256
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Ax:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/t;

    invoke-virtual {v0}, Lcom/android/settings/search/t;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 257
    const-string v0, "settings"

    const-string v1, "search_no_result"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings;search_no_result;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 260
    if-eqz v1, :cond_2

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";country;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Ay:Lcom/android/settings/hH;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->Ax:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/hH;->q(Ljava/util/List;)V

    .line 267
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->Au:Ljava/lang/String;

    .line 269
    :cond_1
    return-void

    .line 263
    :cond_2
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 9

    .prologue
    const/16 v8, 0x21

    const/4 v0, 0x0

    const/high16 v7, -0x10000

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    .line 323
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 324
    const-string v1, "zh_CN"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zh_TW"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    :cond_1
    const-string v1, "\\s*|\t|\n"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 327
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v4, v2

    invoke-static {p1, v2}, Lcom/android/settings/SettingsFragment;->f(Ljava/lang/String;I)[I

    move-result-object v4

    move v2, v1

    move v1, v0

    .line 331
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 332
    aget v5, v4, v0

    if-gt v5, v2, :cond_2

    .line 333
    add-int/lit8 v2, v2, 0x1

    .line 335
    :cond_2
    aget v5, v4, v0

    if-le v5, v2, :cond_3

    aget v5, v4, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v6, v1

    if-gt v5, v6, :cond_3

    .line 336
    add-int/lit8 v1, v1, 0x1

    .line 331
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 339
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v0, v4, :cond_5

    .line 340
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    invoke-virtual {v3, v0, v2, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    move-object v0, v3

    .line 352
    goto :goto_0

    .line 345
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 347
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 348
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->As:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->Au:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;)Lmiui/view/SearchActionMode$Callback;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->AB:Lmiui/view/SearchActionMode$Callback;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/android/settings/search/t;)V
    .locals 8

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 357
    invoke-virtual {p2}, Lcom/android/settings/search/t;->uM()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p2}, Lcom/android/settings/search/t;->uN()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {p2}, Lcom/android/settings/search/t;->uO()Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-virtual {p2}, Lcom/android/settings/search/t;->getIntentAction()Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-virtual {p2}, Lcom/android/settings/search/t;->uK()Ljava/lang/String;

    move-result-object v5

    .line 363
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 364
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 365
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :goto_0
    const-string v3, ":settings:show_fragment_title"

    invoke-virtual {p2}, Lcom/android/settings/search/t;->uJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 374
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 382
    :cond_1
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Au:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/search/t;->uJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsFragment;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_2
    return-void

    .line 368
    :cond_2
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v4, ":android:show_fragment"

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v3, ":android:no_headers"

    const/4 v4, 0x1

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 375
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;Landroid/view/View;Lcom/android/settings/search/t;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsFragment;->a(Landroid/view/View;Lcom/android/settings/search/t;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/android/settings/SettingsFragment;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/SettingsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Ar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->U(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bK:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Aw:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hX()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/SettingsFragment;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->AC:Landroid/widget/TextView$OnEditorActionListener;

    return-object v0
.end method

.method private static f(Ljava/lang/String;I)[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 306
    new-array v3, p1, [I

    .line 308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v1, v0

    .line 310
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_1

    .line 311
    aget-char v2, v4, v0

    const/16 v5, 0x20

    if-ne v2, v5, :cond_0

    .line 312
    add-int/lit8 v2, v1, 0x1

    aput v0, v3, v1

    move v1, v2

    .line 310
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    return-object v3
.end method

.method static synthetic g(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->As:Landroid/widget/EditText;

    return-object v0
.end method

.method private static getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 396
    const/4 v0, 0x0

    .line 398
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 399
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/settings/SettingsFragment;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->AD:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 390
    const-string v0, "settings"

    const-string v1, "search_data"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings;search_data;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private hW()V
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 166
    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->Aw:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 167
    return-void
.end method

.method private hX()V
    .locals 4

    .prologue
    .line 228
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->cF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->cF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 230
    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->cF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->cF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 233
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 234
    sget-object v3, Lcom/android/settings/SettingsFragment;->AA:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method

.method private hY()Z
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 242
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 243
    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic hZ()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/SettingsFragment;->AA:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hW()V

    return-void
.end method

.method static synthetic j(Lcom/android/settings/SettingsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Ax:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/hH;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Ay:Lcom/android/settings/hH;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/SettingsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Au:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public an()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 135
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->an()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 137
    new-instance v1, Lcom/android/settings/ft;

    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->cF:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->gh()Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings/ft;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V

    iput-object v1, p0, Lcom/android/settings/SettingsFragment;->At:Lcom/android/settings/ft;

    .line 138
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bK:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->At:Lcom/android/settings/ft;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bK:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Aw:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Aw:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->Ay:Lcom/android/settings/hH;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Av:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->aq()V

    .line 144
    return-void
.end method

.method protected ar()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f0800a0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->Ax:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/android/settings/hH;

    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->Ax:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/hH;-><init>(Lcom/android/settings/SettingsFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->Ay:Lcom/android/settings/hH;

    .line 113
    new-instance v0, Lcom/android/settings/search/r;

    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->Az:Lcom/android/settings/search/r;

    .line 114
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Az:Lcom/android/settings/search/r;

    invoke-virtual {v0}, Lcom/android/settings/search/r;->onDestroy()V

    .line 120
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    const v0, 0x7f04014c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->bK:Landroid/widget/ListView;

    .line 87
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bK:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bK:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 89
    const v0, 0x7f1302e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->Av:Landroid/widget/ListView;

    .line 90
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Av:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Av:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 92
    const v0, 0x7f1302e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->Aw:Landroid/widget/ListView;

    .line 93
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Aw:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Aw:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Aw:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hY()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->IS_TABLET:Z

    .line 97
    return-object v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Aw:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hW()V

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiui/R$layout;->search_stub:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->Ar:Landroid/view/View;

    .line 151
    iget-boolean v0, p0, Lcom/android/settings/SettingsFragment;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bK:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->Ar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->Ar:Landroid/view/View;

    new-instance v1, Lcom/android/settings/hB;

    invoke-direct {v1, p0}, Lcom/android/settings/hB;-><init>(Lcom/android/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method
