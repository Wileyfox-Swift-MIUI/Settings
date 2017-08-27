.class Lcom/android/settings/fh;
.super Ljava/lang/Object;
.source "MiuiSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic th:I

.field final synthetic ti:Lcom/android/settings/MiuiSecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecuritySettings;I)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/fh;->ti:Lcom/android/settings/MiuiSecuritySettings;

    iput p2, p0, Lcom/android/settings/fh;->th:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 146
    iget v0, p0, Lcom/android/settings/fh;->th:I

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/settings/fh;->ti:Lcom/android/settings/MiuiSecuritySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiSecuritySettings;->a(Lcom/android/settings/MiuiSecuritySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fh;->ti:Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/fh;->ti:Lcom/android/settings/MiuiSecuritySettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/MiuiSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 157
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fh;->ti:Lcom/android/settings/MiuiSecuritySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiSecuritySettings;->b(Lcom/android/settings/MiuiSecuritySettings;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fh;->ti:Lcom/android/settings/MiuiSecuritySettings;

    iget v1, p0, Lcom/android/settings/fh;->th:I

    invoke-static {v0, v1}, Lcom/android/settings/MiuiSecuritySettings;->a(Lcom/android/settings/MiuiSecuritySettings;I)V

    goto :goto_0
.end method
