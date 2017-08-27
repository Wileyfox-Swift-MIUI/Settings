.class Lcom/android/settings/search/s;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic arH:Lcom/android/settings/search/r;


# direct methods
.method constructor <init>(Lcom/android/settings/search/r;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/settings/search/s;->arH:Lcom/android/settings/search/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/search/s;->arH:Lcom/android/settings/search/r;

    check-cast p2, Lcom/android/settings/search/o;

    invoke-virtual {p2}, Lcom/android/settings/search/o;->uI()Lcom/android/settings/search/ReverseSearchService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/search/r;->a(Lcom/android/settings/search/r;Lcom/android/settings/search/ReverseSearchService;)Lcom/android/settings/search/ReverseSearchService;

    .line 32
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
