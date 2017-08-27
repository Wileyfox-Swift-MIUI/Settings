.class public Lcom/android/settings/MiuiConfirmCommonPassword;
.super Landroid/app/Activity;
.source "MiuiConfirmCommonPassword.java"


# instance fields
.field private es:Lcom/android/settings/dc;

.field private mUserId:I

.field private qD:Landroid/app/AlertDialog;

.field private qE:I

.field private qF:Ljava/lang/String;

.field private qG:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    .line 30
    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->es:Lcom/android/settings/dc;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fk()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiConfirmCommonPassword;)Lcom/android/settings/dc;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->es:Lcom/android/settings/dc;

    return-object v0
.end method

.method private ba()Z
    .locals 2

    .prologue
    .line 231
    const-string v0, "security_core_add"

    iget-object v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiConfirmCommonPassword;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/MiuiConfirmCommonPassword;)I
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qE:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qE:I

    return v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    .line 289
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/android/settings/MiuiConfirmCommonPassword;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qE:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fh()V

    return-void
.end method

.method private fg()V
    .locals 5

    .prologue
    .line 80
    new-instance v0, Lcom/android/settings/el;

    invoke-direct {v0, p0}, Lcom/android/settings/el;-><init>(Lcom/android/settings/MiuiConfirmCommonPassword;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f04003b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1115

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    .line 100
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 103
    :cond_0
    new-instance v0, Lcom/android/settings/dc;

    invoke-direct {v0, p0}, Lcom/android/settings/dc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->es:Lcom/android/settings/dc;

    .line 104
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->ba()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 108
    :cond_1
    new-instance v1, Lcom/android/settings/em;

    invoke-direct {v1, p0}, Lcom/android/settings/em;-><init>(Lcom/android/settings/MiuiConfirmCommonPassword;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->es:Lcom/android/settings/dc;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/dc;->a(Lcom/android/settings/dg;Ljava/util/List;)V

    .line 140
    return-void
.end method

.method private fh()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->es:Lcom/android/settings/dc;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->ek()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->es:Lcom/android/settings/dc;

    .line 147
    :cond_0
    return-void
.end method

.method private fi()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fh()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->dismissDialog()V

    .line 172
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->setResult(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->finish()V

    .line 174
    return-void
.end method

.method private fj()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->es:Lcom/android/settings/dc;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    const v1, 0x7f130080

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a1116

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fh()V

    .line 184
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qE:I

    .line 185
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qE:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->dismissDialog()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fk()V

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fg()V

    goto :goto_0
.end method

.method private fk()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 254
    iget v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/dH;->b(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    .line 255
    if-eqz v0, :cond_1

    .line 257
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 258
    const-class v0, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    .line 263
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->ba()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 266
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 267
    const-string v0, "businessId"

    const-string v2, "security_core_add"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 269
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/MiuiConfirmCommonPassword;->startActivityForResult(Landroid/content/Intent;I)V

    .line 274
    :goto_2
    return-void

    .line 260
    :cond_0
    const-class v0, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiConfirmCommonPassword;->setResult(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->finish()V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic g(Lcom/android/settings/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->dismissDialog()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/MiuiConfirmCommonPassword;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->ba()Z

    move-result v0

    return v0
.end method

.method private h(Ljava/util/List;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->ba()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiConfirmCommonPassword;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "second_user_id"

    const/16 v3, -0x2710

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 216
    invoke-static {p0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 227
    :cond_2
    return-object p1
.end method


# virtual methods
.method protected R(I)V
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->mUserId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiConfirmCommonPassword;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fi()V

    .line 166
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fj()V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiConfirmCommonPassword;->S(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fi()V

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fj()V

    goto :goto_0
.end method

.method protected S(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "second_user_id"

    const/16 v3, -0x2710

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 196
    invoke-static {p0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    invoke-virtual {p0, p2}, Lcom/android/settings/MiuiConfirmCommonPassword;->setResult(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->finish()V

    .line 282
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v4, -0x2710

    const/4 v1, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qG:Landroid/app/ActivityManager;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "businessId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    iput-object v2, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qF:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->ba()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.settings.userIdToConfirm"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->mUserId:I

    .line 48
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->mUserId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->mUserId:I

    if-eq v0, v4, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.settings.bgColor"

    const v4, 0x7f0c0089

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e00d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e00d9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 58
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 59
    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 60
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 65
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/settings/dc;

    invoke-direct {v0, p0}, Lcom/android/settings/dc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/dc;->ei()Ljava/util/List;

    move-result-object v0

    .line 66
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->h(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qG:Landroid/app/ActivityManager;

    iget v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    return-void

    .line 58
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "MiuiConfirmCommonPassword"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fk()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fh()V

    .line 248
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->dismissDialog()V

    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 250
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->fh()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword;->qD:Landroid/app/AlertDialog;

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->finish()V

    .line 242
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 243
    return-void
.end method
