.class public abstract Lcom/xiaomi/push/service/l;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/xiaomi/push/service/l;->type:I

    .line 48
    return-void
.end method
