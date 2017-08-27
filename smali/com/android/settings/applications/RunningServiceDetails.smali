.class public Lcom/android/settings/applications/RunningServiceDetails;
.super Lcom/android/settings/InstrumentedFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# instance fields
.field In:Lcom/android/settings/applications/RunningState;

.field NJ:Landroid/app/ActivityManager;

.field NX:Z

.field OA:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field OB:I

.field OC:I

.field OD:Landroid/widget/TextView;

.field OE:Landroid/widget/TextView;

.field final OF:Ljava/util/ArrayList;

.field Ow:Lcom/android/settings/applications/RunningState$MergedItem;

.field Ox:Landroid/view/ViewGroup;

.field Oy:Landroid/view/ViewGroup;

.field Oz:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mProcessName:Ljava/lang/String;

.field mRootView:Landroid/view/View;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 596
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/applications/RunningServiceDetails;->d(Landroid/content/ComponentName;)V

    return-void
.end method

.method private d(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 581
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->a(ILandroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 583
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    const-string v1, "RunningServicesDetails"

    const-string v2, "Failed to show confirm stop dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 507
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    return-void
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 560
    const/16 v0, 0x55

    return v0
.end method

.method a(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    if-eqz p1, :cond_1

    .line 414
    if-eqz p2, :cond_0

    move v1, v2

    .line 415
    :goto_0
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->MP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 416
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->MP:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v0, p1, v3, v3}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    .line 415
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 420
    :cond_0
    if-eqz p3, :cond_1

    .line 421
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->MP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 427
    const/4 v1, 0x0

    iget v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v0, v4, :cond_2

    iget v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    const/16 v4, 0x3e7

    if-eq v0, v4, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    .line 443
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 427
    goto :goto_1

    .line 431
    :cond_3
    const/4 v0, -0x1

    move v1, v0

    :goto_2
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->PM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 432
    if-gez v1, :cond_4

    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object v4, v0

    .line 434
    :goto_3
    if-eqz v4, :cond_5

    iget v0, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v0, :cond_5

    .line 431
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 432
    :cond_4
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->PM:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object v4, v0

    goto :goto_3

    .line 438
    :cond_5
    if-gez v1, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5
.end method

.method a(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->lE()V

    .line 353
    new-instance v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040134

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 357
    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 358
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OL:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 359
    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OL:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, p1, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v1

    iput-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OK:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 361
    const v1, 0x7f1302c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 364
    iget v1, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_1

    .line 367
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    return-void

    .line 368
    :cond_1
    if-eqz p2, :cond_2

    .line 369
    const v1, 0x7f0a05d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 372
    :cond_2
    const/4 v1, 0x0

    .line 373
    iget-object v5, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->PU:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 374
    iget-object v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 377
    iget v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 403
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 379
    :pswitch_0
    const v2, 0x7f0a05db

    .line 380
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/settings/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_1

    .line 391
    :pswitch_1
    const v2, 0x7f0a05da

    .line 392
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 394
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/settings/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 398
    :catch_0
    move-exception v5

    goto :goto_1

    .line 386
    :catch_1
    move-exception v5

    goto :goto_1

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 10

    .prologue
    const/16 v9, 0x3e7

    const/4 v2, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 256
    if-eqz p3, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->lD()V

    .line 268
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 270
    :goto_1
    new-instance v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 271
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040135

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 273
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    iput-object v5, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 275
    iput-object p1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OJ:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 276
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OL:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 277
    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OL:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v0, v7}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OK:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 279
    if-nez p4, :cond_1

    .line 280
    const v0, 0x7f1302c1

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PX:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->NJ:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PX:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OM:Landroid/app/PendingIntent;

    .line 288
    :cond_2
    const v0, 0x7f1302c2

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    const v1, 0x7f130335

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OH:Landroid/widget/Button;

    .line 290
    const v1, 0x7f130336

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OI:Landroid/widget/Button;

    .line 295
    if-eqz p3, :cond_5

    iget v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v1, v6, :cond_5

    iget v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-eq v1, v9, :cond_5

    .line 299
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    const v0, 0x7f13014a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    return-void

    .line 260
    :cond_3
    iget v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-eq v0, v9, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->lE()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 268
    goto/16 :goto_1

    .line 302
    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PY:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v1, :cond_6

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v5, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PY:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PY:Landroid/content/pm/ServiceInfo;

    iget v6, v6, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PY:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_3
    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OH:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OH:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OM:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    const v0, 0x7f0a05d4

    :goto_4
    invoke-virtual {v5, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OI:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OI:Landroid/widget/Button;

    const v1, 0x1107002e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_action_app_error"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 337
    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PY:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PY:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v1, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->ON:Landroid/content/ComponentName;

    .line 341
    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OI:Landroid/widget/Button;

    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->ON:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 307
    :cond_6
    iget-boolean v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->PJ:Z

    if-eqz v1, :cond_7

    .line 308
    const v1, 0x7f0a05d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 311
    :cond_7
    if-eqz p1, :cond_8

    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OM:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v5, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PX:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 315
    iget-object v5, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->PX:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a05d8

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 318
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 321
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz p1, :cond_9

    const v1, 0x7f0a05d5

    :goto_6
    invoke-virtual {v5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const v1, 0x7f0a05d6

    goto :goto_6

    .line 328
    :cond_a
    const v0, 0x7f0a05d3

    goto/16 :goto_4

    :cond_b
    move v0, v3

    .line 341
    goto :goto_5

    .line 343
    :cond_c
    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OI:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public aI(I)V
    .locals 1

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 669
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 671
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->lx()V

    goto :goto_0

    .line 674
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->au(Z)V

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->lx()V

    goto :goto_0

    .line 678
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->au(Z)V

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->lx()V

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method au(Z)V
    .locals 4

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->lC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    const/4 p1, 0x1

    .line 488
    :cond_0
    if-eqz p1, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ow:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OA:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ow:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Oz:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 502
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->lF()V

    .line 504
    :cond_1
    :goto_1
    return-void

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Oz:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Oz:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->Op:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->Ou:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Oz:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->Op:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->Ov:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Oz:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->Op:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->lE:Landroid/widget/TextView;

    const v1, 0x7f0a05d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 499
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method c(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3

    .prologue
    .line 570
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    .line 572
    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OJ:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OJ:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->PX:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OJ:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->PX:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    :goto_1
    return-object v0

    .line 570
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 577
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 642
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 643
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 644
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RunningState;->c(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 649
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->lI()V

    .line 653
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningServiceDetails;->au(Z)V

    .line 655
    :cond_0
    return-void
.end method

.method lC()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 207
    const/4 v3, 0x0

    .line 208
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->NX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->lK()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    .line 210
    :goto_0
    if-eqz v4, :cond_6

    move v1, v2

    .line 211
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 212
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 213
    iget v5, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUserId:I

    if-eq v5, v6, :cond_2

    .line 211
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->lJ()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 216
    :cond_2
    iget v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    if-ltz v5, :cond_3

    iget-object v5, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    iget v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    if-ne v5, v6, :cond_0

    .line 219
    :cond_3
    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ow:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v1, v0, :cond_5

    .line 228
    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ow:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 229
    const/4 v2, 0x1

    .line 231
    :cond_5
    return v2

    :cond_6
    move-object v0, v3

    goto :goto_2
.end method

.method lD()V
    .locals 4

    .prologue
    .line 235
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OB:I

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040146

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OD:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OD:Landroid/widget/TextView;

    const v1, 0x7f0a05d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->OD:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OB:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OB:I

    .line 242
    return-void
.end method

.method lE()V
    .locals 4

    .prologue
    .line 245
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OC:I

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040146

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OE:Landroid/widget/TextView;

    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OE:Landroid/widget/TextView;

    const v1, 0x7f0a05d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->OE:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OC:I

    .line 252
    return-void
.end method

.method lF()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 446
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 447
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 446
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 451
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OD:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->OD:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 453
    iput-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->OD:Landroid/widget/TextView;

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OE:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->OE:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 458
    iput-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->OE:Landroid/widget/TextView;

    .line 461
    :cond_2
    iput v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->OC:I

    iput v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->OB:I

    .line 463
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ow:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_6

    .line 464
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ow:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PL:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v0, :cond_5

    .line 466
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->NX:Z

    if-eqz v0, :cond_3

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ow:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 468
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->Pj:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v1, v0

    :goto_1
    move v2, v3

    .line 472
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 473
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    .line 472
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ow:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_1

    :cond_4
    move v2, v3

    .line 475
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 476
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    .line 475
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 479
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ow:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    .line 482
    :cond_6
    return-void
.end method

.method lx()V
    .locals 4

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Oz:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Oz:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 661
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->OK:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 661
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 664
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 520
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUserId:I

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->NX:Z

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->NJ:Landroid/app/ActivityManager;

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->ar(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    .line 531
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    const v0, 0x7f040133

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 537
    invoke-static {p2, v1, v1, v2}, Lcom/android/settings/iH;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 539
    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 540
    const v0, 0x7f130018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Ox:Landroid/view/ViewGroup;

    .line 541
    const v0, 0x7f1302c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->Oy:Landroid/view/ViewGroup;

    .line 542
    new-instance v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->Oy:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->OA:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    .line 548
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 553
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 555
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->In:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 556
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 565
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    .line 567
    return-void
.end method
