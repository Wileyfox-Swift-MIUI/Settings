.class final Lcom/android/settings/widget/o;
.super Lcom/android/settings/widget/r;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field private aAP:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/r;-><init>(Lcom/android/settings/widget/l;)V

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/o;->aAP:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/l;)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/settings/widget/o;-><init>()V

    return-void
.end method


# virtual methods
.method public by(Z)I
    .locals 1

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget v0, p0, Lcom/android/settings/widget/o;->aAP:I

    packed-switch v0, :pswitch_data_0

    .line 526
    :pswitch_0
    const v0, 0x7f0200df

    .line 530
    :goto_0
    return v0

    .line 524
    :pswitch_1
    const v0, 0x7f0200de

    goto :goto_0

    .line 530
    :cond_0
    const v0, 0x7f0200dd

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActualState(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 536
    const-string v2, "location_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/o;->aAP:I

    .line 538
    iget v1, p0, Lcom/android/settings/widget/o;->aAP:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/o;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/o;->setCurrentState(Landroid/content/Context;I)V

    .line 547
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 552
    new-instance v1, Lcom/android/settings/widget/p;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/widget/p;-><init>(Lcom/android/settings/widget/o;Landroid/content/Context;Landroid/content/ContentResolver;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 590
    return-void
.end method

.method public xA()I
    .locals 1

    .prologue
    .line 515
    const v0, 0x7f130368

    return v0
.end method

.method public xB()I
    .locals 1

    .prologue
    .line 516
    const v0, 0x7f130369

    return v0
.end method

.method public xC()I
    .locals 1

    .prologue
    .line 517
    const v0, 0x7f13036a

    return v0
.end method

.method public xD()I
    .locals 1

    .prologue
    .line 518
    const v0, 0x7f0a07ab

    return v0
.end method
