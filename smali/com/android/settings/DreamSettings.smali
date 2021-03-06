.class public Lcom/android/settings/DreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Lcom/android/settings/widget/x;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lk:Z

.field private mContext:Landroid/content/Context;

.field private final mq:Lcom/android/settings/cO;

.field private mr:Lcom/android/settings/cD;

.field private ms:Lcom/android/settings/cK;

.field private mt:Lcom/android/settings/widget/SwitchBar;

.field private mu:[Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/cO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cO;-><init>(Lcom/android/settings/DreamSettings;Lcom/android/settings/cG;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mq:Lcom/android/settings/cO;

    .line 375
    return-void
.end method

.method private a(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 178
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 179
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 180
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 181
    new-instance v1, Lcom/android/settings/cI;

    invoke-direct {v1, p0, p5}, Lcom/android/settings/cI;-><init>(Lcom/android/settings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 188
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/DreamSettings;)Lcom/android/settings/cD;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method static synthetic b(Lcom/android/settings/DreamSettings;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->dU()V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private dT()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0a03b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0a03af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0a03ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 206
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    invoke-virtual {v4}, Lcom/android/settings/cD;->dP()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    invoke-virtual {v4}, Lcom/android/settings/cD;->dQ()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a03b3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/cJ;

    invoke-direct {v2, p0}, Lcom/android/settings/cJ;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    invoke-virtual {v0}, Lcom/android/settings/cD;->dP()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    invoke-virtual {v0}, Lcom/android/settings/cD;->dQ()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private dU()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 271
    const-string v0, "refreshFromBackend()"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DreamSettings;->lk:Z

    .line 273
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    invoke-virtual {v0}, Lcom/android/settings/cD;->isEnabled()Z

    move-result v2

    .line 274
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->ms:Lcom/android/settings/cK;

    invoke-virtual {v0}, Lcom/android/settings/cK;->clear()V

    .line 278
    if-eqz v2, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    invoke-virtual {v0}, Lcom/android/settings/cD;->dM()Ljava/util/List;

    move-result-object v0

    .line 280
    iget-object v3, p0, Lcom/android/settings/DreamSettings;->ms:Lcom/android/settings/cK;

    invoke-virtual {v3, v0}, Lcom/android/settings/cK;->addAll(Ljava/util/Collection;)V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mu:[Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 283
    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mu:[Landroid/view/MenuItem;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 284
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/DreamSettings;->lk:Z

    .line 286
    return-void
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lcom/android/settings/cD;

    invoke-direct {v0, p0}, Lcom/android/settings/cD;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {v0}, Lcom/android/settings/cD;->isEnabled()Z

    move-result v1

    .line 263
    if-nez v1, :cond_0

    .line 264
    const v0, 0x7f0a03b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/cD;->dO()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected L()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x2f

    return v0
.end method

.method public a(Landroid/widget/Switch;Z)V
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/settings/DreamSettings;->lk:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    invoke-virtual {v0, p2}, Lcom/android/settings/cD;->setEnabled(Z)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->dU()V

    .line 106
    :cond_0
    return-void
.end method

.method public aL()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0a098f

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 125
    const-string v0, "onActivityCreated(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    const v2, 0x7f0a03b2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 135
    new-instance v0, Lcom/android/settings/cK;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/cK;-><init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->ms:Lcom/android/settings/cK;

    .line 136
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->ms:Lcom/android/settings/cK;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hs;

    .line 139
    invoke-virtual {v0}, Lcom/android/settings/hs;->hN()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    .line 140
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/x;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 142
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 80
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    iput-object p1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 92
    const-string v0, "onCreate(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    new-instance v0, Lcom/android/settings/cD;

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cD;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/settings/DreamSettings;->setHasOptionsMenu(Z)V

    .line 98
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 193
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    if-ne p1, v4, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->dT()Landroid/app/Dialog;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 146
    const-string v0, "onCreateOptionsMenu()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mr:Lcom/android/settings/cD;

    invoke-virtual {v0}, Lcom/android/settings/cD;->isEnabled()Z

    move-result v4

    .line 151
    const v2, 0x7f0a03b4

    new-instance v5, Lcom/android/settings/cG;

    invoke-direct {v5, p0}, Lcom/android/settings/cG;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->a(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 160
    const v2, 0x7f0a03b3

    new-instance v5, Lcom/android/settings/cH;

    invoke-direct {v5, p0}, Lcom/android/settings/cH;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->a(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 173
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/MenuItem;

    aput-object v6, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/settings/DreamSettings;->mu:[Landroid/view/MenuItem;

    .line 174
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/x;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mt:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 121
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 228
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mq:Lcom/android/settings/cO;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 233
    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->dU()V

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mq:Lcom/android/settings/cO;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 112
    return-void
.end method
