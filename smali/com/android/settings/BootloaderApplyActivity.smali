.class public Lcom/android/settings/BootloaderApplyActivity;
.super Lmiui/app/Activity;
.source "BootloaderApplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cW:Landroid/widget/TextView;

.field private cX:Landroid/widget/Button;

.field private cY:Landroid/widget/Button;

.field private cZ:Ljava/lang/CharSequence;

.field private da:I

.field private db:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/BootloaderApplyActivity;->da:I

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/BootloaderApplyActivity;->db:I

    .line 68
    new-instance v0, Lcom/android/settings/am;

    invoke-direct {v0, p0}, Lcom/android/settings/am;-><init>(Lcom/android/settings/BootloaderApplyActivity;)V

    iput-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/BootloaderApplyActivity;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/settings/BootloaderApplyActivity;->db:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/BootloaderApplyActivity;->db:I

    return v0
.end method

.method private a(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 176
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 166
    :pswitch_0
    const v0, 0x7f0a1168

    invoke-virtual {p0, v0}, Lcom/android/settings/BootloaderApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :pswitch_1
    const v0, 0x7f0a1169

    invoke-virtual {p0, v0}, Lcom/android/settings/BootloaderApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :pswitch_2
    const v0, 0x7f0a116a

    invoke-virtual {p0, v0}, Lcom/android/settings/BootloaderApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_3
    const v0, 0x7f0a116b

    invoke-virtual {p0, v0}, Lcom/android/settings/BootloaderApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_4
    const v0, 0x7f0a116c

    invoke-virtual {p0, v0}, Lcom/android/settings/BootloaderApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private au()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/BootloaderApplyActivity;->setEnabled(Z)V

    .line 150
    return-void
.end method

.method private av()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/BootloaderApplyActivity;->setEnabled(Z)V

    .line 154
    return-void
.end method

.method public static aw()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 195
    const-string v1, "support_bootloader_lock"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 196
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 197
    const-string v2, "BootloaderApplyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/android/settings/BootloaderApplyActivity;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/settings/BootloaderApplyActivity;->da:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings/BootloaderApplyActivity;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/settings/BootloaderApplyActivity;->db:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/BootloaderApplyActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cY:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/BootloaderApplyActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    .line 181
    const-string v0, "persist.fastboot.enable"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setEnabled(Z)V
    .locals 2

    .prologue
    .line 186
    const-string v1, "persist.fastboot.enable"

    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 186
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BootloaderApplyActivity;->setResult(ILandroid/content/Intent;)V

    .line 159
    invoke-super {p0}, Lmiui/app/Activity;->finish()V

    .line 160
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/BootloaderApplyActivity;->overridePendingTransition(II)V

    .line 161
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/BootloaderApplyActivity;->au()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/BootloaderApplyActivity;->finish()V

    goto :goto_0

    .line 117
    :pswitch_1
    iget v0, p0, Lcom/android/settings/BootloaderApplyActivity;->da:I

    if-ne v0, v3, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/BootloaderApplyActivity;->av()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/BootloaderApplyActivity;->finish()V

    goto :goto_0

    .line 124
    :cond_0
    iget v0, p0, Lcom/android/settings/BootloaderApplyActivity;->da:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/BootloaderApplyActivity;->da:I

    .line 125
    iput v3, p0, Lcom/android/settings/BootloaderApplyActivity;->db:I

    .line 127
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cW:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/BootloaderApplyActivity;->da:I

    iget-object v2, p0, Lcom/android/settings/BootloaderApplyActivity;->cZ:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/BootloaderApplyActivity;->a(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v0, p0, Lcom/android/settings/BootloaderApplyActivity;->da:I

    if-ne v0, v3, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cY:Landroid/widget/Button;

    const v1, 0x7f0a1163

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/BootloaderApplyActivity;->db:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/BootloaderApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cY:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cY:Landroid/widget/Button;

    const v1, 0x7f0a1166

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/BootloaderApplyActivity;->db:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/BootloaderApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x7f130068
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/android/settings/BootloaderApplyActivity;->setContentView(I)V

    .line 53
    const v0, 0x7f130067

    invoke-virtual {p0, v0}, Lcom/android/settings/BootloaderApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cW:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f130068

    invoke-virtual {p0, v0}, Lcom/android/settings/BootloaderApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cX:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cX:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f130069

    invoke-virtual {p0, v0}, Lcom/android/settings/BootloaderApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cY:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cY:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cW:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/BootloaderApplyActivity;->da:I

    iget-object v2, p0, Lcom/android/settings/BootloaderApplyActivity;->cZ:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/BootloaderApplyActivity;->a(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cY:Landroid/widget/Button;

    const v1, 0x7f0a1166

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/BootloaderApplyActivity;->db:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/BootloaderApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->cY:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 104
    return-void
.end method
