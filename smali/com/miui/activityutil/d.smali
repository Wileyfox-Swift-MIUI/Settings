.class public final Lcom/miui/activityutil/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()Ljava/security/PublicKey;
    .locals 2

    .prologue
    .line 24
    :try_start_0
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/gT0vSqtsv7y4c7qLn1tvJF6Uur067h8pf7VXJNNqYxVWdpR5la5QuLIi90bZntPGsxM7IDSTL7Wia9ox+CbalDC3+ouPMVIjMK9tqWfb8F0XQJi8eHlZ4KpGZxqQDOcisxGQHClig/dD/CkqlX4eTyK7HDRVRS8Jj6SiaWDY2QIDAQAB"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 25
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 26
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/miui/activityutil/d;->a()Ljava/security/PublicKey;

    move-result-object v0

    .line 49
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x75

    add-int/lit8 v4, v0, 0x1

    .line 53
    const/16 v0, 0x75

    new-array v2, v0, [B

    .line 54
    mul-int/lit16 v0, v4, 0x80

    new-array v0, v0, [B

    move v9, v1

    move-object v1, v2

    move v2, v9

    .line 57
    :goto_0
    if-lt v2, v4, :cond_0

    .line 72
    :goto_1
    return-object v0

    .line 58
    :cond_0
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_1

    .line 59
    array-length v1, p0

    mul-int/lit8 v5, v2, 0x75

    sub-int v5, v1, v5

    .line 60
    new-array v1, v5, [B

    .line 61
    mul-int/lit8 v6, v2, 0x75

    const/4 v7, 0x0

    invoke-static {p0, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    :goto_2
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 66
    const/4 v6, 0x0

    mul-int/lit16 v7, v2, 0x80

    const/16 v8, 0x80

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    mul-int/lit8 v5, v2, 0x75

    const/4 v6, 0x0

    const/16 v7, 0x75

    invoke-static {p0, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/miui/activityutil/d;->a()Ljava/security/PublicKey;

    move-result-object v1

    .line 78
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 79
    const/4 v2, 0x2

    invoke-virtual {v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 81
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v1, v1, 0x80

    add-int/lit8 v5, v1, 0x1

    .line 82
    mul-int/lit8 v1, v5, 0x75

    new-array v6, v1, [B

    .line 83
    const/16 v1, 0x80

    new-array v1, v1, [B

    move v2, v0

    move-object v3, v1

    move v1, v0

    .line 87
    :goto_0
    if-lt v0, v5, :cond_0

    .line 100
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2, v1}, Ljava/lang/String;-><init>([BII)V

    .line 105
    :goto_1
    return-object v0

    .line 88
    :cond_0
    add-int/lit8 v7, v5, -0x1

    if-ne v0, v7, :cond_1

    .line 89
    array-length v3, p0

    mul-int/lit16 v7, v0, 0x80

    sub-int v7, v3, v7

    .line 90
    new-array v3, v7, [B

    .line 91
    mul-int/lit16 v8, v0, 0x80

    const/4 v9, 0x0

    invoke-static {p0, v8, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    :goto_2
    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 96
    array-length v8, v7

    add-int/2addr v1, v8

    .line 97
    const/4 v8, 0x0

    array-length v9, v7

    invoke-static {v7, v8, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    array-length v7, v7

    add-int/2addr v2, v7

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    mul-int/lit16 v7, v0, 0x80

    const/4 v8, 0x0

    const/16 v9, 0x80

    invoke-static {p0, v7, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    const/4 v0, 0x0

    goto :goto_1
.end method
