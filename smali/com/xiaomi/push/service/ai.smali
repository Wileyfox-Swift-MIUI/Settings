.class public Lcom/xiaomi/push/service/ai;
.super Ljava/lang/Object;
.source "TinyDataHelper.java"

# interfaces
.implements Lcom/xiaomi/push/service/an;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/xiaomi/push/service/ai;->context:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/aj;)Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/push/service/ai;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public k(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
