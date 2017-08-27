.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final eI:Ljava/lang/Runnable;

.field private final et:Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

.field private gA:Landroid/widget/EditText;

.field private gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

.field private gC:Lmiui/view/MiuiKeyBoardView;

.field private gD:I

.field private gE:I

.field private gF:I

.field private final gG:Ljava/lang/Runnable;

.field private gH:Landroid/app/StatusBarManager;

.field protected gI:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private gu:Z

.field private gv:Z

.field private gw:Z

.field private gx:Z

.field private gy:Z

.field private gz:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->gz:Z

    .line 143
    iput v0, p0, Lcom/android/settings/CryptKeeper;->gD:I

    .line 145
    iput v0, p0, Lcom/android/settings/CryptKeeper;->gE:I

    .line 146
    const v0, 0x7f0a0844

    iput v0, p0, Lcom/android/settings/CryptKeeper;->gF:I

    .line 156
    new-instance v0, Lcom/android/settings/bf;

    invoke-direct {v0, p0}, Lcom/android/settings/bf;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->gG:Ljava/lang/Runnable;

    .line 166
    new-instance v0, Lcom/android/settings/bg;

    invoke-direct {v0, p0}, Lcom/android/settings/bg;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->eI:Ljava/lang/Runnable;

    .line 361
    new-instance v0, Lcom/android/settings/bh;

    invoke-direct {v0, p0}, Lcom/android/settings/bh;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 771
    new-instance v0, Lcom/android/settings/bk;

    invoke-direct {v0, p0}, Lcom/android/settings/bk;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->gI:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 799
    new-instance v0, Lcom/android/settings/bl;

    invoke-direct {v0, p0}, Lcom/android/settings/bl;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->et:Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/android/settings/CryptKeeper;->gF:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/MiuiKeyguardLockPatternView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bl()V

    .line 768
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gG:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 769
    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;ZZ)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CryptKeeper;->b(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 267
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->eI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 270
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->eI:Ljava/lang/Runnable;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/settings/MiuiKeyguardLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    .line 275
    iput-boolean v6, p0, Lcom/android/settings/CryptKeeper;->gz:Z

    .line 278
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->br()V

    .line 322
    :cond_0
    :goto_1
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :cond_2
    const v0, 0x7f13004d

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1e

    .line 283
    const/16 v3, 0xa

    if-ge v1, v3, :cond_4

    .line 284
    const v3, 0x7f0a01f9

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 285
    new-array v4, v6, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_2
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-virtual {v0, v6}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setEnabled(Z)V

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 319
    invoke-direct {p0, v6}, Lcom/android/settings/CryptKeeper;->k(Z)V

    goto :goto_1

    .line 291
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 292
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 297
    :goto_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 298
    const v1, 0x7f0a0849

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 293
    :catch_0
    move-exception v1

    .line 294
    const-string v3, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling mount service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_3

    .line 299
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 300
    const v1, 0x7f0a0847

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 302
    :cond_6
    const v1, 0x7f0a0848

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->gy:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bl()V

    return-void
.end method

.method private b(ZZ)V
    .locals 5

    .prologue
    const v4, 0x7f130066

    const v3, 0x7f13004d

    const/4 v2, 0x0

    .line 642
    const v0, 0x7f130092

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    const v0, 0x7f130094

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 646
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 647
    new-instance v1, Lcom/android/settings/bj;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/bj;-><init>(Lcom/android/settings/CryptKeeper;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    if-eqz p1, :cond_1

    .line 675
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 676
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 682
    :goto_0
    const v0, 0x7f1300b9

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 687
    :cond_0
    return-void

    .line 678
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 679
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->gu:Z

    return p1
.end method

.method private bl()V
    .locals 2

    .prologue
    .line 261
    const v0, 0x7f13004d

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    const v1, 0x7f0a084a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    return-void
.end method

.method private bm()Z
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bn()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 405
    iget v0, p0, Lcom/android/settings/CryptKeeper;->gD:I

    if-lez v0, :cond_2

    .line 406
    iget v0, p0, Lcom/android/settings/CryptKeeper;->gD:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->gD:I

    .line 420
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget v0, p0, Lcom/android/settings/CryptKeeper;->gE:I

    if-lez v0, :cond_3

    .line 425
    iget v0, p0, Lcom/android/settings/CryptKeeper;->gE:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->gE:I

    .line 430
    :cond_1
    :goto_1
    return-void

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private bo()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const v3, 0x7f04004d

    .line 500
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->gw:Z

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 502
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->gx:Z

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->gy:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/CryptKeeper;->b(ZZ)V

    .line 575
    :cond_1
    :goto_0
    return-void

    .line 506
    :cond_2
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "progress"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 508
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 509
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bp()V

    goto :goto_0

    .line 510
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->gu:Z

    if-nez v1, :cond_5

    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 511
    :cond_5
    new-instance v0, Lcom/android/settings/bi;

    invoke-direct {v0, p0}, Lcom/android/settings/bi;-><init>(Lcom/android/settings/CryptKeeper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 570
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->gv:Z

    if-nez v1, :cond_1

    .line 572
    new-instance v1, Lcom/android/settings/bp;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bp;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/bf;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/bp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->gv:Z

    goto :goto_0
.end method

.method private bp()V
    .locals 3

    .prologue
    .line 615
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption progress screen initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 617
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 619
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 620
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 626
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->k(Z)V

    .line 629
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bq()V

    .line 630
    return-void
.end method

.method private bq()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 690
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 692
    const-string v2, "error_partially_encrypted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    invoke-direct {p0, v0, v0}, Lcom/android/settings/CryptKeeper;->b(ZZ)V

    .line 736
    :goto_0
    return-void

    .line 703
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bm()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x32

    :goto_1
    move v1, v0

    .line 729
    :goto_2
    const-string v0, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encryption progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const v0, 0x7f130093

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setProgress(I)V

    .line 734
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 735
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 703
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 704
    :catch_0
    move-exception v1

    .line 705
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_2
.end method

.method private br()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setEnabled(Z)V

    .line 750
    :cond_1
    const v0, 0x7f13004d

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 751
    const v1, 0x7f0a01f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 752
    return-void
.end method

.method private bs()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 833
    const v0, 0x7f130091

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    .line 834
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 839
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 840
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 841
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 843
    const v0, 0x7f130074

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->gC:Lmiui/view/MiuiKeyBoardView;

    .line 844
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gC:Lmiui/view/MiuiKeyBoardView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->et:Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Lmiui/view/MiuiKeyBoardView;->addKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V

    .line 849
    :cond_0
    const v0, 0x7f130076

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiKeyguardLockPatternView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    .line 850
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gB:Lcom/android/settings/MiuiKeyguardLockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->gI:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 855
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 856
    const v0, 0x7f13008e

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 857
    if-eqz v0, :cond_2

    .line 858
    const-string v1, "CryptKeeper"

    const-string v2, "Removing the emergency Call button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_3

    .line 882
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 884
    if-eqz v0, :cond_3

    .line 885
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 886
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 889
    const/16 v0, 0x60

    iput v0, p0, Lcom/android/settings/CryptKeeper;->gE:I

    .line 905
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bu()V

    .line 907
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 908
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 913
    return-void
.end method

.method private final bt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1021
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 1023
    :goto_0
    if-nez v0, :cond_0

    .line 1024
    const-string v0, "CryptKeeper"

    const-string v2, "Going into airplane mode."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1028
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1030
    :cond_0
    return-void

    .line 1021
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bu()V
    .locals 2

    .prologue
    .line 1039
    const v0, 0x7f13008e

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1041
    if-nez v0, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1044
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bv()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1045
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1046
    new-instance v1, Lcom/android/settings/bm;

    invoke-direct {v1, p0}, Lcom/android/settings/bm;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->by()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1061
    const v1, 0x7f0a08e0

    .line 1065
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1054
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1063
    :cond_2
    const v1, 0x7f0a08df

    goto :goto_1
.end method

.method private bv()Z
    .locals 2

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$bool;->config_voice_capable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private bw()V
    .locals 2

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->by()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1074
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1079
    :goto_0
    return-void

    .line 1077
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bx()V

    goto :goto_0
.end method

.method private bx()V
    .locals 2

    .prologue
    .line 1083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1086
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->k(Z)V

    .line 1087
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1088
    return-void
.end method

.method private by()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 1095
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private bz()V
    .locals 1

    .prologue
    .line 1102
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->gD:I

    .line 1103
    return-void
.end method

.method static synthetic c(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->gw:Z

    return p1
.end method

.method static synthetic d(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->eI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->gx:Z

    return p1
.end method

.method static synthetic e(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->k(Z)V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/CryptKeeper;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->gy:Z

    return v0
.end method

.method private static f(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1134
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1135
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1138
    return-void
.end method

.method static synthetic f(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bo()V

    return-void
.end method

.method static synthetic g(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bq()V

    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 1

    .prologue
    .line 966
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 967
    if-eqz v0, :cond_0

    .line 968
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 970
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1091
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bn()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings/CryptKeeper;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings/CryptKeeper;->gF:I

    return v0
.end method

.method static synthetic j(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bs()V

    return-void
.end method

.method private final k(Z)V
    .locals 2

    .prologue
    .line 759
    if-eqz p1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gH:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gH:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/android/settings/CryptKeeper;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->gz:Z

    return v0
.end method

.method static synthetic l(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->br()V

    return-void
.end method

.method static synthetic m(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gA:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bw()V

    return-void
.end method

.method private z(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 1129
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1119
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 442
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 447
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bm()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    :cond_0
    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->f(Landroid/content/Context;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_3
    :goto_1
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->gH:Landroid/app/StatusBarManager;

    .line 471
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->gH:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 473
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bt()V

    .line 474
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 477
    instance-of v1, v0, Lcom/android/settings/bo;

    if-eqz v1, :cond_1

    .line 478
    check-cast v0, Lcom/android/settings/bo;

    .line 479
    iget-object v0, v0, Lcom/android/settings/bo;->gQ:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 480
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 599
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 601
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 602
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 606
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bz()V

    .line 1108
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 591
    new-instance v0, Lcom/android/settings/bo;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/bo;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 592
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 594
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 491
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 492
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bo()V

    .line 493
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 579
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 580
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bz()V

    .line 1125
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bz()V

    .line 1114
    const/4 v0, 0x0

    return v0
.end method
