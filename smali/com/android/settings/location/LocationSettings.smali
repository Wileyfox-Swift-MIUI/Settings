.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings/widget/x;


# instance fields
.field private Dc:Z

.field private aY:Landroid/os/UserManager;

.field private ajf:Landroid/os/UserHandle;

.field private ajg:Landroid/preference/Preference;

.field private ajh:Landroid/preference/Preference;

.field private aji:Lcom/android/settings/location/SettingsInjector;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mt:Lcom/android/settings/widget/SwitchBar;

.field private tM:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->Dc:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->aji:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 4

    .prologue
    .line 275
    const-string v0, "location_services"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 277
    new-instance v1, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v1, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->aji:Lcom/android/settings/location/SettingsInjector;

    .line 280
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->aji:Lcom/android/settings/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/location/SettingsInjector;->cx(I)Ljava/util/List;

    move-result-object v1

    .line 283
    new-instance v2, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v2, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 298
    invoke-direct {p0, v1, v0}, Lcom/android/settings/location/LocationSettings;->a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 303
    :goto_1
    return-void

    .line 280
    :cond_0
    const/4 v1, -0x2

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 178
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method private c(Landroid/preference/PreferenceScreen;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->aY:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/iH;->b(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajf:Landroid/os/UserHandle;

    .line 242
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajf:Landroid/os/UserHandle;

    if-nez v0, :cond_1

    .line 246
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    :cond_0
    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->ajg:Landroid/preference/Preference;

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajg:Landroid/preference/Preference;

    .line 254
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajg:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private d(ZI)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajg:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajg:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajg:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private hD()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hs;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 190
    :cond_0
    const v1, 0x7f08005e

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 193
    invoke-direct {p0, v2}, Lcom/android/settings/location/LocationSettings;->c(Landroid/preference/PreferenceScreen;)V

    .line 194
    const-string v1, "location_mode"

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->ajh:Landroid/preference/Preference;

    .line 195
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->ajh:Landroid/preference/Preference;

    new-instance v3, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/hs;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 224
    const/4 v1, 0x0

    .line 228
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->ajf:Landroid/os/UserHandle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->aY:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->ajf:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    const/4 v1, 0x1

    .line 232
    :cond_1
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/location/LocationSettings;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->sn()V

    .line 235
    return-object v2
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x3f

    return v0
.end method

.method public a(Landroid/widget/Switch;Z)V
    .locals 1

    .prologue
    .line 396
    if-eqz p2, :cond_0

    .line 397
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->cw(I)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->cw(I)V

    goto :goto_0
.end method

.method public aL()I
    .locals 1

    .prologue
    .line 329
    const v0, 0x7f0a0991

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 334
    packed-switch p1, :pswitch_data_0

    .line 354
    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 357
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    if-nez p2, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 358
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->ajh:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 362
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->tM:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 364
    iget-boolean v3, p0, Lcom/android/settings/location/LocationSettings;->Dc:Z

    if-eqz v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/x;)V

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->tM:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 368
    iget-boolean v3, p0, Lcom/android/settings/location/LocationSettings;->Dc:Z

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/x;)V

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->ajg:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 374
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->aY:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->ajf:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 375
    const v0, 0x7f0a04e0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->d(ZI)V

    .line 388
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->aji:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v0}, Lcom/android/settings/location/SettingsInjector;->sq()V

    .line 389
    return-void

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajh:Landroid/preference/Preference;

    const v3, 0x7f0a04e5

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajh:Landroid/preference/Preference;

    const v3, 0x7f0a04e4

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 342
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajh:Landroid/preference/Preference;

    const v3, 0x7f0a04e3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 345
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->ajh:Landroid/preference/Preference;

    const v3, 0x7f0a04e2

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 354
    goto :goto_1

    :cond_4
    move v3, v2

    .line 357
    goto :goto_2

    :cond_5
    move v3, v2

    .line 358
    goto :goto_3

    .line 378
    :cond_6
    if-eqz v0, :cond_7

    .line 379
    const v0, 0x7f0a0a8f

    invoke-direct {p0, v1, v0}, Lcom/android/settings/location/LocationSettings;->d(ZI)V

    goto :goto_4

    .line 381
    :cond_7
    const v0, 0x7f0a0a90

    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->d(ZI)V

    goto :goto_4

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hs;

    .line 119
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings/hs;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->aY:Landroid/os/UserManager;

    .line 121
    invoke-virtual {v0}, Lcom/android/settings/hs;->hN()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    .line 122
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->xG()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->tM:Landroid/widget/Switch;

    .line 123
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    const/4 v0, 0x1

    const v1, 0x7f0a04ef

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 309
    invoke-super {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 310
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onDestroyView()V

    .line 129
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hs;

    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 323
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 317
    :pswitch_0
    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a04f0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hs;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 321
    const/4 v0, 0x1

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->Dc:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/x;)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->Dc:Z

    .line 166
    :cond_1
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 167
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->aY:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->aY:Landroid/os/UserManager;

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->hD()Landroid/preference/PreferenceScreen;

    .line 146
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->Dc:Z

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/x;)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->Dc:Z

    .line 150
    :cond_1
    return-void
.end method
