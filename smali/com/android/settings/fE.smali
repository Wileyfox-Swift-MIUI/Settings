.class public Lcom/android/settings/fE;
.super Ljava/lang/Object;
.source "MiuiUtils.java"


# static fields
.field private static va:Lcom/android/settings/fE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static M(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/4 v2, 0x0

    .line 278
    .line 279
    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v5, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v2

    .line 282
    :goto_0
    if-ge v1, v3, :cond_0

    .line 283
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v5, :cond_1

    .line 284
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_0
    return-object v0

    .line 282
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static P(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    if-eqz p0, :cond_1

    const-string v0, "1"

    .line 350
    :goto_0
    const-string v1, "leadcore"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/devices/platform/comip-gpio-keys/keys_wakeup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/miui/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 352
    const-string v1, "/sys/devices/platform/comip-gpio-keys/keys_wakeup"

    invoke-static {v1, v0}, Lcom/android/settings/fE;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    :goto_1
    return-void

    .line 347
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 353
    :cond_2
    const-string v1, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/bus/platform/drivers/mtk-kpd/kpd_as_wake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/miui/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/devices/platform/mtk-kpd/driver/kpd_as_wake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/miui/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 356
    const-string v1, "/sys/bus/platform/drivers/mtk-kpd/kpd_as_wake"

    invoke-static {v1, v0}, Lcom/android/settings/fE;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "/sys/devices/platform/mtk-kpd/driver/kpd_as_wake"

    invoke-static {v1, v0}, Lcom/android/settings/fE;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 337
    instance-of v0, p0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_0

    .line 338
    check-cast p0, Lcom/android/settings/MiuiSettings;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/settings/MiuiSettings;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_0
    check-cast p0, Lcom/android/settings/hs;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/settings/hs;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 261
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 262
    instance-of v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 268
    :cond_0
    invoke-static {p1}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 269
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/android/settings/MiuiSettings;

    if-eqz v1, :cond_2

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    if-eqz v0, :cond_1

    .line 273
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/security/MiuiLockPatternUtils;)V
    .locals 6

    .prologue
    .line 447
    new-instance v4, Lcom/android/settings/fH;

    invoke-direct {v4, p1, p0, p3, p2}, Lcom/android/settings/fH;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/security/MiuiLockPatternUtils;Landroid/content/Intent;)V

    .line 470
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 471
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 472
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 473
    const-string v3, "verify_only"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 475
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/security/MiuiLockPatternUtils;I)V
    .locals 4

    .prologue
    .line 405
    new-instance v0, Lcom/android/settings/fF;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/fF;-><init>(Landroid/app/Activity;I)V

    .line 427
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 428
    const v2, 0x7f0a11c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 429
    const v2, 0x7f0a11c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 430
    const v2, 0x7f0a11c3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    const v2, 0x7f0a11c2

    new-instance v3, Lcom/android/settings/fG;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/fG;-><init>(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 442
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 7

    .prologue
    .line 312
    instance-of v0, p0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 313
    check-cast v0, Lcom/android/settings/MiuiSettings;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 324
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 319
    check-cast v0, Lcom/android/settings/hs;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hs;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 384
    instance-of v1, v0, Lcom/android/settings/MiuiSettings;

    if-eqz v1, :cond_0

    .line 385
    check-cast v0, Lcom/android/settings/MiuiSettings;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->gk()V

    .line 387
    :cond_0
    return-void
.end method

.method public static d(Landroid/app/Fragment;)V
    .locals 4

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_0

    .line 392
    const-string v0, "input_method"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 393
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 394
    instance-of v0, v1, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 395
    check-cast v0, Lcom/android/settings/MiuiSettings;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->gl()V

    .line 398
    :cond_0
    return-void
.end method

.method public static getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 548
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 549
    return-object v0
.end method

.method public static gu()Lcom/android/settings/fE;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/settings/fE;->va:Lcom/android/settings/fE;

    if-nez v0, :cond_0

    .line 87
    :try_start_0
    const-string v0, "com.android.settings.DeviceUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fE;

    sput-object v0, Lcom/android/settings/fE;->va:Lcom/android/settings/fE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/fE;->va:Lcom/android/settings/fE;

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v0, Lcom/android/settings/fE;

    invoke-direct {v0}, Lcom/android/settings/fE;-><init>()V

    sput-object v0, Lcom/android/settings/fE;->va:Lcom/android/settings/fE;

    goto :goto_0
.end method

.method public static setHotSpotMacBlackSet(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method private static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 362
    const/4 v2, 0x0

    .line 364
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    if-eqz v1, :cond_0

    .line 374
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 367
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 368
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 372
    if-eqz v1, :cond_0

    .line 374
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 375
    :catch_2
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 369
    :catch_3
    move-exception v0

    .line 370
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 372
    if-eqz v2, :cond_0

    .line 374
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 375
    :catch_4
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 374
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 377
    :cond_1
    :goto_4
    throw v0

    .line 375
    :catch_5
    move-exception v1

    .line 376
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 372
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 369
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 367
    :catch_7
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public I(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public J(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public K(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/fE;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public L(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 234
    const/4 v1, 0x0

    .line 236
    invoke-static {p1}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->get(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->getActivateInfo(I)Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;

    move-result-object v2

    .line 239
    const-wide/16 v4, 0xbb8

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 240
    const-string v3, "activate_phone"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 248
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    .line 251
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 249
    goto :goto_0

    .line 243
    :catch_1
    move-exception v0

    .line 244
    :try_start_2
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/OperationCancelledException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 249
    goto :goto_0

    .line 245
    :catch_2
    move-exception v0

    .line 246
    :try_start_3
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 249
    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    throw v0
.end method

.method public N(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .prologue
    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    return-object v0
.end method

.method public O(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/location/LocationManager;)I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    const-wide v4, 0x408c200000000000L    # 900.0

    .line 97
    .line 98
    if-nez p1, :cond_0

    .line 99
    const-string v0, ""

    .line 124
    :goto_0
    return-object v0

    .line 102
    :cond_0
    long-to-float v1, p2

    .line 103
    const v0, 0x7f0a11b4

    .line 104
    float-to-double v2, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 105
    const v0, 0x7f0a11b5

    .line 106
    div-float/2addr v1, v6

    .line 108
    :cond_1
    float-to-double v2, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 109
    const v0, 0x7f0a11b6

    .line 110
    div-float/2addr v1, v6

    .line 112
    :cond_2
    float-to-double v2, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 113
    const v0, 0x7f0a11b7

    .line 114
    div-float/2addr v1, v6

    .line 116
    :cond_3
    float-to-double v2, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 117
    const v0, 0x7f0a11b8

    .line 118
    div-float/2addr v1, v6

    .line 120
    :cond_4
    float-to-double v2, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 121
    const v0, 0x7f0a11b9

    .line 122
    div-float/2addr v1, v6

    .line 124
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a11ba

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "%.2f"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 515
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 519
    :goto_0
    return-object v0

    .line 516
    :catch_0
    move-exception v1

    .line 517
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public a(Landroid/location/LocationManager;I)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public a(Landroid/os/storage/IMountService;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public a(ILandroid/telephony/ServiceState;)Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/b/e/a;->cC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/b/e/a;->p(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-static {p2}, Lcom/android/b/e/a;->i(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 479
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 480
    const-class v2, Landroid/hardware/input/InputManager;

    .line 482
    const-string v1, "getKeyboardLayoutsForInputDevice"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/hardware/input/InputDeviceIdentifier;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/settings/fE;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 485
    if-nez v1, :cond_0

    .line 486
    const-string v1, "getEnabledKeyboardLayoutsForInputDevice"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/hardware/input/InputDeviceIdentifier;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/settings/fE;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 489
    :cond_0
    if-nez v1, :cond_1

    .line 504
    :goto_0
    return-object v0

    .line 493
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 496
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 503
    goto :goto_0

    .line 497
    :catch_0
    move-exception v1

    .line 498
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 499
    :catch_1
    move-exception v1

    .line 500
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 501
    :catch_2
    move-exception v1

    .line 502
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Landroid/content/Context;I)V
    .locals 9

    .prologue
    const/4 v1, -0x1

    .line 151
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 152
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 154
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 155
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 156
    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v6

    .line 160
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    move v3, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 162
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    move v3, v2

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 163
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fE;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v2, v4, :cond_0

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p2, :cond_0

    .line 166
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 167
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :cond_1
    move v2, v3

    move v3, v4

    .line 171
    goto :goto_0

    :cond_2
    move v1, v2

    .line 173
    :cond_3
    if-ltz v1, :cond_4

    .line 174
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 176
    :cond_4
    return-void
.end method

.method public e(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public f(Landroid/content/Context;I)I
    .locals 0

    .prologue
    .line 540
    return p2
.end method

.method public g(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 143
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public gv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    const-string v0, ""

    return-object v0
.end method

.method public isMultiSimSupported()Z
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method
