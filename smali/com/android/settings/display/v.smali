.class public Lcom/android/settings/display/v;
.super Landroid/app/DialogFragment;
.source "PageLayoutFragment.java"


# static fields
.field private static final aaV:Ljava/lang/String;


# instance fields
.field private aaW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 606
    const-class v0, Lcom/android/settings/display/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/v;->aaV:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/v;)I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/android/settings/display/v;->aaW:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/android/settings/display/v;->aaV:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bM(I)V
    .locals 0

    .prologue
    .line 626
    iput p1, p0, Lcom/android/settings/display/v;->aaW:I

    .line 627
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 613
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 614
    if-eqz p1, :cond_0

    .line 615
    const-string v0, "com.android.settings.display.PageLayoutFragment:STATE_UI_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/v;->aaW:I

    .line 617
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/settings/display/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->bt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 632
    :goto_0
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/display/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 633
    const v1, 0x7f0a107e

    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 634
    if-eqz v0, :cond_1

    const v1, 0x7f0a1080

    :goto_1
    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    .line 636
    const v1, 0x104000a

    new-instance v3, Lcom/android/settings/display/w;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/display/w;-><init>(Lcom/android/settings/display/v;Z)V

    invoke-virtual {v2, v1, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 650
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 631
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 634
    :cond_1
    const v1, 0x7f0a107f

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 621
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 622
    const-string v0, "com.android.settings.display.PageLayoutFragment:STATE_UI_MODE"

    iget v1, p0, Lcom/android/settings/display/v;->aaW:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    return-void
.end method
