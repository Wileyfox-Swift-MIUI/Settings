.class public Lcom/xiaomi/e/f;
.super Ljava/lang/Object;
.source "StatsContext.java"

# interfaces
.implements Lcom/xiaomi/smack/e;


# instance fields
.field aZR:Lcom/xiaomi/smack/a;

.field beH:Lcom/xiaomi/push/service/XMPushService;

.field private bjU:Ljava/lang/String;

.field private bmp:J

.field private bmq:J

.field private bmr:J

.field private bms:J

.field private bmt:J

.field private bmu:J

.field private exception:Ljava/lang/Exception;

.field private reason:I


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmp:J

    .line 33
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmq:J

    .line 36
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmr:J

    .line 39
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bms:J

    .line 48
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmt:J

    .line 49
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmu:J

    .line 52
    iput-object p1, p0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    .line 53
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/e/f;->bjU:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/xiaomi/e/f;->Le()V

    .line 56
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 57
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/e/f;->bmu:J

    .line 58
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmt:J

    .line 60
    return-void
.end method

.method private Le()V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmq:J

    .line 100
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bms:J

    .line 101
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmp:J

    .line 102
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmr:J

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 105
    iget-object v2, p0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmp:J

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmr:J

    .line 111
    :cond_1
    return-void
.end method

.method private declared-synchronized Lf()V
    .locals 6

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stat connpt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/e/f;->bjU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " netDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/e/f;->bmq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ChannelDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/e/f;->bms:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channelConnectedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/e/f;->bmr:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 118
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 119
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bhQ:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fm(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 120
    iget-object v1, p0, Lcom/xiaomi/e/f;->bjU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->eO(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fp(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 122
    iget-wide v2, p0, Lcom/xiaomi/e/f;->bmq:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fn(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 123
    iget-wide v2, p0, Lcom/xiaomi/e/f;->bms:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fo(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 124
    invoke-static {}, Lcom/xiaomi/e/g;->Lg()Lcom/xiaomi/e/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/e/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 125
    invoke-direct {p0}, Lcom/xiaomi/e/f;->Le()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method Lc()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/e/f;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public declared-synchronized Ld()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 69
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v1

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 72
    iget-wide v4, p0, Lcom/xiaomi/e/f;->bmp:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 73
    iget-wide v4, p0, Lcom/xiaomi/e/f;->bmq:J

    iget-wide v6, p0, Lcom/xiaomi/e/f;->bmp:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/e/f;->bmq:J

    .line 74
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/e/f;->bmp:J

    .line 77
    :cond_2
    iget-wide v4, p0, Lcom/xiaomi/e/f;->bmr:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 78
    iget-wide v4, p0, Lcom/xiaomi/e/f;->bms:J

    iget-wide v6, p0, Lcom/xiaomi/e/f;->bmr:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/e/f;->bms:J

    .line 79
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/e/f;->bmr:J

    .line 82
    :cond_3
    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/xiaomi/e/f;->bjU:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-wide v4, p0, Lcom/xiaomi/e/f;->bmq:J

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    :cond_4
    iget-wide v4, p0, Lcom/xiaomi/e/f;->bmq:J

    const-wide/32 v6, 0x5265c0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 86
    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/e/f;->Lf()V

    .line 88
    :cond_6
    iput-object v0, p0, Lcom/xiaomi/e/f;->bjU:Ljava/lang/String;

    .line 89
    iget-wide v0, p0, Lcom/xiaomi/e/f;->bmp:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_7

    .line 90
    iput-wide v2, p0, Lcom/xiaomi/e/f;->bmp:J

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-wide v2, p0, Lcom/xiaomi/e/f;->bmr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaomi/smack/a;)V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/xiaomi/e/f;->Ld()V

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmr:J

    .line 176
    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bib:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->KK()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/e/j;->a(IILjava/lang/String;I)V

    .line 177
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 139
    iget v0, p0, Lcom/xiaomi/e/f;->reason:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/e/f;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 140
    iput p2, p0, Lcom/xiaomi/e/f;->reason:I

    .line 141
    iput-object p3, p0, Lcom/xiaomi/e/f;->exception:Ljava/lang/Exception;

    .line 142
    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/xiaomi/e/j;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 148
    :cond_0
    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    .line 149
    iget-wide v0, p0, Lcom/xiaomi/e/f;->bmr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->KI()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/xiaomi/e/f;->bmr:J

    sub-long/2addr v0, v4

    .line 151
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 154
    :cond_1
    invoke-static {}, Lcom/xiaomi/smack/h;->KS()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 155
    iget-wide v4, p0, Lcom/xiaomi/e/f;->bms:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/xiaomi/e/f;->bms:J

    .line 156
    iput-wide v2, p0, Lcom/xiaomi/e/f;->bmr:J

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/e/f;->Ld()V

    .line 162
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 163
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 164
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stats rx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/xiaomi/e/f;->bmu:J

    sub-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/xiaomi/e/f;->bmt:J

    sub-long v6, v0, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 167
    iput-wide v2, p0, Lcom/xiaomi/e/f;->bmu:J

    .line 168
    iput-wide v0, p0, Lcom/xiaomi/e/f;->bmt:J

    .line 169
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 182
    :goto_0
    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->bhM:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v3}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4, v0}, Lcom/xiaomi/e/j;->a(IIILjava/lang/String;I)V

    .line 183
    invoke-virtual {p0}, Lcom/xiaomi/e/f;->Ld()V

    .line 184
    return-void

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0
.end method

.method public b(Lcom/xiaomi/smack/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iput v1, p0, Lcom/xiaomi/e/f;->reason:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/e/f;->exception:Ljava/lang/Exception;

    .line 132
    iput-object p1, p0, Lcom/xiaomi/e/f;->aZR:Lcom/xiaomi/smack/a;

    .line 133
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->bib:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/e/j;->L(II)V

    .line 134
    return-void
.end method
