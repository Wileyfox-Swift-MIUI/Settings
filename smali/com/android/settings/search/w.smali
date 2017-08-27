.class Lcom/android/settings/search/w;
.super Landroid/os/AsyncTask;
.source "SearchUpdator.java"


# instance fields
.field final synthetic arS:Lcom/android/settings/search/u;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/u;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/search/w;->arS:Lcom/android/settings/search/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/u;Lcom/android/settings/search/v;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/search/w;-><init>(Lcom/android/settings/search/u;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/search/w;->arS:Lcom/android/settings/search/u;

    iget-object v1, p0, Lcom/android/settings/search/w;->arS:Lcom/android/settings/search/u;

    invoke-static {v1}, Lcom/android/settings/search/u;->a(Lcom/android/settings/search/u;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/search/u;->a(Lcom/android/settings/search/u;Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/w;->a([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
