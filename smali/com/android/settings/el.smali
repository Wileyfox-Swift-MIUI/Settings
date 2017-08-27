.class Lcom/android/settings/el;
.super Ljava/lang/Object;
.source "MiuiConfirmCommonPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qH:Lcom/android/settings/MiuiConfirmCommonPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/el;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 83
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings/el;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiConfirmCommonPassword;->setResult(I)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/el;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-virtual {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->finish()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/el;->qH:Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword;->a(Lcom/android/settings/MiuiConfirmCommonPassword;)V

    goto :goto_0
.end method
