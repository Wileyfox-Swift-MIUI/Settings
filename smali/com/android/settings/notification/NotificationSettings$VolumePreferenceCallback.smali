.class final Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# instance fields
.field final synthetic alE:Lcom/android/settings/notification/NotificationSettings;

.field private alJ:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alE:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public m(II)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 285
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alJ:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alJ:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alJ:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 288
    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alJ:Landroid/preference/SeekBarVolumizer;

    .line 289
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alJ:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alE:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$H;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alE:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 293
    :cond_1
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alJ:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->alJ:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 304
    :cond_0
    return-void
.end method
