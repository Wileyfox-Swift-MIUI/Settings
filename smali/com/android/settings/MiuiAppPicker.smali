.class public Lcom/android/settings/MiuiAppPicker;
.super Landroid/app/Activity;
.source "MiuiAppPicker.java"


# static fields
.field private static final bw:Ljava/util/Comparator;


# instance fields
.field private qA:Lcom/android/settings/ej;

.field private qB:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/android/settings/ei;

    invoke-direct {v0}, Lcom/android/settings/ei;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiAppPicker;->bw:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic X()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings/MiuiAppPicker;->bw:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiAppPicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings/MiuiAppPicker;->qB:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/MiuiAppPicker;)Lcom/android/settings/ej;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/MiuiAppPicker;->qA:Lcom/android/settings/ej;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/MiuiAppPicker;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 38
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    const v2, 0x7f0a0857

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MiuiAppPicker;->qB:Landroid/app/AlertDialog;

    .line 41
    iget-object v1, p0, Lcom/android/settings/MiuiAppPicker;->qB:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 42
    new-instance v1, Lcom/android/settings/eg;

    invoke-direct {v1, p0}, Lcom/android/settings/eg;-><init>(Lcom/android/settings/MiuiAppPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    new-instance v1, Lcom/android/settings/ej;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/ej;-><init>(Lcom/android/settings/MiuiAppPicker;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/MiuiAppPicker;->qA:Lcom/android/settings/ej;

    .line 55
    iget-object v1, p0, Lcom/android/settings/MiuiAppPicker;->qA:Lcom/android/settings/ej;

    invoke-virtual {v1}, Lcom/android/settings/ej;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/MiuiAppPicker;->finish()V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiAppPicker;->qB:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 61
    iget-object v0, p0, Lcom/android/settings/MiuiAppPicker;->qB:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/eh;

    invoke-direct {v1, p0}, Lcom/android/settings/eh;-><init>(Lcom/android/settings/MiuiAppPicker;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiAppPicker;->qA:Lcom/android/settings/ej;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/MiuiAppPicker;->qB:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiAppPicker;->qB:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/MiuiAppPicker;->qB:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAppPicker;->setVisible(Z)V

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 74
    return-void
.end method
