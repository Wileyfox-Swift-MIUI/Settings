.class public Lcom/android/settings/MiuiMasterClearApplyActivity;
.super Lmiui/app/Activity;
.source "MiuiMasterClearApplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sp:[I


# instance fields
.field private cW:Landroid/widget/TextView;

.field private cX:Landroid/widget/Button;

.field private cY:Landroid/widget/Button;

.field private da:I

.field private db:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->sp:[I

    .line 32
    sget-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->sp:[I

    const/4 v1, 0x1

    const v2, 0x7f0a0e47

    aput v2, v0, v1

    .line 33
    sget-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->sp:[I

    const/4 v1, 0x2

    const v2, 0x7f0a0e48

    aput v2, v0, v1

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings/eO;

    invoke-direct {v0, p0}, Lcom/android/settings/eO;-><init>(Lcom/android/settings/MiuiMasterClearApplyActivity;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private U(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->sp:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiMasterClearApplyActivity;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->db:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->db:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiMasterClearApplyActivity;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->da:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiMasterClearApplyActivity;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->db:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cY:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fG()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->db:I

    .line 38
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-super {p0}, Lmiui/app/Activity;->finish()V

    .line 137
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->overridePendingTransition(II)V

    .line 138
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 103
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiMasterClearApplyActivity;->setResult(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->finish()V

    goto :goto_0

    .line 108
    :sswitch_1
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->da:I

    if-ne v0, v3, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->finish()V

    goto :goto_0

    .line 113
    :cond_0
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->da:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->da:I

    .line 114
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->fG()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cW:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->da:I

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiMasterClearApplyActivity;->U(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->da:I

    if-ne v0, v3, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cY:Landroid/widget/Button;

    const v1, 0x7f0a0e44

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->db:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/MiuiMasterClearApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cY:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cY:Landroid/widget/Button;

    const v1, 0x7f0a1166

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->db:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/MiuiMasterClearApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13006c -> :sswitch_0
        0x7f130168 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "format_internal_storage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 45
    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->da:I

    .line 46
    const v0, 0x7f0400b6

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->fG()V

    .line 49
    const v0, 0x7f130067

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cW:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f13006c

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cX:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cX:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f130168

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cY:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cY:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cW:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->da:I

    invoke-direct {p0, v3}, Lcom/android/settings/MiuiMasterClearApplyActivity;->U(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cY:Landroid/widget/Button;

    if-eqz v2, :cond_1

    const v0, 0x7f0a1166

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->db:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiMasterClearApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->cY:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 58
    :cond_1
    const v0, 0x7f0a0e44

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    return-void
.end method
