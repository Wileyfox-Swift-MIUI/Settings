.class public Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;
.super Lmiui/app/Activity;
.source "PrivacyPasswordConfirmAccessControl.java"


# instance fields
.field protected apS:Landroid/widget/TextView;

.field protected apT:Landroid/widget/TextView;

.field private apU:Landroid/widget/TextView;

.field private apV:Lcom/android/settings/LockPatternView;

.field private apW:Landroid/view/View;

.field private apX:Landroid/widget/ImageView;

.field private apY:Z

.field private apZ:Z

.field private apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

.field protected apr:Landroid/widget/ImageView;

.field private aps:Landroid/view/View;

.field private apu:Landroid/view/View$OnClickListener;

.field private aqa:Z

.field private aqb:Z

.field private aqc:Z

.field private aqd:Z

.field protected aqe:Ljava/lang/CharSequence;

.field protected aqf:Ljava/lang/CharSequence;

.field private aqg:I

.field protected aqh:Ljava/lang/CharSequence;

.field protected aqi:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

.field private aqj:Lcom/android/settings/dT;

.field private eI:Ljava/lang/Runnable;

.field private es:Lcom/android/settings/dc;

.field private fB:I

.field private fC:Landroid/os/CountDownTimer;

.field protected fM:Landroid/widget/TextView;

.field private fV:Landroid/database/ContentObserver;

.field private fm:I

.field private fp:Z

.field private m:Landroid/security/ChooseLockSettingsHelper;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private y:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 111
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apY:Z

    .line 123
    iput v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqg:I

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$1;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->eI:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqj:Lcom/android/settings/dT;

    .line 170
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apu:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)I
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fB:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apZ:Z

    return p1
.end method

.method private aQ()V
    .locals 4

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->eI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 604
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->eI:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 605
    return-void
.end method

.method private aT()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 591
    iget v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    if-ne v0, v3, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->m:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 594
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->m:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v3}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 595
    :cond_2
    iget v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 596
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->m:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 597
    :cond_3
    iget v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->m:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)I
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqg:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->eI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apY:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fB:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fB:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aQ()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->uh()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqb:Z

    return v0
.end method

.method static synthetic g(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->ui()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apW:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lmiui/security/SecurityManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->y:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqg:I

    return v0
.end method

.method static synthetic k(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->uj()V

    return-void
.end method

.method static synthetic l(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/dc;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->es:Lcom/android/settings/dc;

    return-object v0
.end method

.method static synthetic m(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    return-object v0
.end method

.method static synthetic n(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fp:Z

    return v0
.end method

.method static synthetic o(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apU:Landroid/widget/TextView;

    return-object v0
.end method

.method private uc()V
    .locals 2

    .prologue
    .line 668
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->cj(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->u(Landroid/content/Context;I)V

    .line 670
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->uk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->ck(Landroid/content/Context;)V

    .line 674
    :cond_0
    return-void
.end method

.method private uh()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqa:Z

    .line 609
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->ek()V

    .line 610
    return-void
.end method

.method private ui()V
    .locals 3

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqa:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->cj(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqa:Z

    .line 617
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->uk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$10;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$10;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->es:Lcom/android/settings/dc;

    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->es:Lcom/android/settings/dc;

    invoke-virtual {v2}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/dc;->a(Lcom/android/settings/dg;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    const-string v1, "PrivacyPasswordConfirmAccessControl"

    const-string v2, "finger identify error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    const v1, 0x7f0a11ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private uj()V
    .locals 3

    .prologue
    const v2, 0x7f0a11fd

    .line 661
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apT:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apT:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 663
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    const v1, 0x7f0a11ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 664
    invoke-virtual {p0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqe:Ljava/lang/CharSequence;

    .line 665
    return-void
.end method

.method private uk()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ul()V
    .locals 5

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->up()Z

    move-result v0

    .line 682
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->un()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->co(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->un()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_1

    .line 684
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a1212

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 693
    :cond_1
    :goto_0
    return-void

    .line 689
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a1214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 501
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$13;->aql:[I

    invoke-virtual {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 536
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 537
    return-void

    .line 503
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apT:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/settings/LockPatternView;->setEnabled(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->enableInput()V

    .line 507
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fp:Z

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apU:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqf:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqf:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :goto_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqh:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apT:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqh:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :goto_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    sget-object v1, Lcom/android/settings/LockPatternView$DisplayMode;->qb:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->a(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 523
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/settings/LockPatternView;->setEnabled(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->enableInput()V

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    const v1, 0x7f0a0525

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apT:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 527
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 530
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/settings/LockPatternView;->setEnabled(Z)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->ud()V

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 696
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1217

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$12;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$12;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V

    invoke-virtual {v0, p2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 726
    return-void
.end method

.method protected a(ZLjava/util/List;)V
    .locals 2

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->uc()V

    .line 457
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aT()V

    .line 458
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->y:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->ek()V

    .line 462
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->setResult(I)V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->finish()V

    .line 464
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    const v0, 0x7f050001

    const v1, 0x7f050002

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->overridePendingTransition(II)V

    .line 467
    :cond_1
    return-void
.end method

.method protected aU()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->um()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(ZLjava/util/List;)V

    .line 366
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fp:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->finish()V

    .line 370
    :cond_0
    return-void
.end method

.method protected aV()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 573
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    const-string v1, "privacy_password_extra_data"

    const-string v2, "ModifyPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    return-object v0
.end method

.method protected aW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const-string v0, "access_control_lock_enabled"

    return-object v0
.end method

.method protected aX()I
    .locals 1

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->uk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const v0, 0x7f0a11ed

    .line 586
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a11ec

    goto :goto_0
.end method

.method protected aZ()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqi:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-virtual {v0}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/util/List;)Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->m:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPatternAsUser(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method protected d(J)V
    .locals 7

    .prologue
    .line 470
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aqq:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apW:Landroid/view/View;

    const/high16 v1, 0x64000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 473
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;JJ)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fC:Landroid/os/CountDownTimer;

    .line 494
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apY:Z

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fC:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 497
    :cond_0
    return-void
.end method

.method protected f(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x80000

    const/4 v1, 0x0

    .line 386
    iput-object v3, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    .line 387
    iput-boolean v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fp:Z

    .line 389
    if-eqz p1, :cond_0

    .line 390
    const-string v0, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqe:Ljava/lang/CharSequence;

    .line 392
    const-string v0, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqf:Ljava/lang/CharSequence;

    .line 394
    const-string v0, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqh:Ljava/lang/CharSequence;

    .line 396
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    .line 397
    const-string v0, "confirm_purpose"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    .line 399
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    .line 400
    const-string v0, "android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fp:Z

    .line 401
    iput-object v3, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqe:Ljava/lang/CharSequence;

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    const-string v2, "StartActivityWhenLocked"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 412
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 413
    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 419
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 407
    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    const-string v2, "PrivacyPasswordConfirmAccessControl"

    const-string v3, "showWhenLock error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 736
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 737
    packed-switch p1, :pswitch_data_0

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 739
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bB(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a1207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 742
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fp:Z

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apU:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 748
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->y:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->b(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->y:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->a(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    .line 752
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 753
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-static {p0, v0, v1}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/android/settings/privacypassword/PrivacyPasswordManager;)V

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Lmiui/app/Activity;->onBackPressed()V

    .line 342
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const v0, 0x7f040111

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->setContentView(I)V

    .line 199
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->uq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->setRequestedOrientation(I)V

    .line 203
    :cond_0
    const v0, 0x7f130226

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apS:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apS:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apu:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f130228

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apr:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apr:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    const v0, 0x7f130225

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aps:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aps:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 210
    new-instance v0, Lcom/android/settings/dc;

    invoke-direct {v0, p0}, Lcom/android/settings/dc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->es:Lcom/android/settings/dc;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->cg(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 212
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->uo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqd:Z

    .line 213
    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->cl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqc:Z

    .line 214
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->m:Landroid/security/ChooseLockSettingsHelper;

    .line 215
    const-string v0, "security"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->y:Lmiui/security/SecurityManager;

    .line 216
    new-instance v0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-direct {v0, p0}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqi:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aW()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fV:Landroid/database/ContentObserver;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aW()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fV:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    :cond_1
    const v0, 0x7f130224

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apW:Landroid/view/View;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->f(Landroid/content/Intent;)V

    .line 228
    const v0, 0x7f130229

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f13022b

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    .line 230
    const v0, 0x7f13022a

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apT:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f13022c

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apU:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aZ()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    iget-object v3, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqj:Lcom/android/settings/dT;

    invoke-virtual {v0, v3}, Lcom/android/settings/LockPatternView;->a(Lcom/android/settings/dT;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->ch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->setInStealthMode(Z)V

    .line 235
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aqo:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 237
    if-eqz p1, :cond_5

    .line 238
    const-string v0, "privacy_num_wrong_attempts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fB:I

    .line 243
    :goto_2
    invoke-static {p0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->a(Landroid/app/Activity;Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "miui.KEYGUARD_LOCKED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apZ:Z

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    const v0, 0x7f130227

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apX:Landroid/widget/ImageView;

    .line 252
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apX:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_from_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 259
    if-nez v0, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->ul()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apX:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 213
    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 234
    goto :goto_1

    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aU()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_from_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 764
    if-nez v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f140007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 767
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fV:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fV:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fC:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fC:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 335
    :cond_1
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 337
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 772
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 779
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 774
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privacypassword/TransparentHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 775
    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->startActivity(Landroid/content/Intent;)V

    .line 776
    const/4 v0, 0x1

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x7f130423
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 350
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fC:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apY:Z

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->uh()V

    .line 354
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Lmiui/app/Activity;->onRestart()V

    .line 359
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apT:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 361
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 288
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 289
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->um()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->finish()V

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->ud()V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->ue()J

    move-result-wide v0

    .line 294
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 295
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->d(J)V

    .line 303
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_7

    .line 304
    :cond_2
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 305
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 306
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apZ:Z

    if-nez v0, :cond_3

    .line 307
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->ui()V

    .line 309
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apZ:Z

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->cj(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 323
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->uj()V

    .line 325
    :cond_5
    return-void

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apV:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fB:I

    .line 300
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aqo:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    goto :goto_0

    .line 319
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->ui()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 345
    const-string v0, "privacy_num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fB:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqb:Z

    .line 279
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aqb:Z

    .line 284
    return-void
.end method

.method protected ud()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->un()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apc:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->un()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->co(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apU:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->ug()V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apU:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected ue()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privacy_password_countDownTimer_deadline"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 375
    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    :cond_0
    move-wide v0, v2

    .line 378
    :cond_1
    return-wide v0
.end method

.method public uf()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v5, -0x3e100000    # -30.0f

    const-wide/16 v6, 0x32

    const/4 v4, 0x0

    .line 430
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v4, v5, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 431
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 432
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 433
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 435
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v5, v8, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 436
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 437
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 438
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 440
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v8, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 441
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 442
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 443
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 445
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 446
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 447
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 448
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 449
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 450
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 451
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fM:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    return-void
.end method

.method protected ug()V
    .locals 3

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apU:Landroid/widget/TextView;

    const v2, 0x7f0a11e4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 545
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->apU:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$9;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$9;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    return-void
.end method
