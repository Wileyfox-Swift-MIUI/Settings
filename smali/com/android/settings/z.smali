.class Lcom/android/settings/z;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# instance fields
.field final synthetic be:Lcom/android/settings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/settings/z;->be:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/w;)V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/android/settings/z;-><init>(Lcom/android/settings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 591
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 609
    :goto_0
    return-void

    .line 593
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/z;->be:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 594
    if-nez v0, :cond_0

    .line 595
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->e(Z)Z

    goto :goto_0

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/android/settings/z;->be:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->a(Lcom/android/settings/ApnSettings;)V

    .line 599
    iget-object v1, p0, Lcom/android/settings/z;->be:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 600
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->e(Z)Z

    .line 601
    iget-object v1, p0, Lcom/android/settings/z;->be:Lcom/android/settings/ApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/android/settings/ApnSettings;->removeDialog(I)V

    .line 602
    iget-object v1, p0, Lcom/android/settings/z;->be:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a049d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
