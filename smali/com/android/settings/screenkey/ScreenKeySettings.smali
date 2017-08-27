.class public Lcom/android/settings/screenkey/ScreenKeySettings;
.super Lcom/android/settings/StatusBarSettingsPreferenceFragment;
.source "ScreenKeySettings.java"

# interfaces
.implements Landroid/widget/SortableListView$OnOrderChangedListener;


# instance fields
.field private aqP:Landroid/widget/SortableListView;

.field private aqQ:Lcom/android/settings/screenkey/c;

.field private aqR:Ljava/util/ArrayList;

.field private aqS:Landroid/preference/PreferenceGroup;

.field private aqT:Lcom/android/settings/screenkey/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/StatusBarSettingsPreferenceFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqR:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/android/settings/screenkey/ScreenKeySettings;)Landroid/widget/SortableListView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqP:Landroid/widget/SortableListView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/screenkey/ScreenKeySettings;Landroid/widget/SortableListView;)Landroid/widget/SortableListView;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqP:Landroid/widget/SortableListView;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/screenkey/ScreenKeySettings;)Lcom/android/settings/screenkey/c;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqQ:Lcom/android/settings/screenkey/c;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/screenkey/ScreenKeySettings;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqR:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqR:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqT:Lcom/android/settings/screenkey/a;

    iget-object v1, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/settings/screenkey/a;->d(Ljava/util/ArrayList;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqQ:Lcom/android/settings/screenkey/c;

    invoke-virtual {v0}, Lcom/android/settings/screenkey/c;->notifyDataSetChanged()V

    .line 117
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqR:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/settings/screenkey/ScreenKeySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/StatusBarSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/android/settings/screenkey/ScreenKeySettings;->addPreferencesFromResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/screenkey/ScreenKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqR:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Lcom/android/settings/screenkey/a;

    invoke-virtual {p0}, Lcom/android/settings/screenkey/ScreenKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/screenkey/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqT:Lcom/android/settings/screenkey/a;

    .line 45
    iget-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqT:Lcom/android/settings/screenkey/a;

    iget-object v1, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/settings/screenkey/a;->d(Ljava/util/ArrayList;)V

    .line 47
    new-instance v0, Lcom/android/settings/screenkey/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/screenkey/c;-><init>(Lcom/android/settings/screenkey/ScreenKeySettings;Lcom/android/settings/screenkey/b;)V

    iput-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqQ:Lcom/android/settings/screenkey/c;

    .line 48
    const-string v0, "key_position_custom"

    invoke-virtual {p0, v0}, Lcom/android/settings/screenkey/ScreenKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqS:Landroid/preference/PreferenceGroup;

    .line 49
    iget-object v0, p0, Lcom/android/settings/screenkey/ScreenKeySettings;->aqS:Landroid/preference/PreferenceGroup;

    new-instance v1, Lcom/android/settings/screenkey/d;

    invoke-virtual {p0}, Lcom/android/settings/screenkey/ScreenKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/screenkey/d;-><init>(Lcom/android/settings/screenkey/ScreenKeySettings;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 50
    return-void
.end method
