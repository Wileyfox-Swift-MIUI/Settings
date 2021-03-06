.class public Lcom/android/settings/applications/RunningApplicationsFragment;
.super Lcom/android/settings/BaseFragment;
.source "RunningApplicationsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# instance fields
.field private IJ:I

.field private In:Lcom/android/settings/applications/RunningState;

.field private Lc:Lcom/android/settings/applications/ApplicationsContainer;

.field final NI:Ljava/util/HashMap;

.field private NJ:Landroid/app/ActivityManager;

.field private NK:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

.field NL:Ljava/lang/Runnable;

.field NM:J

.field NN:Lcom/android/settings/applications/RunningState$BaseItem;

.field NO:Lcom/android/internal/util/MemInfoReader;

.field NP:I

.field NQ:I

.field NR:I

.field NS:J

.field NT:J

.field NU:J

.field NV:J

.field private NW:Z

.field private bK:Landroid/widget/ListView;

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NI:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NO:Lcom/android/internal/util/MemInfoReader;

    .line 49
    iput v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NP:I

    .line 50
    iput v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NQ:I

    .line 51
    iput v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NR:I

    .line 52
    iput-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NS:J

    .line 53
    iput-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NT:J

    .line 54
    iput-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NU:J

    .line 55
    iput-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NV:J

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/RunningApplicationsFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.RunningServiceDetailsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v1, "uid"

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v1, "user_id"

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v1, "process"

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "background"

    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NK:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v2, v2, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->NX:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/RunningApplicationsFragment;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public aI(I)V
    .locals 1

    .prologue
    .line 274
    packed-switch p1, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 276
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->lx()V

    goto :goto_0

    .line 279
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->au(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->lx()V

    goto :goto_0

    .line 283
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->au(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->lx()V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method au(Z)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 290
    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->bK:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    check-cast v0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    .line 292
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->ly()V

    .line 293
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->notifyDataSetChanged()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NL:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NL:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NL:Ljava/lang/Runnable;

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NO:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NO:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NO:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NM:J

    sub-long/2addr v0, v4

    .line 306
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_0
    iget v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NP:I

    iget-object v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget v4, v4, Lcom/android/settings/applications/RunningState;->Po:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NS:J

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget-wide v6, v3, Lcom/android/settings/applications/RunningState;->Pp:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NV:J

    cmp-long v3, v4, v0

    if-eqz v3, :cond_4

    .line 314
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->Po:I

    iput v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NP:I

    .line 315
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget-wide v4, v3, Lcom/android/settings/applications/RunningState;->Pp:J

    iput-wide v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NS:J

    .line 316
    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NV:J

    .line 318
    :cond_4
    iget v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NQ:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget v1, v1, Lcom/android/settings/applications/RunningState;->Pq:I

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NT:J

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget-wide v4, v3, Lcom/android/settings/applications/RunningState;->Pr:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NR:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget v1, v1, Lcom/android/settings/applications/RunningState;->Ps:I

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NU:J

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget-wide v4, v3, Lcom/android/settings/applications/RunningState;->Pt:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget v0, v0, Lcom/android/settings/applications/RunningState;->Pq:I

    iput v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NQ:I

    .line 323
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState;->Pr:J

    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NT:J

    .line 324
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget v0, v0, Lcom/android/settings/applications/RunningState;->Ps:I

    iput v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NR:I

    .line 325
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState;->Pt:J

    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NU:J

    .line 327
    :cond_6
    monitor-exit v2

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method lx()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NI:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 263
    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 270
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->setThemeRes(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filter_app_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->IJ:I

    .line 67
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->IJ:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NW:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsContainer;

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->Lc:Lcom/android/settings/applications/ApplicationsContainer;

    .line 73
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    .line 124
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NJ:Landroid/app/ActivityManager;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->ar(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    .line 109
    const v0, 0x7f0400b0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->bK:Landroid/widget/ListView;

    .line 111
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->bK:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->bK:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->bK:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 117
    new-instance v0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningApplicationsFragment;Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NK:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->bK:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NK:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NK:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NW:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->av(Z)V

    .line 121
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NJ:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 123
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NM:J

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 231
    check-cast p1, Landroid/widget/ListView;

    .line 232
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 233
    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NN:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/MiuiSettings;

    if-eqz v1, :cond_0

    .line 235
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 236
    const-string v1, "uid"

    iget-object v2, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v1, "process"

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PK:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "background"

    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NK:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->NX:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v0, ":android:show_fragment_title"

    const v1, 0x7f0a054c

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-class v0, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v5, 0x7f0a05cf

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/RunningApplicationsFragment;->a(Lmiui/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->a(Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NI:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->Lc:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer;->b(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NL:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->Lc:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer;->a(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->In:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->IJ:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->Lc:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsContainer;->kp()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->au(Z)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NK:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NK:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NK:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->NW:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->av(Z)V

    .line 99
    :cond_0
    return-void
.end method
