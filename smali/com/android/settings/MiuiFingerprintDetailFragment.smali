.class public Lcom/android/settings/MiuiFingerprintDetailFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiFingerprintDetailFragment.java"


# instance fields
.field private mView:Landroid/view/View;

.field private rq:Ljava/lang/String;

.field private rr:Ljava/lang/String;

.field private rs:Landroid/widget/EditText;

.field private rt:Landroid/widget/Button;

.field private ru:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->ru:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiFingerprintDetailFragment;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->ru:Z

    return p1
.end method

.method private fp()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f130128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rs:Landroid/widget/EditText;

    .line 55
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f130129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rt:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rs:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rs:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rs:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rs:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rt:Landroid/widget/Button;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 60
    new-instance v0, Lcom/android/settings/ex;

    invoke-direct {v0, p0}, Lcom/android/settings/ex;-><init>(Lcom/android/settings/MiuiFingerprintDetailFragment;)V

    .line 81
    new-instance v1, Lcom/android/settings/ey;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/ey;-><init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Lcom/android/settings/dk;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rt:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/ez;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/ez;-><init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method private fq()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rs:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->ru:Z

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rq:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    const v0, 0x7f040086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->fp()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const-string v1, "extra_fingerprint_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rq:Ljava/lang/String;

    .line 42
    const-string v1, "extra_fingerprint_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rr:Ljava/lang/String;

    .line 44
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->fq()V

    .line 108
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 109
    return-void
.end method
