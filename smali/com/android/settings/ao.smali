.class public Lcom/android/settings/ao;
.super Landroid/preference/Preference;
.source "CancellablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dd:Z

.field private de:Lcom/android/settings/ap;


# virtual methods
.method public a(Lcom/android/settings/ap;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/ao;->de:Lcom/android/settings/ap;

    .line 47
    return-void
.end method

.method public j(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/ao;->dd:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/ao;->notifyChanged()V

    .line 43
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 53
    const v0, 0x7f13006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    iget-boolean v1, p0, Lcom/android/settings/ao;->dd:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void

    .line 54
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/ao;->de:Lcom/android/settings/ap;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings/ao;->de:Lcom/android/settings/ap;

    invoke-interface {v0, p0}, Lcom/android/settings/ap;->a(Lcom/android/settings/ao;)V

    .line 63
    :cond_0
    return-void
.end method
