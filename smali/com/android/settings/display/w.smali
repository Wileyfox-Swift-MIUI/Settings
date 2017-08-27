.class Lcom/android/settings/display/w;
.super Ljava/lang/Object;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aaX:Z

.field final synthetic aaY:Lcom/android/settings/display/v;


# direct methods
.method constructor <init>(Lcom/android/settings/display/v;Z)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/settings/display/w;->aaY:Lcom/android/settings/display/v;

    iput-boolean p2, p0, Lcom/android/settings/display/w;->aaX:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/android/settings/display/w;->aaX:Z

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings/display/w;->aaY:Lcom/android/settings/display/v;

    invoke-virtual {v0}, Lcom/android/settings/display/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/w;->aaY:Lcom/android/settings/display/v;

    invoke-static {v1}, Lcom/android/settings/display/v;->a(Lcom/android/settings/display/v;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->b(Landroid/app/Activity;I)V

    .line 648
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/w;->aaY:Lcom/android/settings/display/v;

    invoke-virtual {v0}, Lcom/android/settings/display/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/w;->aaY:Lcom/android/settings/display/v;

    invoke-static {v1}, Lcom/android/settings/display/v;->a(Lcom/android/settings/display/v;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/s;->n(Landroid/content/Context;I)Z

    .line 644
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 645
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lcom/android/settings/display/w;->aaY:Lcom/android/settings/display/v;

    invoke-virtual {v1, v0}, Lcom/android/settings/display/v;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
