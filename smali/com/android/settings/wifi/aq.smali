.class Lcom/android/settings/wifi/aq;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/an;


# instance fields
.field private final aBo:Lcom/android/b/e/a;

.field private final aEL:Z

.field private final aEM:Z

.field private aEX:Lcom/android/settings/wifi/ak;

.field private aEY:Z

.field private aEZ:Z

.field private final axG:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const v0, 0x7f0f00ad

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 67
    iput-boolean p4, p0, Lcom/android/settings/wifi/aq;->aEL:Z

    .line 68
    iput-boolean p5, p0, Lcom/android/settings/wifi/aq;->aEM:Z

    .line 69
    iput-object p2, p0, Lcom/android/settings/wifi/aq;->axG:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    iput-object p3, p0, Lcom/android/settings/wifi/aq;->aBo:Lcom/android/b/e/a;

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/wifi/aq;->aEY:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/settings/wifi/aq;->aEZ:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZZZ)V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/wifi/aq;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZ)V

    .line 60
    iput-boolean p6, p0, Lcom/android/settings/wifi/aq;->aEY:Z

    .line 61
    iput-boolean p7, p0, Lcom/android/settings/wifi/aq;->aEZ:Z

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/aq;)Lcom/android/b/e/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->aBo:Lcom/android/b/e/a;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/aq;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/aq;->bP(Z)V

    return-void
.end method

.method private bP(Z)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->mView:Landroid/view/View;

    const v1, 0x7f130252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 167
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 168
    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 172
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    if-ltz v2, :cond_0

    .line 174
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 176
    :cond_0
    return-void

    .line 168
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method


# virtual methods
.method public j(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 130
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/aq;->axG:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/aq;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    return-void
.end method

.method public k(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 135
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings/wifi/aq;->axG:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/aq;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    return-void
.end method

.method public l(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 140
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/aq;->axG:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/aq;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 141
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/aq;->mView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/aq;->setView(Landroid/view/View;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/aq;->setInverseBackgroundForced(Z)V

    .line 85
    new-instance v0, Lcom/android/settings/wifi/ak;

    iget-object v2, p0, Lcom/android/settings/wifi/aq;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/wifi/aq;->aBo:Lcom/android/b/e/a;

    iget-boolean v4, p0, Lcom/android/settings/wifi/aq;->aEL:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/aq;->aEM:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ak;-><init>(Lcom/android/settings/wifi/an;Landroid/view/View;Lcom/android/b/e/a;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/aq;->aEX:Lcom/android/settings/wifi/ak;

    .line 86
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iget-boolean v0, p0, Lcom/android/settings/wifi/aq;->aEY:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->aEX:Lcom/android/settings/wifi/ak;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ak;->yJ()V

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->zg()V

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/wifi/aq;->aEZ:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->aEX:Lcom/android/settings/wifi/ak;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ak;->yI()V

    .line 101
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->aEX:Lcom/android/settings/wifi/ak;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ak;->yb()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->aEX:Lcom/android/settings/wifi/ak;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ak;->yY()V

    .line 106
    return-void
.end method

.method public za()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/aq;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public zb()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 120
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/aq;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public zf()Lcom/android/settings/wifi/ak;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->aEX:Lcom/android/settings/wifi/ak;

    return-object v0
.end method

.method public zg()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->aBo:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/aq;->aBo:Lcom/android/b/e/a;

    iget-boolean v0, v0, Lcom/android/b/e/a;->aMt:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->mView:Landroid/view/View;

    const v2, 0x7f130374

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 147
    if-eqz v1, :cond_1

    const v2, 0x7f020328

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/aq;->bP(Z)V

    .line 149
    new-instance v2, Lcom/android/settings/wifi/ar;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/ar;-><init>(Lcom/android/settings/wifi/aq;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 147
    :cond_1
    const v2, 0x7f020325

    goto :goto_1
.end method
