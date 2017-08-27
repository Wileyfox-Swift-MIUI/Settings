.class Lcom/android/settings/hC;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# instance fields
.field final synthetic AE:Lcom/android/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 181
    check-cast p1, Lmiui/view/SearchActionMode;

    .line 182
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->b(Lcom/android/settings/SettingsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->c(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->d(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setResultView(Landroid/view/View;)V

    .line 185
    invoke-static {}, Lcom/android/settings/SettingsFragment;->hZ()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment;->cF:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->e(Lcom/android/settings/SettingsFragment;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 189
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->g(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->f(Lcom/android/settings/SettingsFragment;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->g(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->h(Lcom/android/settings/SettingsFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->g(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/hD;

    invoke-direct {v1, p0}, Lcom/android/settings/hD;-><init>(Lcom/android/settings/hC;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 219
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->d(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->c(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->j(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->k(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/hH;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/hC;->AE:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->j(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/hH;->q(Ljava/util/List;)V

    .line 224
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method
