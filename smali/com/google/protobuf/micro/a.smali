.class public final Lcom/google/protobuf/micro/a;
.super Ljava/lang/Object;
.source "ByteStringMicro.java"


# static fields
.field public static final aYc:Lcom/google/protobuf/micro/a;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/google/protobuf/micro/a;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/micro/a;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/micro/a;->aYc:Lcom/google/protobuf/micro/a;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/micro/a;->hash:I

    .line 45
    iput-object p1, p0, Lcom/google/protobuf/micro/a;->bytes:[B

    .line 46
    return-void
.end method

.method public static b([BII)Lcom/google/protobuf/micro/a;
    .locals 2

    .prologue
    .line 84
    new-array v0, p2, [B

    .line 85
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    new-instance v1, Lcom/google/protobuf/micro/a;

    invoke-direct {v1, v0}, Lcom/google/protobuf/micro/a;-><init>([B)V

    return-object v1
.end method

.method public static r([B)Lcom/google/protobuf/micro/a;
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/micro/a;->b([BII)Lcom/google/protobuf/micro/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    if-ne p1, p0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/micro/a;

    if-nez v2, :cond_2

    move v0, v1

    .line 184
    goto :goto_0

    .line 187
    :cond_2
    check-cast p1, Lcom/google/protobuf/micro/a;

    .line 188
    iget-object v2, p0, Lcom/google/protobuf/micro/a;->bytes:[B

    array-length v3, v2

    .line 189
    iget-object v2, p1, Lcom/google/protobuf/micro/a;->bytes:[B

    array-length v2, v2

    if-eq v3, v2, :cond_3

    move v0, v1

    .line 190
    goto :goto_0

    .line 193
    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/micro/a;->bytes:[B

    .line 194
    iget-object v5, p1, Lcom/google/protobuf/micro/a;->bytes:[B

    move v2, v1

    .line 195
    :goto_1
    if-ge v2, v3, :cond_0

    .line 196
    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_4

    move v0, v1

    .line 197
    goto :goto_0

    .line 195
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 208
    iget v0, p0, Lcom/google/protobuf/micro/a;->hash:I

    .line 210
    if-nez v0, :cond_2

    .line 211
    iget-object v4, p0, Lcom/google/protobuf/micro/a;->bytes:[B

    .line 212
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->bytes:[B

    array-length v2, v0

    .line 215
    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 216
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    .line 215
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 218
    :cond_0
    if-nez v0, :cond_1

    .line 219
    const/4 v0, 0x1

    .line 222
    :cond_1
    iput v0, p0, Lcom/google/protobuf/micro/a;->hash:I

    .line 225
    :cond_2
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->bytes:[B

    array-length v0, v0

    .line 149
    new-array v1, v0, [B

    .line 150
    iget-object v2, p0, Lcom/google/protobuf/micro/a;->bytes:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-object v1
.end method
