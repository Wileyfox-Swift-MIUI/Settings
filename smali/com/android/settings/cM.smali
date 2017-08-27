.class Lcom/android/settings/cM;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic mx:Landroid/view/View;

.field final synthetic my:Lcom/android/settings/cK;


# direct methods
.method constructor <init>(Lcom/android/settings/cK;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings/cM;->my:Lcom/android/settings/cK;

    iput-object p2, p0, Lcom/android/settings/cM;->mx:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings/cM;->my:Lcom/android/settings/cK;

    iget-object v0, v0, Lcom/android/settings/cK;->mv:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->a(Lcom/android/settings/DreamSettings;)Lcom/android/settings/cD;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/cM;->mx:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cE;

    invoke-virtual {v1, v0}, Lcom/android/settings/cD;->a(Lcom/android/settings/cE;)V

    .line 338
    return-void
.end method
