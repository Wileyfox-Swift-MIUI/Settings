.class public final Lorg/apache/thrift/protocol/f;
.super Ljava/lang/Object;
.source "TSet.java"


# instance fields
.field public final bwf:B

.field public final size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Lorg/apache/thrift/protocol/f;-><init>(BI)V

    .line 29
    return-void
.end method

.method public constructor <init>(BI)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Lorg/apache/thrift/protocol/f;->bwf:B

    .line 33
    iput p2, p0, Lorg/apache/thrift/protocol/f;->size:I

    .line 34
    return-void
.end method
