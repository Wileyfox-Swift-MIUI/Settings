.class Lcom/xiaomi/push/service/af;
.super Lcom/xiaomi/channel/commonutils/c/n;
.source "ServiceConfig.java"


# instance fields
.field final synthetic bgK:Lcom/xiaomi/push/service/ae;

.field success:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/ae;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/xiaomi/push/service/af;->bgK:Lcom/xiaomi/push/service/ae;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/n;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/af;->success:Z

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://resolver.msg.xiaomi.net/psc/?t=a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/c/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/xiaomi/push/b/b;->u([B)Lcom/xiaomi/push/b/b;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/xiaomi/push/service/af;->bgK:Lcom/xiaomi/push/service/ae;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/push/service/ae;Lcom/xiaomi/push/b/b;)Lcom/xiaomi/push/b/b;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/af;->success:Z

    .line 151
    iget-object v0, p0, Lcom/xiaomi/push/service/af;->bgK:Lcom/xiaomi/push/service/ae;

    invoke-static {v0}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/push/service/ae;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch config failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Gs()V
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/xiaomi/push/service/af;->bgK:Lcom/xiaomi/push/service/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/push/service/ae;Lcom/xiaomi/channel/commonutils/c/n;)Lcom/xiaomi/channel/commonutils/c/n;

    .line 161
    iget-boolean v0, p0, Lcom/xiaomi/push/service/af;->success:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/xiaomi/push/service/af;->bgK:Lcom/xiaomi/push/service/ae;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/af;->bgK:Lcom/xiaomi/push/service/ae;

    invoke-static {v0}, Lcom/xiaomi/push/service/ae;->b(Lcom/xiaomi/push/service/ae;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/af;->bgK:Lcom/xiaomi/push/service/ae;

    invoke-static {v2}, Lcom/xiaomi/push/service/ae;->b(Lcom/xiaomi/push/service/ae;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/xiaomi/push/service/ag;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/ag;

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 167
    iget-object v4, p0, Lcom/xiaomi/push/service/af;->bgK:Lcom/xiaomi/push/service/ae;

    invoke-static {v4}, Lcom/xiaomi/push/service/ae;->c(Lcom/xiaomi/push/service/ae;)Lcom/xiaomi/push/b/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/ag;->a(Lcom/xiaomi/push/b/b;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 170
    :cond_0
    return-void
.end method
