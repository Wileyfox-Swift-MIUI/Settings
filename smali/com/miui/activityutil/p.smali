.class final Lcom/miui/activityutil/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/o;

.field private final synthetic b:Lcom/miui/activityutil/r;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/o;Lcom/miui/activityutil/r;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miui/activityutil/p;->a:Lcom/miui/activityutil/o;

    iput-object p2, p0, Lcom/miui/activityutil/p;->b:Lcom/miui/activityutil/r;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/activityutil/p;->b:Lcom/miui/activityutil/r;

    iget-object v1, p0, Lcom/miui/activityutil/p;->b:Lcom/miui/activityutil/r;

    iget v1, v1, Lcom/miui/activityutil/r;->b:I

    invoke-virtual {v0, v1}, Lcom/miui/activityutil/r;->a(I)V

    .line 249
    return-void
.end method
