.class Lcom/xiaomi/push/service/ap;
.super Ljava/lang/Object;
.source "TinyDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bgU:Lcom/xiaomi/push/service/ak;

.field reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/ak;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/xiaomi/push/service/ap;->bgU:Lcom/xiaomi/push/service/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/xiaomi/push/service/ap;->reason:Ljava/lang/String;

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/push/service/ap;->bgU:Lcom/xiaomi/push/service/ak;

    iget-object v1, p0, Lcom/xiaomi/push/service/ap;->reason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ak;->a(Lcom/xiaomi/push/service/ak;Ljava/lang/String;)Z

    .line 199
    return-void
.end method
