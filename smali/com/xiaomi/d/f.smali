.class public Lcom/xiaomi/d/f;
.super Lcom/xiaomi/smack/i;
.source "SlimConnection.java"


# instance fields
.field private bjE:Ljava/lang/Thread;

.field private bjF:Lcom/xiaomi/d/c;

.field private bjG:Lcom/xiaomi/d/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/i;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    .line 40
    return-void
.end method

.method private KE()V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    new-instance v0, Lcom/xiaomi/d/c;

    iget-object v1, p0, Lcom/xiaomi/d/f;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/d/c;-><init>(Ljava/io/InputStream;Lcom/xiaomi/d/f;)V

    iput-object v0, p0, Lcom/xiaomi/d/f;->bjF:Lcom/xiaomi/d/c;

    .line 147
    new-instance v0, Lcom/xiaomi/d/d;

    iget-object v1, p0, Lcom/xiaomi/d/f;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/d/d;-><init>(Ljava/io/OutputStream;Lcom/xiaomi/smack/a;)V

    iput-object v0, p0, Lcom/xiaomi/d/f;->bjG:Lcom/xiaomi/d/d;

    .line 149
    new-instance v0, Lcom/xiaomi/d/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/d/f;->bjW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/d/g;-><init>(Lcom/xiaomi/d/f;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/d/f;->bjE:Ljava/lang/Thread;

    .line 159
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjE:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/xiaomi/d/f;)Lcom/xiaomi/d/c;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjF:Lcom/xiaomi/d/c;

    return-object v0
.end method

.method private cz(Z)Lcom/xiaomi/d/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/xiaomi/d/b;

    invoke-direct {v0}, Lcom/xiaomi/d/b;-><init>()V

    .line 44
    const-string v1, "PING"

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/d/b;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p1, :cond_2

    .line 47
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/b;->setPacketID(Ljava/lang/String;)V

    .line 52
    :goto_0
    new-instance v1, Lcom/xiaomi/push/b/m;

    invoke-direct {v1}, Lcom/xiaomi/push/b/m;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/xiaomi/d/f;->KF()Lcom/xiaomi/smack/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/smack/c;->Ke()[B

    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    .line 56
    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/push/b/e;->v([B)Lcom/xiaomi/push/b/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/b/m;->c(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/m;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_1
    invoke-static {}, Lcom/xiaomi/e/j;->Lp()[B

    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    invoke-static {v2}, Lcom/google/protobuf/micro/a;->r([B)Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/b/m;->d(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/m;

    .line 65
    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/push/b/m;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/d/b;->d([BLjava/lang/String;)V

    .line 67
    return-object v0

    .line 49
    :cond_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/b;->setPacketID(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public KC()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized KD()V
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/d/f;->KE()V

    .line 141
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjG:Lcom/xiaomi/d/d;

    invoke-virtual {v0}, Lcom/xiaomi/d/d;->KB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p0}, Lcom/xiaomi/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 128
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 129
    invoke-virtual {p0, v2}, Lcom/xiaomi/d/f;->f(Lcom/xiaomi/smack/packet/e;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method protected declared-synchronized b(ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjF:Lcom/xiaomi/d/c;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjF:Lcom/xiaomi/d/c;

    invoke-virtual {v0}, Lcom/xiaomi/d/c;->shutdown()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/d/f;->bjF:Lcom/xiaomi/d/c;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjG:Lcom/xiaomi/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjG:Lcom/xiaomi/d/d;

    invoke-virtual {v0}, Lcom/xiaomi/d/d;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/xiaomi/d/f;->bjG:Lcom/xiaomi/d/d;

    .line 113
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/smack/i;->b(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b([Lcom/xiaomi/d/b;)V
    .locals 3

    .prologue
    .line 117
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 118
    invoke-virtual {p0, v2}, Lcom/xiaomi/d/f;->i(Lcom/xiaomi/d/b;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method protected cA(Z)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjG:Lcom/xiaomi/d/d;

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaomi/d/f;->cz(Z)Lcom/xiaomi/d/b;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] SND ping id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/xiaomi/d/f;->i(Lcom/xiaomi/d/b;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaomi/d/f;->KU()V

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "The BlobWriter is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized e(Lcom/xiaomi/push/service/S;)V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/d/f;->getChallenge()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/xiaomi/d/a;->a(Lcom/xiaomi/push/service/S;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/d/b;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;)Lcom/xiaomi/d/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/d/f;->i(Lcom/xiaomi/d/b;)V

    .line 125
    return-void
.end method

.method g(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 176
    :cond_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjR:Ljava/util/Map;

    .line 173
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/b;

    .line 174
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/b;->h(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_0
.end method

.method h(Lcom/xiaomi/d/b;)V
    .locals 2

    .prologue
    .line 179
    if-nez p1, :cond_1

    .line 205
    :cond_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Kv()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV blob chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->If()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ih()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v0

    if-nez v0, :cond_3

    .line 191
    const-string v0, "PING"

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV ping id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/xiaomi/d/f;->KV()V

    .line 201
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjR:Ljava/util/Map;

    .line 202
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/b;

    .line 203
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/b;->j(Lcom/xiaomi/d/b;)V

    goto :goto_1

    .line 194
    :cond_4
    const-string v0, "CLOSE"

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/d/f;->c(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public i(Lcom/xiaomi/d/b;)V
    .locals 7

    .prologue
    .line 209
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjG:Lcom/xiaomi/d/d;

    if-eqz v0, :cond_1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjG:Lcom/xiaomi/d/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/d/d;->g(Lcom/xiaomi/d/b;)I

    move-result v2

    .line 213
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaomi/d/f;->bfY:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v2, v2

    const/4 v4, 0x0

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 215
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/d/g;->a(Landroid/content/Context;Ljava/lang/String;JZJ)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/d/f;->bjS:Ljava/util/Map;

    .line 220
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/b;

    .line 221
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/b;->j(Lcom/xiaomi/d/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 227
    :cond_1
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "the writer is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_2
    return-void
.end method
