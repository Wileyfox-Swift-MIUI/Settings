.class final Lcom/miui/activityutil/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/j;

.field private final synthetic b:Lcom/miui/activityutil/r;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/j;Lcom/miui/activityutil/r;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miui/activityutil/o;->a:Lcom/miui/activityutil/j;

    iput-object p2, p0, Lcom/miui/activityutil/o;->b:Lcom/miui/activityutil/r;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 216
    .line 217
    iget-object v1, p0, Lcom/miui/activityutil/o;->a:Lcom/miui/activityutil/j;

    invoke-static {v1}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/activityutil/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/activityutil/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/activityutil/o;->b:Lcom/miui/activityutil/r;

    iput v0, v1, Lcom/miui/activityutil/r;->b:I

    .line 245
    iget-object v0, p0, Lcom/miui/activityutil/o;->a:Lcom/miui/activityutil/j;

    invoke-static {v0}, Lcom/miui/activityutil/j;->e(Lcom/miui/activityutil/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/activityutil/p;

    iget-object v2, p0, Lcom/miui/activityutil/o;->b:Lcom/miui/activityutil/r;

    invoke-direct {v1, p0, v2}, Lcom/miui/activityutil/p;-><init>(Lcom/miui/activityutil/o;Lcom/miui/activityutil/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void

    .line 221
    :cond_1
    invoke-static {v1}, Lcom/miui/activityutil/c;->a(Ljava/io/File;)[B

    move-result-object v2

    .line 222
    if-eqz v2, :cond_0

    .line 223
    iget-object v3, p0, Lcom/miui/activityutil/o;->a:Lcom/miui/activityutil/j;

    invoke-static {v3, v2}, Lcom/miui/activityutil/j;->a(Lcom/miui/activityutil/j;[B)I

    move-result v2

    .line 224
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    const/4 v0, 0x5

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/miui/activityutil/o;->a:Lcom/miui/activityutil/j;

    invoke-static {v0}, Lcom/miui/activityutil/j;->d(Lcom/miui/activityutil/j;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    const/4 v0, 0x3

    .line 235
    goto :goto_0

    .line 237
    :cond_2
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
