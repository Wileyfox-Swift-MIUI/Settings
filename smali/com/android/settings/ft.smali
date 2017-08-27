.class public Lcom/android/settings/ft;
.super Landroid/widget/ArrayAdapter;
.source "MiuiSettings.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private ua:Ljava/util/HashMap;

.field private ub:Ljava/util/HashMap;

.field private uc:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private ud:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 705
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 706
    iput-object p3, p0, Lcom/android/settings/ft;->uc:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 707
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/ft;->mInflater:Landroid/view/LayoutInflater;

    .line 708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ft;->ua:Ljava/util/HashMap;

    .line 709
    iget-object v0, p0, Lcom/android/settings/ft;->ua:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303f3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/vpn2/MiuiVpnEnable;

    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lmiui/widget/SlidingButton;

    invoke-direct {v4, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/android/settings/vpn2/MiuiVpnEnable;-><init>(Landroid/content/Context;Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iput-boolean p4, p0, Lcom/android/settings/ft;->ud:Z

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    .line 713
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303ca

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/aH;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/wifi/aH;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303c6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothStatusController;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/bluetooth/BluetoothStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303f2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/Z;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/wifi/Z;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303e9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accounts/XiaomiAccountStatusController;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/accounts/XiaomiAccountStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303e5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/k;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/display/k;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303f7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/x;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/display/x;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303f4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/vpn2/VpnStatusController;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/vpn2/VpnStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303f0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/device/m;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/device/m;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    return-void
.end method

.method private a(Lcom/android/settings/fu;Landroid/preference/PreferenceActivity$Header;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 870
    if-nez p1, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-wide v0, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303f0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 874
    iget-object v0, p1, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 875
    :cond_2
    iget-wide v0, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303f1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303eb

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 876
    :cond_3
    iget-object v0, p1, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 877
    iget-object v0, p1, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 881
    :cond_4
    iget-object v0, p1, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 882
    iget-object v0, p1, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 884
    :cond_5
    iget-object v0, p1, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p1, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private b(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4

    .prologue
    .line 655
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 656
    const/4 v0, 0x0

    .line 664
    :goto_0
    return v0

    .line 657
    :cond_0
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ft;->i(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    const/4 v0, 0x4

    goto :goto_0

    .line 659
    :cond_1
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303f0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 660
    const/4 v0, 0x2

    goto :goto_0

    .line 661
    :cond_2
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ft;->j(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    const/4 v0, 0x3

    goto :goto_0

    .line 664
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->preference_horizontal_extra_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 856
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 857
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 859
    if-eqz v1, :cond_0

    .line 860
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 863
    :cond_0
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    .line 864
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 866
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 867
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/android/settings/fu;Landroid/preference/PreferenceActivity$Header;)V
    .locals 3

    .prologue
    .line 891
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settings/fu;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/fu;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 898
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    const-string v1, "com.xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    iget-object v0, p1, Lcom/android/settings/fu;->icon:Landroid/widget/ImageView;

    const v1, 0x7f020331

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 903
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ft;->uc:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->l(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 904
    iget-object v1, p1, Lcom/android/settings/fu;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 907
    :cond_3
    iget v0, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p1, Lcom/android/settings/fu;->icon:Landroid/widget/ImageView;

    iget v1, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 680
    invoke-virtual {p0, p1}, Lcom/android/settings/ft;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 681
    invoke-direct {p0, v0}, Lcom/android/settings/ft;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v7, 0x1020010

    const v6, 0x1020006

    const v5, 0x1020016

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 725
    .line 726
    invoke-virtual {p0, p1}, Lcom/android/settings/ft;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 727
    invoke-direct {p0, v0}, Lcom/android/settings/ft;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v3

    .line 730
    if-eqz p2, :cond_2

    .line 732
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fu;

    move-object v2, v1

    .line 778
    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 844
    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/ft;->b(Lcom/android/settings/fu;Landroid/preference/PreferenceActivity$Header;)V

    .line 845
    invoke-direct {p0, v2, v0}, Lcom/android/settings/ft;->a(Lcom/android/settings/fu;Landroid/preference/PreferenceActivity$Header;)V

    .line 846
    return-object p2

    .line 734
    :cond_2
    new-instance v2, Lcom/android/settings/fu;

    invoke-direct {v2}, Lcom/android/settings/fu;-><init>()V

    .line 735
    packed-switch v3, :pswitch_data_1

    .line 769
    iget-object v1, p0, Lcom/android/settings/ft;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v4, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 772
    :cond_3
    :goto_2
    if-eqz p2, :cond_0

    .line 773
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 737
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/ft;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lmiui/R$layout;->preference_category:I

    invoke-virtual {v1, v4, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 738
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    goto :goto_2

    .line 742
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/ft;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v4, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 743
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/android/settings/fu;->icon:Landroid/widget/ImageView;

    .line 744
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    .line 745
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    .line 746
    const v1, 0x1020018

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 747
    iget-object v4, p0, Lcom/android/settings/ft;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400e9

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 748
    const v4, 0x7f1301f4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, v2, Lcom/android/settings/fu;->ue:Lmiui/widget/SlidingButton;

    .line 749
    sget v1, Lmiui/R$id;->arrow_right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 750
    if-eqz v1, :cond_3

    .line 751
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 758
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/ft;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v4, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 759
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_4

    .line 760
    sget v1, Lmiui/R$id;->arrow_right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 762
    :cond_4
    const v1, 0x1020018

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 763
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/android/settings/fu;->icon:Landroid/widget/ImageView;

    .line 764
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    .line 765
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    .line 766
    sget v1, Lmiui/R$id;->value_right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/fu;->uf:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 780
    :pswitch_3
    iget-object v1, v2, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v1, v2, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 782
    iget-object v1, v2, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    if-eqz p2, :cond_1

    .line 784
    sget v1, Lmiui/R$drawable;->preference_category_background_no_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 787
    :cond_5
    iget-object v1, v2, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 788
    if-eqz p2, :cond_1

    .line 790
    if-nez p1, :cond_6

    sget v1, Lmiui/R$drawable;->preference_category_background_first:I

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_6
    sget v1, Lmiui/R$drawable;->preference_category_background:I

    goto :goto_3

    .line 798
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/ft;->ua:Ljava/util/HashMap;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ae;

    .line 799
    if-eqz v1, :cond_7

    .line 800
    iget-object v4, v2, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/android/settings/ae;->a(Landroid/widget/TextView;)V

    .line 801
    iget-object v4, v2, Lcom/android/settings/fu;->ue:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v4}, Lcom/android/settings/ae;->a(Lmiui/widget/SlidingButton;)V

    .line 802
    iget-object v4, v2, Lcom/android/settings/fu;->ue:Lmiui/widget/SlidingButton;

    invoke-virtual {v4, v1}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    .line 808
    :cond_7
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ai;

    .line 809
    if-eqz v1, :cond_8

    .line 810
    iget-object v4, v2, Lcom/android/settings/fu;->uf:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/android/settings/ai;->b(Landroid/widget/TextView;)V

    .line 811
    iget-object v4, v2, Lcom/android/settings/fu;->uf:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 814
    :cond_8
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 815
    const-string v4, "system_app"

    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 816
    iget-object v4, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 817
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "."

    const-string v7, "_"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 818
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 822
    :cond_9
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lmiui/R$attr;->preferenceWithIconBackground:I

    invoke-static {v1, v4}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 824
    if-eqz p2, :cond_a

    .line 825
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 827
    :cond_a
    iget-object v1, v2, Lcom/android/settings/fu;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    invoke-virtual {p0}, Lcom/android/settings/ft;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 829
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 830
    iget-object v4, v2, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 831
    iget-object v4, v2, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    :goto_4
    const/4 v1, 0x2

    if-ne v3, v1, :cond_b

    .line 837
    iget-object v1, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ai;

    .line 838
    check-cast v1, Lcom/android/settings/device/m;

    iget-object v3, v2, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/settings/fu;->uf:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/device/m;->b(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 840
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/settings/ft;->d(Landroid/view/View;)V

    goto/16 :goto_1

    .line 833
    :cond_c
    iget-object v1, v2, Lcom/android/settings/fu;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 735
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method public i(J)Z
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings/ft;->ua:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 670
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lcom/android/settings/ft;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(J)Z
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 675
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/settings/ft;->ua:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 927
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ae;

    .line 928
    invoke-virtual {v0}, Lcom/android/settings/ae;->pause()V

    goto :goto_0

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 932
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ai;

    .line 933
    invoke-virtual {v0}, Lcom/android/settings/ai;->pause()V

    goto :goto_1

    .line 935
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/settings/ft;->ua:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 915
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ae;

    .line 916
    invoke-virtual {v0}, Lcom/android/settings/ae;->resume()V

    goto :goto_0

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ft;->ub:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 920
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ai;

    .line 921
    invoke-virtual {v0}, Lcom/android/settings/ai;->resume()V

    goto :goto_1

    .line 923
    :cond_1
    return-void
.end method
