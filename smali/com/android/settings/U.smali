.class Lcom/android/settings/U;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bU:Lcom/android/settings/T;


# direct methods
.method constructor <init>(Lcom/android/settings/T;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/settings/U;->bU:Lcom/android/settings/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 400
    const v0, 0x7f0a1158

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/X;

    .line 401
    iget-object v1, p0, Lcom/android/settings/U;->bU:Lcom/android/settings/T;

    invoke-virtual {v1, v0}, Lcom/android/settings/T;->a(Lcom/android/settings/X;)V

    .line 402
    return-void
.end method
