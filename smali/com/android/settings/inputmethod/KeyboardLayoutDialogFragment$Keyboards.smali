.class public final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"


# instance fields
.field public final aiA:Ljava/util/ArrayList;

.field public aiB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->aiA:Ljava/util/ArrayList;

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->aiB:I

    return-void
.end method
