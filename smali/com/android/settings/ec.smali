.class Lcom/android/settings/ec;
.super Ljava/lang/Object;
.source "MiuiAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qx:Lcom/android/settings/eb;


# direct methods
.method constructor <init>(Lcom/android/settings/eb;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings/ec;->qx:Lcom/android/settings/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/ec;->qx:Lcom/android/settings/eb;

    invoke-static {v0}, Lcom/android/settings/eb;->a(Lcom/android/settings/eb;)V

    .line 23
    return-void
.end method
