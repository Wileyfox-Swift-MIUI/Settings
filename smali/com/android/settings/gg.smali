.class Lcom/android/settings/gg;
.super Ljava/lang/Object;
.source "OldmanModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic wy:Z

.field final synthetic wz:Lcom/android/settings/gf;


# direct methods
.method constructor <init>(Lcom/android/settings/gf;Z)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/gg;->wz:Lcom/android/settings/gf;

    iput-boolean p2, p0, Lcom/android/settings/gg;->wy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gg;->wz:Lcom/android/settings/gf;

    iget-object v0, v0, Lcom/android/settings/gf;->wx:Lcom/android/settings/OldmanModeSettings;

    invoke-static {v0}, Lcom/android/settings/OldmanModeSettings;->a(Lcom/android/settings/OldmanModeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/gg;->wy:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/gg;->wz:Lcom/android/settings/gf;

    iget-object v0, v0, Lcom/android/settings/gf;->wx:Lcom/android/settings/OldmanModeSettings;

    iget-boolean v1, p0, Lcom/android/settings/gg;->wy:Z

    invoke-static {v0, v1}, Lcom/android/b/a;->s(Landroid/content/Context;Z)V

    goto :goto_0
.end method
