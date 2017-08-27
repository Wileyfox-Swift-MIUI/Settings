.class public Lcom/android/settings/wifi/W;
.super Landroid/preference/CheckBoxPreference;
.source "SavedAccessPointPreference.java"


# instance fields
.field private aBo:Lcom/android/b/e/a;

.field private aDl:Z

.field private aDm:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/b/e/a;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 14
    iput-boolean v0, p0, Lcom/android/settings/wifi/W;->aDl:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/settings/wifi/W;->aDm:Z

    .line 19
    iput-object p1, p0, Lcom/android/settings/wifi/W;->aBo:Lcom/android/b/e/a;

    .line 20
    iget-object v0, p0, Lcom/android/settings/wifi/W;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0, p0}, Lcom/android/b/e/a;->setTag(Ljava/lang/Object;)V

    .line 21
    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/W;->setWidgetLayoutResource(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public bK(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings/wifi/W;->aDm:Z

    .line 45
    return-void
.end method

.method public bL(Z)V
    .locals 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings/wifi/W;->aDl:Z

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f1300d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/wifi/W;->aDl:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/W;->aBo:Lcom/android/b/e/a;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    .line 35
    const v0, 0x7f1300d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 36
    iget-boolean v1, p0, Lcom/android/settings/wifi/W;->aDm:Z

    if-nez v1, :cond_1

    .line 37
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 39
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/W;->aDl:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public xH()Lcom/android/b/e/a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/wifi/W;->aBo:Lcom/android/b/e/a;

    return-object v0
.end method
