.class public Lcom/android/settings/ToggleArrangementFragment;
.super Lcom/android/settings/BaseFragment;
.source "ToggleArrangementFragment.java"

# interfaces
.implements Lcom/android/settings/toggleposition/j;


# instance fields
.field private BL:Ljava/util/ArrayList;

.field private BM:Ljava/util/HashMap;

.field private BN:Lmiui/app/ToggleManager;

.field private BO:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

.field private BP:Lcom/android/settings/ie;

.field private BQ:I

.field private BR:Landroid/view/View;

.field private BS:Lmiui/app/ToggleManager$OnToggleChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BM:Ljava/util/HashMap;

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/android/settings/ToggleArrangementFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/ToggleArrangementFragment;->BR:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/ToggleArrangementFragment;)Lcom/android/settings/ie;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BP:Lcom/android/settings/ie;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/ToggleArrangementFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/ToggleArrangementFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BR:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/ToggleArrangementFragment;)Lcom/android/settings/toggleposition/FixedDividerSortableListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BO:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/ToggleArrangementFragment;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BQ:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/ToggleArrangementFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BM:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 5

    .prologue
    const/16 v4, 0x1d

    .line 116
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BQ:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BQ:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    const/4 v0, -0x1

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/ToggleArrangementFragment;->BQ:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/ToggleArrangementFragment;->BQ:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BQ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BN:Lmiui/app/ToggleManager;

    iget-object v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BP:Lcom/android/settings/ie;

    invoke-virtual {v0}, Lcom/android/settings/ie;->notifyDataSetChanged()V

    .line 133
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BN:Lmiui/app/ToggleManager;

    iget-object v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BS:Lmiui/app/ToggleManager$OnToggleChangedListener;

    invoke-virtual {v0, v1}, Lmiui/app/ToggleManager;->removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    .line 111
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 112
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f040166

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    iput-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BO:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 66
    instance-of v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BO:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BN:Lmiui/app/ToggleManager;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BQ:I

    .line 81
    new-instance v0, Lcom/android/settings/ie;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ie;-><init>(Lcom/android/settings/ToggleArrangementFragment;Lcom/android/settings/id;)V

    iput-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BP:Lcom/android/settings/ie;

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    const/high16 v0, 0x7f0c0000

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 84
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v2}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 87
    if-eqz v1, :cond_0

    .line 88
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ToggleArrangementFragment;->BM:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move v1, v0

    .line 84
    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BO:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    invoke-virtual {v0, v2}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->setDividerHeight(I)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BO:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BO:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    iget-object v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BP:Lcom/android/settings/ie;

    invoke-virtual {v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BO:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    invoke-virtual {v0, p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(Lcom/android/settings/toggleposition/j;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BO:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    iget v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BQ:I

    invoke-virtual {v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->cZ(I)V

    .line 99
    new-instance v0, Lcom/android/settings/id;

    invoke-direct {v0, p0}, Lcom/android/settings/id;-><init>(Lcom/android/settings/ToggleArrangementFragment;)V

    iput-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BS:Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 105
    iget-object v0, p0, Lcom/android/settings/ToggleArrangementFragment;->BN:Lmiui/app/ToggleManager;

    iget-object v1, p0, Lcom/android/settings/ToggleArrangementFragment;->BS:Lmiui/app/ToggleManager$OnToggleChangedListener;

    invoke-virtual {v0, v1}, Lmiui/app/ToggleManager;->setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    .line 106
    return-void
.end method
