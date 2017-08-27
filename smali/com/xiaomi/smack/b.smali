.class public Lcom/xiaomi/smack/b;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field private bjZ:Lcom/xiaomi/smack/g;

.field private bka:Lcom/xiaomi/smack/b/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/xiaomi/smack/b;->bjZ:Lcom/xiaomi/smack/g;

    .line 538
    iput-object p2, p0, Lcom/xiaomi/smack/b;->bka:Lcom/xiaomi/smack/b/a;

    .line 539
    return-void
.end method


# virtual methods
.method public h(Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/xiaomi/smack/b;->bka:Lcom/xiaomi/smack/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/b;->bka:Lcom/xiaomi/smack/b/a;

    invoke-interface {v0, p1}, Lcom/xiaomi/smack/b/a;->a(Lcom/xiaomi/smack/packet/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/b;->bjZ:Lcom/xiaomi/smack/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/smack/g;->b(Lcom/xiaomi/smack/packet/e;)V

    .line 550
    :cond_1
    return-void
.end method

.method public j(Lcom/xiaomi/d/b;)V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/xiaomi/smack/b;->bjZ:Lcom/xiaomi/smack/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/smack/g;->a(Lcom/xiaomi/d/b;)V

    .line 554
    return-void
.end method
