.class public Lcom/android/settings/search/ReverseSearchService;
.super Landroid/app/Service;
.source "ReverseSearchService.java"


# instance fields
.field private volatile arv:Ljava/util/List;

.field private arw:Lcom/android/settings/search/ReverseSearchService$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    sget-object v0, Lcom/android/settings/search/ReverseSearchService$State;->ary:Lcom/android/settings/search/ReverseSearchService$State;

    iput-object v0, p0, Lcom/android/settings/search/ReverseSearchService;->arw:Lcom/android/settings/search/ReverseSearchService$State;

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/android/settings/search/ReverseSearchService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/android/settings/search/ReverseSearchService$State;)V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/settings/search/ReverseSearchService;->arw:Lcom/android/settings/search/ReverseSearchService$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/android/settings/search/ReverseSearchService;Lcom/android/settings/search/ReverseSearchService$State;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/search/ReverseSearchService;->a(Lcom/android/settings/search/ReverseSearchService$State;)V

    return-void
.end method

.method private uH()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/search/ReverseSearchService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "ReverseSearchStoreKey"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bU(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 39
    iget-object v1, p0, Lcom/android/settings/search/ReverseSearchService;->arw:Lcom/android/settings/search/ReverseSearchService$State;

    sget-object v3, Lcom/android/settings/search/ReverseSearchService$State;->arz:Lcom/android/settings/search/ReverseSearchService$State;

    if-eq v1, v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    if-nez v1, :cond_2

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 46
    invoke-direct {p0}, Lcom/android/settings/search/ReverseSearchService;->uH()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 52
    iget-object v6, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 53
    iget-object v6, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 62
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v0, v1

    .line 68
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/search/ReverseSearchService;->arv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/android/settings/search/o;

    invoke-direct {v0, p0}, Lcom/android/settings/search/o;-><init>(Lcom/android/settings/search/ReverseSearchService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v0, "ReverseSearchExtraKey"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/search/ReverseSearchService;->clear()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/search/ReverseSearchService;->uG()V

    .line 99
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public uG()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/android/settings/search/n;

    invoke-virtual {p0}, Lcom/android/settings/search/ReverseSearchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/search/ReverseSearchService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/search/n;-><init>(Lcom/android/settings/search/ReverseSearchService;Landroid/content/ContentResolver;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void
.end method
