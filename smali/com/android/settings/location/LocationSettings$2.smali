.class Lcom/android/settings/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic ajj:Lcom/android/settings/location/LocationSettings;

.field final synthetic ajk:Lcom/android/settings/hs;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/hs;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$2;->ajj:Lcom/android/settings/location/LocationSettings;

    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$2;->ajk:Lcom/android/settings/hs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$2;->ajk:Lcom/android/settings/hs;

    const-class v1, Lcom/android/settings/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a04eb

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings$2;->ajj:Lcom/android/settings/location/LocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hs;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 203
    const/4 v0, 0x1

    return v0
.end method
