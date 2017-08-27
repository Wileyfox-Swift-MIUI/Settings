.class Lcom/android/settings/hI;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic AI:Lcom/android/settings/search/t;

.field final synthetic AJ:Lcom/android/settings/hH;


# direct methods
.method constructor <init>(Lcom/android/settings/hH;Lcom/android/settings/search/t;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/settings/hI;->AJ:Lcom/android/settings/hH;

    iput-object p2, p0, Lcom/android/settings/hI;->AI:Lcom/android/settings/search/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/settings/hI;->AJ:Lcom/android/settings/hH;

    iget-object v0, v0, Lcom/android/settings/hH;->AE:Lcom/android/settings/SettingsFragment;

    iget-object v1, p0, Lcom/android/settings/hI;->AI:Lcom/android/settings/search/t;

    invoke-static {v0, p1, v1}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Landroid/view/View;Lcom/android/settings/search/t;)V

    .line 489
    return-void
.end method
