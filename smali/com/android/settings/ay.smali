.class Lcom/android/settings/ay;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dS:Lcom/android/settings/ax;


# direct methods
.method constructor <init>(Lcom/android/settings/ax;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/settings/ay;->dS:Lcom/android/settings/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/settings/ay;->dS:Lcom/android/settings/ax;

    invoke-virtual {v0}, Lcom/android/settings/ax;->dismiss()V

    .line 643
    return-void
.end method
