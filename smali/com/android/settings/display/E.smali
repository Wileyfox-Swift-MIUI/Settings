.class Lcom/android/settings/display/E;
.super Lmiui/os/AsyncTaskWithProgress;
.source "PaperModeSetAppsFragment.java"


# instance fields
.field final synthetic abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

.field private abv:Ljava/util/List;

.field private abw:Ljava/util/List;

.field final synthetic dy:Ljava/util/List;

.field private final z:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeSetAppsFragment;Landroid/app/FragmentManager;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings/display/E;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    iput-object p3, p0, Lcom/android/settings/display/E;->dy:Ljava/util/List;

    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/E;->abv:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/E;->abw:Ljava/util/List;

    .line 223
    new-instance v0, Lcom/android/settings/display/F;

    invoke-direct {v0, p0}, Lcom/android/settings/display/F;-><init>(Lcom/android/settings/display/E;)V

    iput-object v0, p0, Lcom/android/settings/display/E;->z:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/E;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/display/E;->abv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/display/E;->abw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/display/E;->dy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 210
    iget-object v1, p0, Lcom/android/settings/display/E;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeSetAppsFragment;->c(Lcom/android/settings/display/PaperModeSetAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/display/E;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeSetAppsFragment;->c(Lcom/android/settings/display/PaperModeSetAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/settings/display/E;->abv:Ljava/util/List;

    new-instance v3, Lcom/android/settings/display/G;

    iget-object v4, p0, Lcom/android/settings/display/E;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    iget-object v5, p0, Lcom/android/settings/display/E;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-static {v5}, Lcom/android/settings/display/PaperModeSetAppsFragment;->d(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/settings/display/G;-><init>(Lcom/android/settings/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_1
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/display/PaperModeSetAppsFragment;->qh()Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/android/settings/display/E;->abw:Ljava/util/List;

    new-instance v3, Lcom/android/settings/display/G;

    iget-object v4, p0, Lcom/android/settings/display/E;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    iget-object v5, p0, Lcom/android/settings/display/E;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-static {v5}, Lcom/android/settings/display/PaperModeSetAppsFragment;->d(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/settings/display/G;-><init>(Lcom/android/settings/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/android/settings/display/E;->abv:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/display/E;->z:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/display/E;->abw:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/display/E;->z:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/E;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 201
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/display/E;->abu:Lcom/android/settings/display/PaperModeSetAppsFragment;

    iget-object v1, p0, Lcom/android/settings/display/E;->abv:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/display/E;->abw:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/settings/display/PaperModeSetAppsFragment;->a(Lcom/android/settings/display/PaperModeSetAppsFragment;Ljava/util/List;Ljava/util/List;)V

    .line 203
    return-void
.end method
