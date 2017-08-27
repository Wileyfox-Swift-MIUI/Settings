.class Lcom/xiaomi/e/b;
.super Lcom/xiaomi/push/service/aP;
.source "BindTracker.java"


# instance fields
.field final synthetic bmm:Lcom/xiaomi/e/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/e/a;I)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xiaomi/e/b;->bmm:Lcom/xiaomi/e/a;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/aP;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/e/b;->bmm:Lcom/xiaomi/e/a;

    invoke-static {v0}, Lcom/xiaomi/e/a;->a(Lcom/xiaomi/e/a;)V

    .line 51
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "Handling bind stats"

    return-object v0
.end method
