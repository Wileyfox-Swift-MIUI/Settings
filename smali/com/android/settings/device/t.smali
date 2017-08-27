.class public Lcom/android/settings/device/t;
.super Landroid/os/AsyncTask;
.source "MiuiDeviceInfoSettings.java"


# instance fields
.field private WC:Ljava/lang/String;

.field private WD:Ljava/lang/String;

.field final synthetic WW:Lcom/android/settings/device/MiuiDeviceInfoSettings;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/MiuiDeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/settings/device/t;->WW:Lcom/android/settings/device/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs b([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/settings/device/t;->mContext:Landroid/content/Context;

    .line 680
    iget-object v0, p0, Lcom/android/settings/device/t;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bh(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->ps()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/t;->WC:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/android/settings/device/t;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bh(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->pm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/t;->WD:Ljava/lang/String;

    .line 682
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 671
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/t;->b([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 671
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/t;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/settings/device/t;->WW:Lcom/android/settings/device/MiuiDeviceInfoSettings;

    const-string v1, "device_cpu"

    invoke-virtual {v0, v1}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 688
    iget-object v1, p0, Lcom/android/settings/device/t;->WC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/device/t;->WW:Lcom/android/settings/device/MiuiDeviceInfoSettings;

    const-string v1, "device_memory"

    invoke-virtual {v0, v1}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 691
    iget-object v1, p0, Lcom/android/settings/device/t;->WD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 692
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 693
    return-void
.end method
