.class Lcom/xiaomi/smack/l;
.super Ljava/lang/Object;
.source "SocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bkt:Lcom/xiaomi/smack/i;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/xiaomi/smack/l;->bkt:Lcom/xiaomi/smack/i;

    iput-object p2, p0, Lcom/xiaomi/smack/l;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 372
    invoke-static {}, Lcom/xiaomi/c/f;->Hs()Lcom/xiaomi/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/l;->val$host:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/c/f;->g(Ljava/lang/String;Z)Lcom/xiaomi/c/b;

    .line 373
    return-void
.end method
