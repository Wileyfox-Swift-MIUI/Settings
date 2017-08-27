.class public Lcom/android/settings/display/ScreenshotFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenshotFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private aca:Landroid/preference/CheckBoxPreference;

.field private acb:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private aQ(Z)V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenshotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "three_gesture_screenshot"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 59
    return-void
.end method

.method private aR(Z)V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenshotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "has_screenshot_sound"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 68
    return-void
.end method

.method private qt()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenshotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "three_gesture_screenshot"

    invoke-static {v0, v1, v2, v2}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private qu()Z
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenshotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "has_screenshot_sound"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/settings/display/ScreenshotFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenshotFragment;->addPreferencesFromResource(I)V

    .line 28
    const-string v0, "three_gesture"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenshotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->aca:Landroid/preference/CheckBoxPreference;

    .line 29
    const-string v0, "screenshot_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenshotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->acb:Landroid/preference/CheckBoxPreference;

    .line 30
    iget-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->aca:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->aca:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/display/ScreenshotFragment;->qt()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->acb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    iget-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->acb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/display/ScreenshotFragment;->qu()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 34
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->aca:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenshotFragment;->aQ(Z)V

    .line 49
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->acb:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 47
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenshotFragment;->aR(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenshotFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0a0d86

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 40
    return-void
.end method
