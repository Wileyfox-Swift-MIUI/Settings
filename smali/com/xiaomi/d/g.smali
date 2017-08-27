.class Lcom/xiaomi/d/g;
.super Ljava/lang/Thread;
.source "SlimConnection.java"


# instance fields
.field final synthetic bjH:Lcom/xiaomi/d/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/d/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xiaomi/d/g;->bjH:Lcom/xiaomi/d/f;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/d/g;->bjH:Lcom/xiaomi/d/f;

    invoke-static {v0}, Lcom/xiaomi/d/f;->a(Lcom/xiaomi/d/f;)Lcom/xiaomi/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/c;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    iget-object v1, p0, Lcom/xiaomi/d/g;->bjH:Lcom/xiaomi/d/f;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/d/f;->c(ILjava/lang/Exception;)V

    goto :goto_0
.end method
