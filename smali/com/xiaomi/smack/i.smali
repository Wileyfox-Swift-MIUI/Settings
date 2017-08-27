.class public abstract Lcom/xiaomi/smack/i;
.super Lcom/xiaomi/smack/a;
.source "SocketConnection.java"


# instance fields
.field protected beH:Lcom/xiaomi/push/service/XMPushService;

.field protected volatile bjM:J

.field protected volatile bjN:J

.field protected bkn:Ljava/lang/Exception;

.field bko:Ljava/lang/String;

.field private bkp:Ljava/lang/String;

.field protected volatile bkq:J

.field private bkr:I

.field protected socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    .line 51
    iput-object v2, p0, Lcom/xiaomi/smack/i;->bkn:Ljava/lang/Exception;

    .line 60
    iput-object v2, p0, Lcom/xiaomi/smack/i;->bko:Ljava/lang/String;

    .line 66
    iput-wide v0, p0, Lcom/xiaomi/smack/i;->bjM:J

    .line 67
    iput-wide v0, p0, Lcom/xiaomi/smack/i;->bjN:J

    .line 75
    iput-wide v0, p0, Lcom/xiaomi/smack/i;->bkq:J

    .line 84
    iput-object p1, p0, Lcom/xiaomi/smack/i;->beH:Lcom/xiaomi/push/service/XMPushService;

    .line 85
    return-void
.end method

.method private F(Ljava/lang/String;I)V
    .locals 16

    .prologue
    .line 227
    const/4 v4, 0x0

    .line 228
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/xiaomi/smack/i;->bkn:Ljava/lang/Exception;

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get bucket for host : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->dg(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 232
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/smack/i;->eV(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v2

    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->c(Ljava/lang/Integer;)V

    .line 234
    if-eqz v2, :cond_0

    .line 235
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaomi/c/b;->ch(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 238
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 239
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/xiaomi/smack/i;->bkq:J

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/i;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 245
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 248
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xiaomi/smack/i;->bjK:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/xiaomi/smack/i;->bjK:I

    .line 250
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin to connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smack/i;->createSocket()Ljava/net/Socket;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/xiaomi/smack/i;->socket:Ljava/net/Socket;

    .line 255
    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/xiaomi/c/d;->D(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    .line 256
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/smack/i;->socket:Ljava/net/Socket;

    const/16 v7, 0x1f40

    invoke-virtual {v6, v5, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 257
    const-string v5, "tcp connected"

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/i;->socket:Ljava/net/Socket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 260
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/smack/i;->bkp:Ljava/lang/String;

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smack/i;->KD()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    const/4 v9, 0x1

    .line 264
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/xiaomi/smack/i;->bjL:J

    .line 265
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/xiaomi/smack/i;->bjU:Ljava/lang/String;

    .line 267
    if-eqz v2, :cond_2

    .line 268
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/xiaomi/smack/i;->bjL:J

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/c/b;->b(Ljava/lang/String;JJ)V

    .line 270
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/xiaomi/smack/i;->bkq:J

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/xiaomi/smack/i;->bjL:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    :cond_3
    :goto_1
    invoke-static {}, Lcom/xiaomi/c/f;->Hs()Lcom/xiaomi/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/c/f;->Hx()V

    .line 309
    if-nez v9, :cond_8

    .line 310
    new-instance v2, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :catch_0
    move-exception v8

    move v9, v4

    .line 274
    :goto_2
    if-eqz v2, :cond_4

    .line 275
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/c/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 277
    :cond_4
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/xiaomi/smack/i;->bkn:Ljava/lang/Exception;

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: Could not connect to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 280
    const-string v4, "SMACK: Could not connect to "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    if-nez v9, :cond_5

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/i;->bkn:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/e/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/smack/i;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    move v3, v9

    :goto_3
    move v4, v3

    .line 305
    goto/16 :goto_0

    .line 283
    :catch_1
    move-exception v8

    move v9, v4

    .line 284
    :goto_4
    if-eqz v2, :cond_6

    .line 285
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/c/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 287
    :cond_6
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/xiaomi/smack/i;->bkn:Ljava/lang/Exception;

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: Could not connect to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 289
    const-string v4, "SMACK: Could not connect to "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    .line 291
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xiaomi/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    if-nez v9, :cond_5

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/i;->bkn:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/e/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/smack/i;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    .line 292
    :catch_2
    move-exception v5

    .line 294
    :goto_5
    :try_start_4
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "abnormal exception"

    invoke-direct {v6, v7, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/xiaomi/smack/i;->bkn:Ljava/lang/Exception;

    .line 295
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 297
    if-nez v4, :cond_9

    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/i;->bkn:Ljava/lang/Exception;

    invoke-static {v3, v5}, Lcom/xiaomi/e/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/smack/i;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move v9, v4

    .line 301
    goto/16 :goto_1

    .line 297
    :catchall_0
    move-exception v2

    move v9, v4

    :goto_6
    if-nez v9, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/i;->bkn:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/e/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/smack/i;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    :cond_7
    throw v2

    .line 312
    :cond_8
    return-void

    .line 297
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 292
    :catch_3
    move-exception v4

    move-object v5, v4

    move v4, v9

    goto :goto_5

    .line 283
    :catch_4
    move-exception v8

    goto/16 :goto_4

    .line 273
    :catch_5
    move-exception v8

    goto/16 :goto_2

    :cond_9
    move v3, v4

    goto/16 :goto_3

    :cond_a
    move v9, v4

    goto/16 :goto_1
.end method

.method private a(Lcom/xiaomi/smack/c;)V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/xiaomi/smack/c;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lcom/xiaomi/smack/c;->getPort()I

    move-result v1

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/smack/i;->F(Ljava/lang/String;I)V

    .line 217
    return-void
.end method


# virtual methods
.method protected declared-synchronized KD()V
    .locals 0

    .prologue
    .line 320
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public KU()V
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/i;->bjM:J

    .line 392
    return-void
.end method

.method public KV()V
    .locals 2

    .prologue
    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/i;->bjN:J

    .line 396
    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/smack/i;->b(ILjava/lang/Exception;)V

    .line 161
    if-nez p2, :cond_0

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/smack/i;->bkq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0, p2}, Lcom/xiaomi/smack/i;->e(Ljava/lang/Exception;)V

    .line 165
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 8

    .prologue
    .line 194
    invoke-static {}, Lcom/xiaomi/smack/c;->KP()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/xiaomi/c/f;->Hs()Lcom/xiaomi/c/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/c/f;->g(Ljava/lang/String;Z)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/c/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 198
    invoke-static {}, Lcom/xiaomi/c/f;->Hs()Lcom/xiaomi/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/c/f;->Hx()V

    .line 200
    :cond_0
    return-void
.end method

.method public a([Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 207
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 208
    invoke-virtual {p0, v2}, Lcom/xiaomi/smack/i;->f(Lcom/xiaomi/smack/packet/e;)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method protected declared-synchronized b(ILjava/lang/Exception;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 141
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/i;->KL()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smack/i;->a(IILjava/lang/Exception;)V

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/i;->challenge:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/smack/i;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :goto_1
    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/xiaomi/smack/i;->bjM:J

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/smack/i;->bjN:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b([Lcom/xiaomi/d/b;)V
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "Don\'t support send Blob"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(ILjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/xiaomi/smack/i;->beH:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/smack/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/xiaomi/smack/k;-><init>(Lcom/xiaomi/smack/i;IILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 360
    return-void
.end method

.method protected abstract cA(Z)V
.end method

.method public cB(Z)V
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    invoke-virtual {p0, p1}, Lcom/xiaomi/smack/i;->cA(Z)V

    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/xiaomi/smack/i;->beH:Lcom/xiaomi/push/service/XMPushService;

    new-instance v3, Lcom/xiaomi/smack/j;

    const/16 v4, 0xd

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/xiaomi/smack/j;-><init>(Lcom/xiaomi/smack/i;IJ)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;J)V

    .line 116
    :cond_0
    return-void
.end method

.method public declared-synchronized connect()V
    .locals 3

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/i;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/smack/i;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    const-string v0, "WARNING: current xmpp has connected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :goto_0
    monitor-exit p0

    return-void

    .line 338
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/smack/i;->a(IILjava/lang/Exception;)V

    .line 341
    iget-object v0, p0, Lcom/xiaomi/smack/i;->bjX:Lcom/xiaomi/smack/c;

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/i;->a(Lcom/xiaomi/smack/c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    :try_start_2
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 363
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method protected e(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smack/i;->bkq:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/xiaomi/smack/i;->beH:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget v0, p0, Lcom/xiaomi/smack/i;->bkr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/smack/i;->bkr:I

    .line 172
    iget v0, p0, Lcom/xiaomi/smack/i;->bkr:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/xiaomi/smack/i;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max short conn time reached, sink down current host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 176
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/xiaomi/smack/i;->a(Ljava/lang/String;JLjava/lang/Exception;)V

    .line 177
    iput v4, p0, Lcom/xiaomi/smack/i;->bkr:I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iput v4, p0, Lcom/xiaomi/smack/i;->bkr:I

    goto :goto_0
.end method

.method eV(Ljava/lang/String;)Lcom/xiaomi/c/b;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-static {}, Lcom/xiaomi/c/f;->Hs()Lcom/xiaomi/c/f;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/xiaomi/c/f;->g(Ljava/lang/String;Z)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lcom/xiaomi/c/b;->Hn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    new-instance v1, Lcom/xiaomi/smack/l;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/smack/l;-><init>(Lcom/xiaomi/smack/i;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/smack/d/e;->execute(Ljava/lang/Runnable;)V

    .line 377
    :cond_0
    iput v2, p0, Lcom/xiaomi/smack/i;->bjO:I

    .line 379
    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/c/b;->ip:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 380
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/xiaomi/smack/i;->bjO:I

    .line 381
    iget v2, p0, Lcom/xiaomi/smack/i;->bjO:I

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/smack/i;->bjO:I

    .line 382
    iget v2, p0, Lcom/xiaomi/smack/i;->bjO:I

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/smack/i;->bjO:I

    .line 383
    iget v2, p0, Lcom/xiaomi/smack/i;->bjO:I

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/smack/i;->bjO:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-object v0

    .line 384
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xiaomi/smack/i;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xiaomi/smack/i;->bkp:Ljava/lang/String;

    return-object v0
.end method
