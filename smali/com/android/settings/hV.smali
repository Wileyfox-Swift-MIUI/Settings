.class Lcom/android/settings/hV;
.super Ljava/lang/Object;
.source "StatusBarStyleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic BA:Lcom/android/settings/StatusBarStyleFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/StatusBarStyleFragment;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/hV;->BA:Lcom/android/settings/StatusBarStyleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/hV;->BA:Lcom/android/settings/StatusBarStyleFragment;

    invoke-virtual {v0}, Lcom/android/settings/StatusBarStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_style_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    return-void
.end method
