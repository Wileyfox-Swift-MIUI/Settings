.class final Lcom/miui/activityutil/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/activityutil/g;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/k;

.field private final synthetic b:Lcom/miui/activityutil/c;

.field private final synthetic c:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/k;Lcom/miui/activityutil/c;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miui/activityutil/l;->a:Lcom/miui/activityutil/k;

    iput-object p2, p0, Lcom/miui/activityutil/l;->b:Lcom/miui/activityutil/c;

    iput-object p3, p0, Lcom/miui/activityutil/l;->c:Ljava/io/File;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/activityutil/l;->a:Lcom/miui/activityutil/k;

    invoke-static {v0}, Lcom/miui/activityutil/k;->a(Lcom/miui/activityutil/k;)Lcom/miui/activityutil/j;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/j;->b(Lcom/miui/activityutil/j;)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/activityutil/l;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 134
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/activityutil/l;->a:Lcom/miui/activityutil/k;

    invoke-static {v0}, Lcom/miui/activityutil/k;->a(Lcom/miui/activityutil/k;)Lcom/miui/activityutil/j;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/j;->b(Lcom/miui/activityutil/j;)V

    .line 126
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/miui/activityutil/l;->a:Lcom/miui/activityutil/k;

    invoke-static {v0}, Lcom/miui/activityutil/k;->a(Lcom/miui/activityutil/k;)Lcom/miui/activityutil/j;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/activityutil/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/activityutil/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/miui/activityutil/l;->a:Lcom/miui/activityutil/k;

    invoke-static {v1}, Lcom/miui/activityutil/k;->a(Lcom/miui/activityutil/k;)Lcom/miui/activityutil/j;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/activityutil/c;->a(Ljava/io/File;[B)Z

    .line 123
    iget-object v0, p0, Lcom/miui/activityutil/l;->b:Lcom/miui/activityutil/c;

    invoke-virtual {v0}, Lcom/miui/activityutil/c;->a()V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/miui/activityutil/l;->a:Lcom/miui/activityutil/k;

    invoke-static {v0}, Lcom/miui/activityutil/k;->a(Lcom/miui/activityutil/k;)Lcom/miui/activityutil/j;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/j;->b(Lcom/miui/activityutil/j;)V

    goto :goto_0
.end method
