.class Lcom/android/settings/hX;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# instance fields
.field final synthetic BI:Lcom/android/settings/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherService;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    # getter for: Lcom/android/settings/TetherService;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/TetherService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got provision result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$string;->config_mobile_hotspot_provision_response:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v0, v3}, Lcom/android/settings/TetherService;->a(Lcom/android/settings/TetherService;Z)Z

    .line 266
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v0}, Lcom/android/settings/TetherService;->b(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v1}, Lcom/android/settings/TetherService;->a(Lcom/android/settings/TetherService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 267
    const-string v1, "EntitlementResult"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 268
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v0}, Lcom/android/settings/TetherService;->c(Lcom/android/settings/TetherService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v0}, Lcom/android/settings/TetherService;->d(Lcom/android/settings/TetherService;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v0, v3}, Lcom/android/settings/TetherService;->b(Lcom/android/settings/TetherService;Z)Z

    .line 285
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v0}, Lcom/android/settings/TetherService;->h(Lcom/android/settings/TetherService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v1}, Lcom/android/settings/TetherService;->b(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 287
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-virtual {v0}, Lcom/android/settings/TetherService;->stopSelf()V

    .line 293
    :cond_2
    :goto_1
    return-void

    .line 273
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v0}, Lcom/android/settings/TetherService;->e(Lcom/android/settings/TetherService;)V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v0}, Lcom/android/settings/TetherService;->f(Lcom/android/settings/TetherService;)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v0}, Lcom/android/settings/TetherService;->g(Lcom/android/settings/TetherService;)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    iget-object v1, p0, Lcom/android/settings/hX;->BI:Lcom/android/settings/TetherService;

    invoke-static {v1}, Lcom/android/settings/TetherService;->a(Lcom/android/settings/TetherService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/TetherService;->a(Lcom/android/settings/TetherService;I)V

    goto :goto_1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
