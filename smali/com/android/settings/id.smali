.class Lcom/android/settings/id;
.super Ljava/lang/Object;
.source "ToggleArrangementFragment.java"

# interfaces
.implements Lmiui/app/ToggleManager$OnToggleChangedListener;


# instance fields
.field final synthetic BT:Lcom/android/settings/ToggleArrangementFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ToggleArrangementFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/id;->BT:Lcom/android/settings/ToggleArrangementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/id;->BT:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->a(Lcom/android/settings/ToggleArrangementFragment;)Lcom/android/settings/ie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ie;->notifyDataSetChanged()V

    .line 103
    return-void
.end method
