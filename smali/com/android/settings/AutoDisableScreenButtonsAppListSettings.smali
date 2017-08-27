.class public Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;
.super Lcom/android/settings/BaseFragment;
.source "AutoDisableScreenButtonsAppListSettings.java"


# static fields
.field public static final bO:[I


# instance fields
.field private bI:Landroid/view/LayoutInflater;

.field private bJ:Lcom/android/settings/q;

.field private bK:Landroid/widget/ListView;

.field private bL:Lcom/android/settings/T;

.field private bM:Landroid/widget/CheckBox;

.field public bN:[Ljava/lang/String;

.field private bP:Landroid/content/BroadcastReceiver;

.field private bQ:Ljava/util/List;

.field private bR:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bO:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 191
    new-instance v0, Lcom/android/settings/P;

    invoke-direct {v0, p0}, Lcom/android/settings/P;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bP:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bQ:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bR:Ljava/util/List;

    .line 314
    return-void
.end method

.method static synthetic a(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 276
    const v0, 0x7f0a115a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 278
    const v0, 0x7f0a115b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 280
    const v0, 0x7f0a115c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ab()V
    .locals 5

    .prologue
    .line 142
    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f04001f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_auto_disable_screen_rotation"

    const/4 v3, 0x1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v2

    .line 150
    const v0, 0x1020001

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bM:Landroid/widget/CheckBox;

    .line 151
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bM:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bM:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/N;

    invoke-direct {v2, p0}, Lcom/android/settings/N;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    new-instance v0, Lcom/android/settings/O;

    invoke-direct {v0, p0}, Lcom/android/settings/O;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bK:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private ac()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    new-instance v0, Lcom/android/settings/Q;

    invoke-virtual {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Q;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/app/FragmentManager;)V

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Lcom/android/settings/Q;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    return-void
.end method

.method static synthetic b(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bM:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->ac()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bQ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bR:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/T;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bL:Lcom/android/settings/T;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bI:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/q;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bJ:Lcom/android/settings/q;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/android/settings/q;

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bJ:Lcom/android/settings/q;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bP:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0a115a

    invoke-virtual {p0, v2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0a115b

    invoke-virtual {p0, v2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a115c

    invoke-virtual {p0, v2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bN:[Ljava/lang/String;

    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bP:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bJ:Lcom/android/settings/q;

    invoke-virtual {v0}, Lcom/android/settings/q;->stop()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    .line 188
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 189
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bI:Landroid/view/LayoutInflater;

    .line 118
    const v0, 0x7f04001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 122
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 123
    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 124
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 127
    :cond_0
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onResume()V

    .line 176
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f130040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bK:Landroid/widget/ListView;

    .line 135
    new-instance v0, Lcom/android/settings/T;

    invoke-direct {v0, p0}, Lcom/android/settings/T;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bL:Lcom/android/settings/T;

    .line 136
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bK:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->bL:Lcom/android/settings/T;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->ab()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->ac()V

    .line 139
    return-void
.end method
