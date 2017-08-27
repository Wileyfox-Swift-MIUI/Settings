.class Lcom/android/settings/display/G;
.super Landroid/preference/CheckBoxPreference;
.source "PaperModeSetAppsFragment.java"


# instance fields
.field final synthetic abu:Lcom/android/settings/display/PaperModeSetAppsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 1

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/display/G;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    .line 180
    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-static {p1}, Lcom/android/settings/display/PaperModeSetAppsFragment;->b(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/G;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    invoke-static {p1}, Lcom/android/settings/display/PaperModeSetAppsFragment;->b(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/G;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/G;->setKey(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/G;->setPersistent(Z)V

    .line 185
    invoke-virtual {p0, p4}, Lcom/android/settings/display/G;->setChecked(Z)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/settings/display/G;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    return-void
.end method
