.class Lcom/android/settings/search/x;
.super Landroid/os/AsyncTask;
.source "SearchUpdator.java"


# instance fields
.field final synthetic arS:Lcom/android/settings/search/u;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/u;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/search/x;->arS:Lcom/android/settings/search/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/u;Lcom/android/settings/search/v;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/search/x;-><init>(Lcom/android/settings/search/u;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 100
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 101
    iget-object v1, p0, Lcom/android/settings/search/x;->arS:Lcom/android/settings/search/u;

    invoke-static {v1}, Lcom/android/settings/search/u;->b(Lcom/android/settings/search/u;)I

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/search/x;->arS:Lcom/android/settings/search/u;

    iget-object v2, p0, Lcom/android/settings/search/x;->arS:Lcom/android/settings/search/u;

    const-string v3, "00"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/search/u;->b(Lcom/android/settings/search/u;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/search/u;->a(Lcom/android/settings/search/u;I)I

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/settings/search/x;->arS:Lcom/android/settings/search/u;

    iget-object v2, p0, Lcom/android/settings/search/x;->arS:Lcom/android/settings/search/u;

    invoke-static {v2}, Lcom/android/settings/search/u;->a(Lcom/android/settings/search/u;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/search/u;->a(Lcom/android/settings/search/u;Landroid/content/Context;Landroid/content/Intent;)V

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/x;->a([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
