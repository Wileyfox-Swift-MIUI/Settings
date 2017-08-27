.class public final Lcom/miui/activityutil/b;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljavax/crypto/Cipher;

.field private final b:[B

.field private c:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    const/16 v0, 0x75

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/activityutil/b;->b:[B

    .line 38
    iput-object p2, p0, Lcom/miui/activityutil/b;->a:Ljavax/crypto/Cipher;

    .line 39
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 139
    :try_start_0
    iget v0, p0, Lcom/miui/activityutil/b;->c:I

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/activityutil/b;->a:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/miui/activityutil/b;->b:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/activityutil/b;->c:I

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 153
    :cond_2
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    iget-object v1, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 152
    :cond_3
    throw v0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 126
    return-void
.end method

.method public final write(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-array v0, v3, [B

    .line 50
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 49
    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/activityutil/b;->write([BII)V

    .line 52
    return-void
.end method

.method public final write([BII)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x75

    .line 64
    if-nez p3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget v1, p0, Lcom/miui/activityutil/b;->c:I

    add-int/2addr v1, p3

    .line 73
    iget v2, p0, Lcom/miui/activityutil/b;->c:I

    if-nez v2, :cond_2

    if-ge v1, v5, :cond_4

    .line 74
    :cond_2
    if-ge v1, v5, :cond_3

    .line 75
    iget-object v0, p0, Lcom/miui/activityutil/b;->b:[B

    iget v2, p0, Lcom/miui/activityutil/b;->c:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput v1, p0, Lcom/miui/activityutil/b;->c:I

    goto :goto_0

    .line 79
    :cond_3
    iget v1, p0, Lcom/miui/activityutil/b;->c:I

    if-eqz v1, :cond_4

    .line 80
    const/4 v0, 0x1

    .line 84
    :cond_4
    if-eqz v0, :cond_5

    .line 85
    :try_start_0
    iget v0, p0, Lcom/miui/activityutil/b;->c:I

    rsub-int/lit8 v0, v0, 0x75

    .line 86
    iget-object v1, p0, Lcom/miui/activityutil/b;->b:[B

    iget v2, p0, Lcom/miui/activityutil/b;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget-object v1, p0, Lcom/miui/activityutil/b;->b:[B

    .line 88
    iget-object v2, p0, Lcom/miui/activityutil/b;->a:Ljavax/crypto/Cipher;

    const/4 v3, 0x0

    const/16 v4, 0x75

    invoke-virtual {v2, v1, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/activityutil/b;->c:I

    .line 94
    sub-int/2addr p3, v0

    .line 95
    add-int/2addr p2, v0

    .line 99
    :cond_5
    :goto_1
    if-ge p3, v5, :cond_6

    .line 109
    if-lez p3, :cond_0

    .line 110
    iget-object v0, p0, Lcom/miui/activityutil/b;->b:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput p3, p0, Lcom/miui/activityutil/b;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/miui/activityutil/b;->a:Ljavax/crypto/Cipher;

    const/16 v1, 0x75

    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/miui/activityutil/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    add-int/lit8 p2, p2, 0x75

    .line 106
    add-int/lit8 p3, p3, -0x75

    goto :goto_1
.end method
