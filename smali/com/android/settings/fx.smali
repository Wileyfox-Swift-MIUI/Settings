.class Lcom/android/settings/fx;
.super Lmiui/preference/RadioButtonPreference;
.source "MiuiSmartCoverSettingsFragment.java"


# instance fields
.field final synthetic uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

.field private ul:I

.field private um:I

.field private un:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fx;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    iput p3, p0, Lcom/android/settings/fx;->ul:I

    .line 187
    iput p4, p0, Lcom/android/settings/fx;->um:I

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/fx;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/fx;->uk:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    .line 176
    invoke-direct {p0, p2, p3, p4}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    const v0, 0x7f040124

    invoke-virtual {p0, v0}, Lcom/android/settings/fx;->setWidgetLayoutResource(I)V

    .line 178
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 200
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x108

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 193
    const v0, 0x7f1302a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fx;->un:Landroid/widget/ImageView;

    .line 194
    iget-object v1, p0, Lcom/android/settings/fx;->un:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/fx;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fx;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fx;->um:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcom/android/settings/fx;->ul:I

    goto :goto_0
.end method
