.class Lcom/android/settings/bl;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;


# instance fields
.field final synthetic gJ:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/settings/bl;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardDelete()V
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/settings/bl;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->m(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 811
    :cond_0
    return-void
.end method

.method public onKeyBoardOK()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 816
    iget-object v0, p0, Lcom/android/settings/bl;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->m(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/settings/bl;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->m(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 822
    iget-object v1, p0, Lcom/android/settings/bl;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v1, v4}, Lcom/android/settings/CryptKeeper;->e(Lcom/android/settings/CryptKeeper;Z)V

    .line 824
    const-string v1, "CryptKeeper"

    const-string v2, "Attempting to send command to decrypt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v1, Lcom/android/settings/bn;

    iget-object v2, p0, Lcom/android/settings/bl;->gJ:Lcom/android/settings/CryptKeeper;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/bn;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/bf;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/settings/bn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 827
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/settings/bl;->gJ:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->m(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 803
    return-void
.end method
