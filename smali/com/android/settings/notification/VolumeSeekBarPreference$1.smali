.class Lcom/android/settings/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# instance fields
.field final synthetic amx:Lcom/android/settings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->amx:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->amx:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->a(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->amx:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->a(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 94
    :cond_0
    return-void
.end method
