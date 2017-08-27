.class final Lcom/xiaomi/push/service/D;
.super Ljava/lang/Object;
.source "MIPushHelper.java"


# direct methods
.method static S(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 101
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fp(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 102
    const-string v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fq(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 103
    invoke-static {}, Lcom/xiaomi/smack/packet/e;->nextID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fo(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->di(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 106
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->bmK:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/D;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/d/b;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 72
    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 73
    invoke-static {p0}, Lcom/xiaomi/push/service/q;->el(Landroid/content/Context;)Lcom/xiaomi/push/service/p;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/xiaomi/push/service/D;->a(Lcom/xiaomi/push/service/p;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/d/b;
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/xiaomi/push/service/p;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/d/b;
    .locals 5

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lcom/xiaomi/d/b;

    invoke-direct {v0}, Lcom/xiaomi/d/b;-><init>()V

    .line 46
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/b;->fr(I)V

    .line 47
    iget-object v1, p0, Lcom/xiaomi/push/service/p;->bfe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/b;->setFrom(Ljava/lang/String;)V

    .line 48
    iget-object v1, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/b;->setPackageName(Ljava/lang/String;)V

    .line 49
    const-string v1, "SECMSG"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/d/b;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/xiaomi/push/service/p;->bfe:Ljava/lang/String;

    .line 52
    iget-object v2, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const/4 v3, 0x0

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 53
    iget-object v2, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    .line 55
    invoke-static {p2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/xiaomi/push/service/p;->security:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/d/b;->d([BLjava/lang/String;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/b;->b(S)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try send mi push message. packagename:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6

    .prologue
    .line 82
    .line 83
    invoke-static {p2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 84
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 85
    new-instance v2, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    .line 86
    const-wide/16 v4, 0x5

    iput-wide v4, v2, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 87
    const-string v3, "fakeid"

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->c(Lcom/xiaomi/xmpush/thrift/Target;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 89
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->d(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 90
    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->b(Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 91
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->dg(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 92
    invoke-virtual {v1, p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->fn(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->de(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 94
    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->fm(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 95
    return-object v1
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/xiaomi/push/service/E;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/E;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/U;)V

    .line 123
    return-void
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->Ka()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->KC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {p0, p2}, Lcom/xiaomi/push/service/D;->a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/d/b;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->i(Lcom/xiaomi/d/b;)V

    .line 143
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "Don\'t support XMPP connection."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    const v0, 0x42c1d83

    const-string v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/u;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static d(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/q;->el(Landroid/content/Context;)Lcom/xiaomi/push/service/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/q;->el(Landroid/content/Context;)Lcom/xiaomi/push/service/p;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/p;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 38
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/D;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V

    .line 39
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/S;)V

    .line 41
    :cond_0
    return-void
.end method

.method static e(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->Ka()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->KC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-static {p0}, Lcom/xiaomi/push/service/q;->el(Landroid/content/Context;)Lcom/xiaomi/push/service/p;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/xiaomi/push/service/D;->a(Lcom/xiaomi/push/service/p;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/d/b;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->i(Lcom/xiaomi/d/b;)V

    .line 159
    :cond_0
    return-void

    .line 154
    :cond_1
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "Don\'t support XMPP connection."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_2
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
