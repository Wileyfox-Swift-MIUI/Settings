.class Lcom/android/settings/bj;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gJ:Lcom/android/settings/CryptKeeper;

.field final synthetic gO:Z

.field final synthetic gP:Z


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;ZZ)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/settings/bj;->gJ:Lcom/android/settings/CryptKeeper;

    iput-boolean p2, p0, Lcom/android/settings/bj;->gO:Z

    iput-boolean p3, p0, Lcom/android/settings/bj;->gP:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/settings/bj;->gO:Z

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "CryptKeeper"

    const-string v1, "  Calling encryptStorage with wipe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bj;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->c(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 656
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/fE;->a(Landroid/os/storage/IMountService;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    const-string v0, "CryptKeeper"

    const-string v1, "Unable to call MountService properly"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 666
    const-string v1, "android.intent.extra.REASON"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CryptKeeper.showFactoryReset() corrupt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bj;->gP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    iget-object v1, p0, Lcom/android/settings/bj;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, v0}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
