.class Lcom/android/settings/eO;
.super Landroid/os/Handler;
.source "MiuiMasterClearApplyActivity.java"


# instance fields
.field final synthetic sq:Lcom/android/settings/MiuiMasterClearApplyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClearApplyActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 68
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->a(Lcom/android/settings/MiuiMasterClearApplyActivity;)I

    .line 69
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->b(Lcom/android/settings/MiuiMasterClearApplyActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->c(Lcom/android/settings/MiuiMasterClearApplyActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->d(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0e43

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->d(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 86
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->c(Lcom/android/settings/MiuiMasterClearApplyActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->d(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a1165

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->d(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->b(Lcom/android/settings/MiuiMasterClearApplyActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->d(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    const v2, 0x7f0a0e44

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v4}, Lcom/android/settings/MiuiMasterClearApplyActivity;->c(Lcom/android/settings/MiuiMasterClearApplyActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/MiuiMasterClearApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->e(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->e(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->d(Lcom/android/settings/MiuiMasterClearApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    const v2, 0x7f0a1166

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/eO;->sq:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {v4}, Lcom/android/settings/MiuiMasterClearApplyActivity;->c(Lcom/android/settings/MiuiMasterClearApplyActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/MiuiMasterClearApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
