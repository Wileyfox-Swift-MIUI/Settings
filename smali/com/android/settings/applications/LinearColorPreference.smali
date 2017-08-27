.class public Lcom/android/settings/applications/LinearColorPreference;
.super Landroid/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field KG:I

.field KH:I

.field KI:I

.field Km:F

.field Kn:F

.field Ko:F

.field Ku:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field Kv:I


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 67
    const v0, 0x7f1301f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->ar(Z)V

    .line 70
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->KG:I

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->KH:I

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->KI:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->a(III)V

    .line 71
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->Km:F

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->Kn:F

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->Ko:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->a(FFF)V

    .line 72
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->Kv:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->aN(I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorPreference;->Ku:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->a(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V

    .line 74
    return-void
.end method
