.class public Lcom/android/settings/MiuiMasterClear;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiMasterClear.java"


# instance fields
.field private sb:Landroid/preference/CheckBoxPreference;

.field private sc:Landroid/preference/CheckBoxPreference;

.field private sd:Z

.field private se:Z

.field private sf:Ljava/lang/String;

.field private sg:Landroid/app/Dialog;

.field private sh:Lcom/android/settings/eI;

.field private si:Lcom/android/settings/eK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 653
    return-void
.end method

.method private J(Z)V
    .locals 3

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_state"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    return-void

    .line 493
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private K(Z)V
    .locals 2

    .prologue
    .line 499
    const/4 v1, 0x0

    .line 500
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 502
    if-nez p1, :cond_0

    .line 507
    const/high16 v1, 0x1610000

    .line 509
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 510
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fD()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fz()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eU()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fy()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fA()V

    return-void
.end method

.method private eU()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 335
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 336
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.MiuiMasterClearApplyActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v3, "format_internal_storage"

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const/16 v0, 0x39

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/MiuiMasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 340
    return-void

    :cond_1
    move v0, v1

    .line 337
    goto :goto_0
.end method

.method private eW()Z
    .locals 2

    .prologue
    .line 451
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    return-object v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 193
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 195
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    :cond_0
    return-void
.end method

.method private fA()V
    .locals 4

    .prologue
    .line 173
    .line 176
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const v1, 0x7f0a0e2e

    .line 178
    const v0, 0x7f0a0e2f

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0e33

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    return-void

    .line 180
    :cond_0
    const v1, 0x7f0a0e30

    .line 181
    const v0, 0x7f0a0e31

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fB()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x103006d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    .line 346
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x11030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 348
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 349
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 350
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 351
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 352
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 353
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 356
    const v1, 0x110b0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 357
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 363
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 365
    new-instance v0, Lcom/android/settings/eL;

    invoke-direct {v0, p0}, Lcom/android/settings/eL;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/eL;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 366
    return-void
.end method

.method private fC()V
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 371
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    new-instance v1, Lcom/android/settings/eH;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/eH;-><init>(Lcom/android/settings/MiuiMasterClear;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/eH;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fD()V

    goto :goto_0
.end method

.method private fD()V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sb:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lmiui/os/MiuiInit;->doFactoryReset(Z)V

    .line 417
    const-string v0, "MasterClearRec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFactoryReset hex password:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->sf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 419
    const-string v0, "support_erase_external_storage"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    const-string v1, "format_sdcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    .line 431
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    const-string v0, "support_erase_external_storage"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    const-string v1, "format_sdcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 435
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 437
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->sf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sf:Ljava/lang/String;

    .line 440
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 443
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private fE()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 733
    const-string v1, "ro.product.device"

    const-string v2, "UNKNOWN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 734
    const-string v2, "pisces"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cancro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "virgo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 735
    :cond_0
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    const-string v2, "support_device_encrypt"

    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 738
    const/4 v0, 0x1

    .line 741
    :cond_1
    return v0
.end method

.method private fw()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method private fx()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/android/settings/eI;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/eI;-><init>(Lcom/android/settings/MiuiMasterClear;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sh:Lcom/android/settings/eI;

    .line 152
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sh:Lcom/android/settings/eI;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/eI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method

.method private fy()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/android/settings/eK;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/eK;-><init>(Lcom/android/settings/MiuiMasterClear;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->si:Lcom/android/settings/eK;

    .line 158
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->si:Lcom/android/settings/eK;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/eK;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    return-void
.end method

.method private fz()V
    .locals 4

    .prologue
    .line 162
    const v0, 0x7f0a0e2c

    .line 163
    const v1, 0x7f0a0e2d

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiMasterClear;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0e32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 169
    return-void
.end method

.method private r(I)Z
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0a04a7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/settings/aL;->a(ILjava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    const/16 v0, 0x38

    if-ne p1, v0, :cond_1

    .line 294
    if-ne p2, v1, :cond_0

    .line 295
    iput-boolean v2, p0, Lcom/android/settings/MiuiMasterClear;->se:Z

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const/16 v0, 0x39

    if-ne p1, v0, :cond_5

    .line 299
    if-ne p2, v1, :cond_2

    .line 300
    invoke-static {}, Lcom/android/settings/iH;->iE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0, v2}, Lcom/android/settings/MiuiMasterClear;->J(Z)V

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->K(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sb:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fB()V

    .line 318
    :cond_2
    :goto_1
    if-ne p2, v1, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fE()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 320
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 322
    invoke-static {}, Lcom/android/settings/a;->r()Ljava/lang/String;

    move-result-object v1

    .line 324
    :try_start_0
    invoke-static {v0, v1}, Lcom/android/settings/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sf:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fx()V

    goto :goto_0

    .line 310
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fC()V

    goto :goto_1

    .line 313
    :cond_5
    const/16 v0, 0x37

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    const-string v1, "MiuiMasterClear"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 204
    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiMasterClear;->setHasOptionsMenu(Z)V

    .line 205
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->addPreferencesFromResource(I)V

    .line 206
    const-string v0, "erase_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sb:Landroid/preference/CheckBoxPreference;

    .line 207
    const-string v0, "erase_external_storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    .line 209
    const-string v0, "erase_optional"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 210
    const-string v1, "support_erase_application"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    iput-object v5, p0, Lcom/android/settings/MiuiMasterClear;->sb:Landroid/preference/CheckBoxPreference;

    .line 215
    :cond_0
    const-string v1, "ro.boot.sdcard.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 219
    if-eqz v1, :cond_1

    const-string v2, "support_erase_external_storage"

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eW()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    iput-object v5, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sb:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clear_all"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->sd:Z

    .line 237
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->sd:Z

    if-eqz v0, :cond_5

    .line 238
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sb:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 242
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fB()V

    .line 247
    :cond_5
    :goto_1
    return-void

    .line 223
    :cond_6
    if-eqz v1, :cond_7

    .line 224
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0e4a

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 225
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->sc:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0e4b

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 227
    const-string v1, "erase_data"

    const-string v2, "erase_external_no_emulate_sd"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/MiuiMasterClear;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_7
    const-string v1, "erase_data"

    const-string v2, "erase_external_no_emulate_sd"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/MiuiMasterClear;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fD()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    const v2, 0x7f0a04af

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 252
    const v3, 0x7f02000e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 253
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_demo_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    .line 256
    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 257
    return-void

    :cond_0
    move v0, v1

    .line 256
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 464
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sh:Lcom/android/settings/eI;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->sh:Lcom/android/settings/eI;

    invoke-virtual {v0, v1}, Lcom/android/settings/eI;->cancel(Z)Z

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->si:Lcom/android/settings/eK;

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->si:Lcom/android/settings/eK;

    invoke-virtual {v0, v1}, Lcom/android/settings/eK;->cancel(Z)Z

    .line 476
    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 477
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 262
    if-ne v1, v0, :cond_2

    .line 272
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/MiuiMasterClear;->se:Z

    .line 273
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiMasterClear;->r(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fx()V

    goto :goto_0

    .line 285
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 457
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->J(Z)V

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->K(Z)V

    .line 460
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 481
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 484
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->se:Z

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->se:Z

    .line 486
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->r(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fx()V

    .line 490
    :cond_0
    return-void
.end method
