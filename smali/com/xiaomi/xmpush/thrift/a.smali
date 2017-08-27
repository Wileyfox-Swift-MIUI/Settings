.class public Lcom/xiaomi/xmpush/thrift/a;
.super Ljava/lang/Object;
.source "XmPushThriftSerializeUtils.java"


# direct methods
.method public static a(ZZZ)S
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    .line 77
    if-eqz p0, :cond_1

    const/4 v1, 0x4

    :goto_0
    add-int v2, v0, v1

    .line 78
    if-eqz p1, :cond_2

    const/4 v1, 0x2

    :goto_1
    add-int/2addr v1, v2

    .line 79
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 80
    int-to-short v0, v0

    return v0

    :cond_1
    move v1, v0

    .line 77
    goto :goto_0

    :cond_2
    move v1, v0

    .line 78
    goto :goto_1
.end method

.method public static a(Lorg/apache/thrift/TBase;[B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "the message byte is empty."

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Lorg/apache/thrift/e;

    new-instance v1, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;

    array-length v2, p1

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lorg/apache/thrift/e;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 61
    invoke-virtual {v0, p0, p1}, Lorg/apache/thrift/e;->b(Lorg/apache/thrift/TBase;[B)V

    .line 62
    return-void
.end method

.method public static a(Lorg/apache/thrift/TBase;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 45
    :goto_0
    return-object v0

    .line 40
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/thrift/f;

    new-instance v2, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;

    invoke-direct {v2}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/thrift/f;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 41
    invoke-virtual {v1, p0}, Lorg/apache/thrift/f;->b(Lorg/apache/thrift/TBase;)[B
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    const-string v2, "convertThriftObjectToBytes catch TException."

    invoke-static {v2, v1}, Lcom/xiaomi/channel/commonutils/b/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)S
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    .line 67
    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->N(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->getValue()I

    move-result v0

    add-int v2, v1, v0

    .line 68
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/c/e;->dA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    add-int/2addr v2, v0

    .line 69
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/c/e;->dz(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    add-int/2addr v0, v2

    .line 70
    invoke-static {p0, p1}, Lcom/xiaomi/push/service/ar;->c(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    :cond_0
    add-int/2addr v0, v1

    .line 72
    int-to-short v0, v0

    return v0

    :cond_1
    move v0, v1

    .line 68
    goto :goto_0

    :cond_2
    move v0, v1

    .line 69
    goto :goto_1
.end method
