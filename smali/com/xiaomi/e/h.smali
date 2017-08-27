.class Lcom/xiaomi/e/h;
.super Lcom/xiaomi/push/service/ag;
.source "StatsHandler.java"


# instance fields
.field final synthetic bmy:Lcom/xiaomi/e/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/e/g;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xiaomi/e/h;->bmy:Lcom/xiaomi/e/g;

    invoke-direct {p0}, Lcom/xiaomi/push/service/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/xiaomi/push/b/e;)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Iq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/xiaomi/e/g;->Lg()Lcom/xiaomi/e/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Ip()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/g;->setDuration(I)V

    .line 68
    :cond_0
    return-void
.end method
