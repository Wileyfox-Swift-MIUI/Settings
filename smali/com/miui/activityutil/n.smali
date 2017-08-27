.class final Lcom/miui/activityutil/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/activityutil/g;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/m;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miui/activityutil/n;->a:Lcom/miui/activityutil/m;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/activityutil/n;->a:Lcom/miui/activityutil/m;

    iget-object v0, v0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v0}, Lcom/miui/activityutil/j;->b(Lcom/miui/activityutil/j;)V

    .line 183
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/miui/activityutil/n;->a:Lcom/miui/activityutil/m;

    iget-object v0, v0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v0}, Lcom/miui/activityutil/j;->b(Lcom/miui/activityutil/j;)V

    .line 177
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/activityutil/n;->a:Lcom/miui/activityutil/m;

    iget-object v0, v0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v0, p1}, Lcom/miui/activityutil/j;->b(Lcom/miui/activityutil/j;Ljava/lang/String;)I

    move-result v0

    .line 164
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/miui/activityutil/n;->a:Lcom/miui/activityutil/m;

    iget-object v1, v1, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v1}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/activityutil/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/activityutil/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/activityutil/c;->a(Ljava/io/File;[B)Z

    .line 167
    :cond_1
    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/miui/activityutil/n;->a:Lcom/miui/activityutil/m;

    iget-object v0, v0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;I)V

    .line 170
    iget-object v0, p0, Lcom/miui/activityutil/n;->a:Lcom/miui/activityutil/m;

    iget-object v0, v0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v0}, Lcom/miui/activityutil/j;->c(Lcom/miui/activityutil/j;)V

    goto :goto_0

    .line 171
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 172
    iget-object v0, p0, Lcom/miui/activityutil/n;->a:Lcom/miui/activityutil/m;

    iget-object v0, v0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;I)V

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/miui/activityutil/n;->a:Lcom/miui/activityutil/m;

    iget-object v0, v0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v0}, Lcom/miui/activityutil/j;->b(Lcom/miui/activityutil/j;)V

    goto :goto_0
.end method
