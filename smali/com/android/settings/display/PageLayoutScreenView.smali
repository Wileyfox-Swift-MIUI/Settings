.class public Lcom/android/settings/display/PageLayoutScreenView;
.super Lmiui/widget/ScreenView;
.source "PageLayoutScreenView.java"

# interfaces
.implements Lmiui/widget/ScreenView$SnapScreenOnceNotification;


# instance fields
.field private final aaZ:I

.field private final aba:[Z

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/PageLayoutScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v0, p0, Lcom/android/settings/display/PageLayoutScreenView;->aaZ:I

    .line 17
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutScreenView;->aba:[Z

    .line 25
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutScreenView;->mActivity:Landroid/app/Activity;

    .line 26
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutScreenView;->aba:[Z

    aput-boolean v2, v0, v1

    .line 27
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutScreenView;->aba:[Z

    aput-boolean v1, v0, v2

    .line 28
    return-void
.end method

.method private aN(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x10

    .line 46
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutScreenView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 47
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setExtraFlags(II)V

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onSnapCancelled(Lmiui/widget/ScreenView;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onSnapEnd(Lmiui/widget/ScreenView;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutScreenView;->aba:[Z

    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutScreenView;->getCurrentScreenIndex()I

    move-result v1

    aget-boolean v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/display/PageLayoutScreenView;->aN(Z)V

    .line 43
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3, p0}, Lcom/android/settings/display/PageLayoutScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 33
    return-void
.end method
