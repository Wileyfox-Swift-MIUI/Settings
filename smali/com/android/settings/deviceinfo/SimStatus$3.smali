.class Lcom/android/settings/deviceinfo/SimStatus$3;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic YJ:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 460
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 461
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/SimStatus;->d(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->a(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 464
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->e(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->f(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->e(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->a(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->g(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->e(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->f(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->e(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->b(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->c(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->YJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->h(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 480
    return-void
.end method
