.class public Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiSecurityChooseUnlock.java"


# instance fields
.field private dD:Lcom/android/settings/aL;

.field private ep:Z

.field private sI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->ep:Z

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->sI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 422
    if-eqz p2, :cond_1

    const-string v2, "miui_security_fragment_result"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 424
    :goto_0
    const/16 v3, 0xca

    if-ne p1, v3, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->finish()V

    .line 427
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 428
    const-string v4, "miui_security_fragment_result"

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 430
    check-cast v0, Lcom/android/settings/KeyguardSettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    .line 432
    :cond_0
    return-void

    :cond_1
    move v2, v0

    .line 422
    goto :goto_0

    :cond_2
    move v0, v1

    .line 428
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-class v0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 405
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 406
    const/16 v1, 0xc9

    if-ne p1, v1, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->finish()V

    .line 418
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object p3, v0

    .line 409
    goto :goto_0

    .line 411
    :cond_2
    const/16 v1, 0xca

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->sI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->sI:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 415
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->finish()V

    goto :goto_1

    :cond_4
    move-object p3, v0

    .line 415
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v2, -0x2710

    const/high16 v6, 0x20000

    const/4 v5, 0x0

    const/16 v4, 0xca

    .line 260
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    const-string v1, "add_keyguard_password_then_add_fingerprint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    # setter for: Lcom/android/settings/MiuiSecurityChooseUnlock;->dU:Z
    invoke-static {v0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->access$002(Z)Z

    .line 268
    :cond_0
    new-instance v0, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->dD:Lcom/android/settings/aL;

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "second_user_id"

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 271
    if-eq v0, v2, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->dD:Lcom/android/settings/aL;

    invoke-virtual {v0}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/settings/dH;->i(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->dD:Lcom/android/settings/aL;

    invoke-virtual {v0}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/settings/dH;->b(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    .line 275
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_6

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_5

    .line 277
    const/high16 v0, 0x10000

    invoke-static {v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V

    .line 297
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 300
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 301
    const-string v2, "common_password_business_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->sI:Ljava/lang/String;

    .line 302
    const-string v2, "set_keyguard_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->ep:Z

    .line 303
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 304
    invoke-static {v1, v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->b(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/KeyguardSettingsPreferenceFragment;)I

    move-result v0

    .line 305
    if-eq v0, v7, :cond_d

    if-eqz v0, :cond_d

    .line 306
    if-eq v0, v6, :cond_3

    const/high16 v1, 0x30000

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->dD:Lcom/android/settings/aL;

    invoke-virtual {v1}, Lcom/android/settings/aL;->aS()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dH;->g(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 309
    const/high16 v0, 0x50000

    .line 312
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_c

    .line 313
    invoke-static {v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V

    .line 355
    :goto_1
    return-void

    .line 279
    :cond_5
    invoke-static {p0, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    goto :goto_0

    .line 281
    :cond_6
    if-eq v0, v6, :cond_7

    const/high16 v1, 0x30000

    if-ne v0, v1, :cond_9

    .line 283
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_8

    .line 284
    invoke-static {v6, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V

    goto :goto_0

    .line 286
    :cond_8
    invoke-static {p0, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->b(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    goto :goto_0

    .line 288
    :cond_9
    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_a

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_a

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_1

    .line 291
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_b

    .line 292
    const/high16 v0, 0x40000

    invoke-static {v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V

    goto/16 :goto_0

    .line 294
    :cond_b
    invoke-static {p0, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->c(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    goto/16 :goto_0

    .line 316
    :cond_c
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 318
    :sswitch_0
    const v0, 0x8000

    invoke-static {v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V

    goto :goto_1

    .line 321
    :sswitch_1
    invoke-static {p0, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    goto :goto_1

    .line 325
    :sswitch_2
    invoke-static {p0, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->b(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    goto :goto_1

    .line 328
    :sswitch_3
    invoke-static {p0, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->c(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    goto :goto_1

    .line 336
    :cond_d
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->addPreferencesFromResource(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 344
    if-eqz v0, :cond_e

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_password"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_biometric_weak"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 348
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "skip_pattern_unlock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_pattern"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_biometric_weak"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->sI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->sI:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->ep:Z

    if-nez v0, :cond_1

    .line 363
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 364
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setKeyguardPasswordQuality(I)V

    .line 367
    :cond_1
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onDestroy()V

    .line 368
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/16 v3, 0xca

    .line 373
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 374
    const/4 v0, 0x1

    .line 376
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const v1, 0x8000

    invoke-static {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V

    .line 400
    :goto_0
    return v0

    .line 378
    :cond_0
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 380
    const/high16 v1, 0x10000

    invoke-static {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {p0, v3}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    goto :goto_0

    .line 384
    :cond_2
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 386
    const/high16 v1, 0x20000

    invoke-static {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V

    goto :goto_0

    .line 388
    :cond_3
    invoke-static {p0, v3}, Lcom/android/settings/MiuiSecurityChooseUnlock;->b(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    goto :goto_0

    .line 390
    :cond_4
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_5

    .line 392
    const/high16 v1, 0x40000

    invoke-static {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V

    goto :goto_0

    .line 394
    :cond_5
    invoke-static {p0, v3}, Lcom/android/settings/MiuiSecurityChooseUnlock;->c(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    goto :goto_0

    .line 397
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
