.class Lcom/android/settings/vpn2/LockdownConfigFragment$TitleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LockdownConfigFragment.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 75
    sget v0, Lcom/android/internal/R$layout;->select_dialog_singlechoice_material:I

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 77
    return-void
.end method
