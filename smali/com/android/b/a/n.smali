.class final Lcom/android/b/a/n;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/b/a/p;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/a/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1422
    iget-object v1, p1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return v0

    .line 1424
    :cond_1
    iget-object v1, p1, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1427
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1418
    return-void
.end method
