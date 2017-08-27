.class public Lcom/android/settings/NotificationAppListSettings;
.super Lcom/android/settings/BaseFragment;
.source "NotificationAppListSettings.java"


# instance fields
.field private bI:Landroid/view/LayoutInflater;

.field private bJ:Lcom/android/settings/q;

.field private bK:Landroid/widget/ListView;

.field private bP:Landroid/content/BroadcastReceiver;

.field private bQ:Ljava/util/List;

.field private bR:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private we:Lcom/android/settings/ga;

.field private wf:Lcom/android/settings/gd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 135
    new-instance v0, Lcom/android/settings/fW;

    invoke-direct {v0, p0}, Lcom/android/settings/fW;-><init>(Lcom/android/settings/NotificationAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bP:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bR:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bQ:Ljava/util/List;

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/android/settings/NotificationAppListSettings;Lcom/android/settings/gd;)Lcom/android/settings/gd;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings;->wf:Lcom/android/settings/gd;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/NotificationAppListSettings;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/NotificationAppListSettings;->ac()V

    return-void
.end method

.method private ac()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v0, Lcom/android/settings/fX;

    invoke-virtual {p0}, Lcom/android/settings/NotificationAppListSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fX;-><init>(Lcom/android/settings/NotificationAppListSettings;Landroid/app/FragmentManager;)V

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Lcom/android/settings/fX;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    return-void
.end method

.method static synthetic b(Lcom/android/settings/NotificationAppListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bR:Ljava/util/List;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/NotificationAppListSettings;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/NotificationAppListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bQ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0a0020

    const/4 v1, 0x1

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    .line 228
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 229
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const/4 v0, 0x0

    .line 233
    const-string v3, "_message"

    invoke-static {p0, p1, v3}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 237
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 238
    if-eqz v0, :cond_6

    .line 239
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :goto_1
    const v1, 0x7f0a001e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_3
    const-string v1, "_keyguard"

    invoke-static {p0, p1, v1}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    if-eqz v0, :cond_4

    .line 248
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_4
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v1

    .line 242
    goto :goto_1
.end method

.method static synthetic e(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/ga;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->we:Lcom/android/settings/ga;

    return-object v0
.end method

.method static synthetic e(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/settings/NotificationAppListSettings;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/NotificationAppListSettings;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bI:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/q;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bJ:Lcom/android/settings/q;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/gd;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->wf:Lcom/android/settings/gd;

    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/NotificationAppListSettings;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/NotificationAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/settings/q;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bJ:Lcom/android/settings/q;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/NotificationAppListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/NotificationAppListSettings;->bP:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->bP:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bJ:Lcom/android/settings/q;

    invoke-virtual {v0}, Lcom/android/settings/q;->stop()V

    .line 131
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 132
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings;->bI:Landroid/view/LayoutInflater;

    .line 95
    const v0, 0x7f04015d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 100
    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 101
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 104
    :cond_0
    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->wf:Lcom/android/settings/gd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->wf:Lcom/android/settings/gd;

    invoke-static {v0}, Lcom/android/settings/gd;->a(Lcom/android/settings/gd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->wf:Lcom/android/settings/gd;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/NotificationAppListSettings;->wf:Lcom/android/settings/gd;

    invoke-virtual {v2}, Lcom/android/settings/gd;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/NotificationAppListSettings;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/gd;->a(Lcom/android/settings/gd;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->wf:Lcom/android/settings/gd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/gd;->a(Lcom/android/settings/gd;Z)Z

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->we:Lcom/android/settings/ga;

    invoke-virtual {v0}, Lcom/android/settings/ga;->notifyDataSetChanged()V

    .line 125
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f130040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bK:Landroid/widget/ListView;

    .line 112
    new-instance v0, Lcom/android/settings/ga;

    invoke-direct {v0, p0}, Lcom/android/settings/ga;-><init>(Lcom/android/settings/NotificationAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->we:Lcom/android/settings/ga;

    .line 113
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->bK:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->we:Lcom/android/settings/ga;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/NotificationAppListSettings;->ac()V

    .line 115
    return-void
.end method
