.class final Lcom/miui/activityutil/k;
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
    iput-object p1, p0, Lcom/miui/activityutil/k;->a:Lcom/miui/activityutil/j;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/activityutil/k;)Lcom/miui/activityutil/j;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/activityutil/k;->a:Lcom/miui/activityutil/j;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 102
    new-instance v0, Lcom/miui/activityutil/f;

    invoke-direct {v0}, Lcom/miui/activityutil/f;-><init>()V

    .line 103
    new-instance v1, Lcom/miui/activityutil/c;

    iget-object v2, p0, Lcom/miui/activityutil/k;->a:Lcom/miui/activityutil/j;

    invoke-static {v2}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/activityutil/c;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v1}, Lcom/miui/activityutil/c;->b()Ljava/io/File;

    move-result-object v2

    .line 105
    if-nez v2, :cond_0

    .line 106
    invoke-static {}, Lcom/miui/activityutil/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInfo error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/miui/activityutil/k;->a:Lcom/miui/activityutil/j;

    invoke-static {v0}, Lcom/miui/activityutil/j;->b(Lcom/miui/activityutil/j;)V

    .line 136
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/miui/activityutil/k;->a:Lcom/miui/activityutil/j;

    invoke-static {v3}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/miui/activityutil/j;->b()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/activityutil/l;

    invoke-direct {v5, p0, v1, v2}, Lcom/miui/activityutil/l;-><init>(Lcom/miui/activityutil/k;Lcom/miui/activityutil/c;Ljava/io/File;)V

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/miui/activityutil/f;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;Lcom/miui/activityutil/g;)V

    goto :goto_0
.end method
