.class Lcom/android/settings/dh;
.super Ljava/lang/Object;
.source "FingerprintManageSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic nk:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/dh;->nk:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    const-string v2, "add_fingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/dh;->nk:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-static {v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->a(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    .line 129
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dh;->nk:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-static {v2, v1, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->a(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
