.class Lcom/android/settings/wifi/ar;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aFa:Z

.field final synthetic aFb:Z

.field final synthetic aFc:Lcom/android/settings/wifi/aq;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/aq;Z)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/wifi/ar;->aFc:Lcom/android/settings/wifi/aq;

    iput-boolean p2, p0, Lcom/android/settings/wifi/ar;->aFb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iget-boolean v0, p0, Lcom/android/settings/wifi/ar;->aFb:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/ar;->aFa:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/settings/wifi/ar;->aFa:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/ar;->aFa:Z

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/ar;->aFc:Lcom/android/settings/wifi/aq;

    invoke-static {v0}, Lcom/android/settings/wifi/aq;->a(Lcom/android/settings/wifi/aq;)Lcom/android/b/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/ar;->aFc:Lcom/android/settings/wifi/aq;

    invoke-static {v0}, Lcom/android/settings/wifi/aq;->a(Lcom/android/settings/wifi/aq;)Lcom/android/b/e/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/ar;->aFa:Z

    iput-boolean v1, v0, Lcom/android/b/e/a;->aMt:Z

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ar;->aFc:Lcom/android/settings/wifi/aq;

    iget-boolean v1, p0, Lcom/android/settings/wifi/ar;->aFa:Z

    invoke-static {v0, v1}, Lcom/android/settings/wifi/aq;->a(Lcom/android/settings/wifi/aq;Z)V

    .line 158
    check-cast p1, Landroid/widget/ImageView;

    .line 159
    iget-boolean v0, p0, Lcom/android/settings/wifi/ar;->aFa:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020328

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_2
    const v0, 0x7f020325

    goto :goto_1
.end method
