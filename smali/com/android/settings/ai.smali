.class public abstract Lcom/android/settings/ai;
.super Ljava/lang/Object;
.source "BaseSettingsController.java"


# instance fields
.field protected cI:Landroid/widget/TextView;

.field protected cJ:Lcom/android/settings/aj;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/settings/ai;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/settings/ai;->cI:Landroid/widget/TextView;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ai;->cJ:Lcom/android/settings/aj;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/aj;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/ai;->cJ:Lcom/android/settings/aj;

    .line 37
    return-void
.end method

.method protected abstract as()V
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 25
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/ai;->cI:Landroid/widget/TextView;

    if-eq v0, p1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ai;

    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ai;->b(Landroid/widget/TextView;)V

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/settings/ai;->cI:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/ai;->as()V

    .line 33
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
