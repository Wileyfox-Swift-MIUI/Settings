.class public Lcom/android/settings/OwnerInfoSettings;
.super Lcom/android/settings/BaseEditFragment;
.source "OwnerInfoSettings.java"


# instance fields
.field private bM:Landroid/widget/CheckBox;

.field private dO:Lcom/android/internal/widget/LockPatternUtils;

.field private mUserId:I

.field private mView:Landroid/view/View;

.field private wB:Landroid/widget/EditText;

.field private wC:Landroid/widget/EditText;

.field private wD:Z

.field private wE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->wE:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wB:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/OwnerInfoSettings;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings/OwnerInfoSettings;->wE:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bM:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static e(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method private fp()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v1, 0x7f1301ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wC:Landroid/widget/EditText;

    .line 76
    iget-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->wD:Z

    if-nez v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wC:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/dH;->c(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    .line 85
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v2, 0x7f1301aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bM:Landroid/widget/CheckBox;

    .line 86
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bM:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bM:Landroid/widget/CheckBox;

    const v2, 0x7f0a01b6

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 94
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bM:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/gi;

    invoke-direct {v2, p0}, Lcom/android/settings/gi;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f1301ac

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wB:Landroid/widget/EditText;

    .line 108
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wB:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wB:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wB:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/gj;

    invoke-direct {v2, p0}, Lcom/android/settings/gj;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    if-nez v1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v1, 0x7f1301a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 134
    new-instance v1, Lcom/android/settings/gk;

    invoke-direct {v1, p0}, Lcom/android/settings/gk;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wC:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wC:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    goto/16 :goto_0

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bM:Landroid/widget/CheckBox;

    const v2, 0x7f0a1129

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f0400d2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 68
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    .line 69
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->fp()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method gL()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->wB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->dO:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->bM:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget v2, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/dH;->b(Lcom/android/internal/widget/LockPatternUtils;ZI)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "owner_info_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    iget-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->wD:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->wC:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->gL()V

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->h(Z)V

    .line 168
    return-void
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->wE:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->wD:Z

    .line 62
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 162
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onDestroy()V

    .line 163
    return-void
.end method
