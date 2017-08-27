.class public Lcom/xiaomi/e/g;
.super Ljava/lang/Object;
.source "StatsHandler.java"


# instance fields
.field private bmv:Z

.field private bmw:Lcom/xiaomi/e/f;

.field private bmx:Lcom/xiaomi/channel/commonutils/f/a;

.field private duration:I

.field private startTime:J

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/e/g;->bmv:Z

    .line 43
    invoke-static {}, Lcom/xiaomi/channel/commonutils/f/a;->Gu()Lcom/xiaomi/channel/commonutils/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/e/g;->bmx:Lcom/xiaomi/channel/commonutils/f/a;

    return-void
.end method

.method public static Lg()Lcom/xiaomi/e/g;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/xiaomi/e/i;->bmz:Lcom/xiaomi/e/g;

    return-object v0
.end method

.method public static Lh()Lcom/xiaomi/e/f;
    .locals 2

    .prologue
    .line 54
    sget-object v1, Lcom/xiaomi/e/i;->bmz:Lcom/xiaomi/e/g;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/xiaomi/e/i;->bmz:Lcom/xiaomi/e/g;

    iget-object v0, v0, Lcom/xiaomi/e/g;->bmw:Lcom/xiaomi/e/f;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Lj()V
    .locals 4

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/xiaomi/e/g;->bmv:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/e/g;->startTime:J

    sub-long/2addr v0, v2

    .line 102
    iget v2, p0, Lcom/xiaomi/e/g;->duration:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/e/g;->bmv:Z

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/e/g;->startTime:J

    .line 107
    :cond_0
    return-void
.end method

.method private a(Lcom/xiaomi/channel/commonutils/f/b;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    iget v1, p1, Lcom/xiaomi/channel/commonutils/f/b;->key:I

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p1, Lcom/xiaomi/channel/commonutils/f/b;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/xiaomi/push/thrift/StatsEvent;

    if-eqz v1, :cond_0

    .line 200
    iget-object v0, p1, Lcom/xiaomi/channel/commonutils/f/b;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvent;

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/e/g;->Lm()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 204
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->biL:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fm(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 205
    iget v1, p1, Lcom/xiaomi/channel/commonutils/f/b;->key:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fo(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 206
    iget-object v1, p1, Lcom/xiaomi/channel/commonutils/f/b;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->eQ(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    goto :goto_0
.end method

.method private ft(I)Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 7

    .prologue
    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v2, Lcom/xiaomi/push/thrift/StatsEvents;

    iget-object v0, p0, Lcom/xiaomi/e/g;->uuid:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/push/thrift/StatsEvents;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/xiaomi/e/g;->bmw:Lcom/xiaomi/e/f;

    iget-object v0, v0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->dF(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaomi/e/g;->bmw:Lcom/xiaomi/e/f;

    iget-object v0, v0, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/a;->dw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/thrift/StatsEvents;->eS(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvents;

    .line 135
    :cond_0
    new-instance v3, Lorg/apache/thrift/transport/b;

    invoke-direct {v3, p1}, Lorg/apache/thrift/transport/b;-><init>(I)V

    .line 136
    new-instance v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;->a(Lorg/apache/thrift/transport/d;)Lorg/apache/thrift/protocol/d;

    move-result-object v4

    .line 138
    :try_start_0
    invoke-virtual {v2, v4}, Lcom/xiaomi/push/thrift/StatsEvents;->b(Lorg/apache/thrift/protocol/d;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/e/g;->bmx:Lcom/xiaomi/channel/commonutils/f/a;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/f/a;->Gw()Ljava/util/LinkedList;

    move-result-object v5

    .line 145
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 146
    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/f/b;

    invoke-direct {p0, v0}, Lcom/xiaomi/e/g;->a(Lcom/xiaomi/channel/commonutils/f/b;)Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0, v4}, Lcom/xiaomi/push/thrift/StatsEvent;->b(Lorg/apache/thrift/protocol/d;)V

    .line 150
    :cond_1
    invoke-virtual {v3}, Lorg/apache/thrift/transport/b;->length()I

    move-result v6

    if-le v6, p1, :cond_3

    .line 166
    :cond_2
    :goto_2
    return-object v2

    .line 154
    :cond_3
    if-eqz v0, :cond_4

    .line 155
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    goto :goto_2

    .line 139
    :catch_1
    move-exception v0

    goto :goto_0

    .line 162
    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public Li()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/xiaomi/e/g;->bmv:Z

    return v0
.end method

.method Lk()Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/xiaomi/e/g;->Lj()V

    .line 111
    iget-boolean v0, p0, Lcom/xiaomi/e/g;->bmv:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/e/g;->bmx:Lcom/xiaomi/channel/commonutils/f/a;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/f/a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized Ll()Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/e/g;->Lk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const/16 v0, 0x2ee

    .line 118
    iget-object v1, p0, Lcom/xiaomi/e/g;->bmw:Lcom/xiaomi/e/f;

    iget-object v1, v1, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/d/d;->dF(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const/16 v0, 0x177

    .line 121
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/e/g;->ft(I)Lcom/xiaomi/push/thrift/StatsEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 123
    :cond_1
    monitor-exit p0

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized Lm()Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 6

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/xiaomi/e/g;->bmw:Lcom/xiaomi/e/f;

    iget-object v1, v1, Lcom/xiaomi/e/f;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->eO(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 186
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 187
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fp(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 189
    iget-object v1, p0, Lcom/xiaomi/e/g;->bmw:Lcom/xiaomi/e/f;

    iget-object v1, v1, Lcom/xiaomi/e/f;->aZR:Lcom/xiaomi/smack/a;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/xiaomi/e/g;->bmw:Lcom/xiaomi/e/f;

    iget-object v1, v1, Lcom/xiaomi/e/f;->aZR:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->KH()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fq(I)Lcom/xiaomi/push/thrift/StatsEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    monitor-exit p0

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lcom/xiaomi/push/thrift/StatsEvent;)V
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/e/g;->bmx:Lcom/xiaomi/channel/commonutils/f/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/commonutils/f/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/e/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/e/f;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/e/g;->bmw:Lcom/xiaomi/e/f;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/e/g;->uuid:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/xiaomi/push/service/ae;->JH()Lcom/xiaomi/push/service/ae;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/e/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/e/h;-><init>(Lcom/xiaomi/e/g;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/push/service/ag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDuration(I)V
    .locals 4

    .prologue
    const v0, 0x240c8400

    .line 83
    if-lez p1, :cond_1

    .line 85
    mul-int/lit16 v1, p1, 0x3e8

    .line 86
    if-le v1, v0, :cond_2

    .line 89
    :goto_0
    iget v1, p0, Lcom/xiaomi/e/g;->duration:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/e/g;->bmv:Z

    if-nez v1, :cond_1

    .line 90
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/e/g;->bmv:Z

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/e/g;->startTime:J

    .line 93
    iput v0, p0, Lcom/xiaomi/e/g;->duration:I

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable dot duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/e/g;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
