.class public Lcom/xiaomi/smack/d/e;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# static fields
.field private static bmc:Lcom/xiaomi/channel/commonutils/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lcom/xiaomi/channel/commonutils/c/j;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/c/j;-><init>(ZI)V

    sput-object v0, Lcom/xiaomi/smack/d/e;->bmc:Lcom/xiaomi/channel/commonutils/c/j;

    return-void
.end method

.method public static b(Lcom/xiaomi/channel/commonutils/c/n;J)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/smack/d/e;->bmc:Lcom/xiaomi/channel/commonutils/c/j;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/channel/commonutils/c/j;->a(Lcom/xiaomi/channel/commonutils/c/n;J)V

    .line 29
    return-void
.end method

.method public static c(Lcom/xiaomi/channel/commonutils/c/n;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/xiaomi/smack/d/e;->bmc:Lcom/xiaomi/channel/commonutils/c/j;

    invoke-virtual {v0, p0}, Lcom/xiaomi/channel/commonutils/c/j;->a(Lcom/xiaomi/channel/commonutils/c/n;)V

    .line 25
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/xiaomi/smack/d/e;->bmc:Lcom/xiaomi/channel/commonutils/c/j;

    new-instance v1, Lcom/xiaomi/smack/d/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/smack/d/f;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/c/j;->a(Lcom/xiaomi/channel/commonutils/c/n;)V

    .line 21
    return-void
.end method
