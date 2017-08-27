.class final Lcom/miui/activityutil/m;
.super Lcom/miui/activityutil/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/activityutil/j;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/j;Lcom/miui/activityutil/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    .line 150
    invoke-direct {p0, p1}, Lcom/miui/activityutil/r;-><init>(Lcom/miui/activityutil/j;)V

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 5

    .prologue
    .line 153
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 154
    :cond_0
    new-instance v0, Lcom/miui/activityutil/f;

    invoke-direct {v0}, Lcom/miui/activityutil/f;-><init>()V

    .line 155
    new-instance v1, Lcom/miui/activityutil/c;

    iget-object v2, p0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v2}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/activityutil/c;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v2, p0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v2}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/miui/activityutil/j;->d()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/activityutil/c;->c()[B

    move-result-object v1

    new-instance v4, Lcom/miui/activityutil/n;

    invoke-direct {v4, p0}, Lcom/miui/activityutil/n;-><init>(Lcom/miui/activityutil/m;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/miui/activityutil/f;->a(Landroid/content/Context;[Ljava/lang/String;[BLcom/miui/activityutil/g;)V

    .line 191
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v0}, Lcom/miui/activityutil/j;->c(Lcom/miui/activityutil/j;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;I)V

    .line 189
    iget-object v0, p0, Lcom/miui/activityutil/m;->a:Lcom/miui/activityutil/j;

    invoke-static {v0}, Lcom/miui/activityutil/j;->b(Lcom/miui/activityutil/j;)V

    goto :goto_0
.end method
