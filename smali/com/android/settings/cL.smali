.class Lcom/android/settings/cL;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic mx:Landroid/view/View;

.field final synthetic my:Lcom/android/settings/cK;


# direct methods
.method constructor <init>(Lcom/android/settings/cK;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/settings/cL;->my:Lcom/android/settings/cK;

    iput-object p2, p0, Lcom/android/settings/cL;->mx:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings/cL;->mx:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 321
    const/4 v0, 0x0

    return v0
.end method
