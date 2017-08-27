.class final Lcom/miui/activityutil/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/j;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miui/activityutil/q;->a:Lcom/miui/activityutil/j;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miui/activityutil/q;->a:Lcom/miui/activityutil/j;

    const-string v1, "delayedUpload"

    invoke-virtual {v0, v1}, Lcom/miui/activityutil/j;->a(Ljava/lang/String;)V

    .line 281
    return-void
.end method
