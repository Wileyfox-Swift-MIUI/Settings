.class Lcom/android/settings/Q;
.super Lmiui/os/AsyncTaskWithProgress;
.source "AutoDisableScreenButtonsAppListSettings.java"


# instance fields
.field final synthetic bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/Q;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->g(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 251
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 252
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 253
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 255
    iget-object v4, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v4}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->a(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lmiui/util/AutoDisableScreenButtonsHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 256
    new-instance v5, Lcom/android/settings/X;

    iget-object v6, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v6, v0, v4}, Lcom/android/settings/X;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/content/pm/ApplicationInfo;I)V

    .line 257
    const/4 v0, 0x3

    if-ne v4, v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 202
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/Q;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 206
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/R;

    invoke-direct {v2, p0}, Lcom/android/settings/R;-><init>(Lcom/android/settings/Q;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 216
    iget-object v1, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/S;

    invoke-direct {v2, p0}, Lcom/android/settings/S;-><init>(Lcom/android/settings/Q;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    iget-object v1, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 226
    new-instance v1, Lcom/android/settings/X;

    iget-object v2, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    iget-object v3, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v3}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->a(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0018

    iget-object v5, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v5}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v7}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/X;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Ljava/lang/String;)V

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 233
    new-instance v1, Lcom/android/settings/X;

    iget-object v2, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    iget-object v3, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v3}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->a(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0019

    iget-object v5, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v5}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v7}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/X;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Ljava/lang/String;)V

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->f(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/T;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/T;->setItems(Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/Q;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->f(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/T;->notifyDataSetChanged()V

    .line 242
    return-void
.end method
