.class public Lcom/android/settings/search/o;
.super Landroid/os/Binder;
.source "ReverseSearchService.java"


# instance fields
.field final synthetic arx:Lcom/android/settings/search/ReverseSearchService;


# direct methods
.method public constructor <init>(Lcom/android/settings/search/ReverseSearchService;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/search/o;->arx:Lcom/android/settings/search/ReverseSearchService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public uI()Lcom/android/settings/search/ReverseSearchService;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/search/o;->arx:Lcom/android/settings/search/ReverseSearchService;

    return-object v0
.end method
