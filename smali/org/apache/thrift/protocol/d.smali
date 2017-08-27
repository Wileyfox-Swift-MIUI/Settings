.class public abstract Lorg/apache/thrift/protocol/d;
.super Ljava/lang/Object;
.source "TProtocol.java"


# instance fields
.field protected bwi:Lorg/apache/thrift/transport/d;


# direct methods
.method protected constructor <init>(Lorg/apache/thrift/transport/d;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/thrift/protocol/d;->bwi:Lorg/apache/thrift/transport/d;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract NV()V
.end method

.method public abstract NW()V
.end method

.method public abstract NX()V
.end method

.method public abstract NY()V
.end method

.method public abstract NZ()V
.end method

.method public abstract Oa()V
.end method

.method public abstract Ob()Lorg/apache/thrift/protocol/g;
.end method

.method public abstract Oc()V
.end method

.method public abstract Od()Lorg/apache/thrift/protocol/a;
.end method

.method public abstract Oe()V
.end method

.method public abstract Of()Lorg/apache/thrift/protocol/c;
.end method

.method public abstract Og()V
.end method

.method public abstract Oh()Lorg/apache/thrift/protocol/b;
.end method

.method public abstract Oi()V
.end method

.method public abstract Oj()Lorg/apache/thrift/protocol/f;
.end method

.method public abstract Ok()V
.end method

.method public abstract Ol()S
.end method

.method public abstract Om()I
.end method

.method public abstract On()J
.end method

.method public abstract Oo()Ljava/nio/ByteBuffer;
.end method

.method public abstract Q(J)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/a;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/b;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/c;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/f;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/g;)V
.end method

.method public abstract dp(Z)V
.end method

.method public abstract e(S)V
.end method

.method public abstract fB(I)V
.end method

.method public abstract i(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract readBool()Z
.end method

.method public abstract readByte()B
.end method

.method public abstract readDouble()D
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public abstract writeByte(B)V
.end method

.method public abstract writeDouble(D)V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method
