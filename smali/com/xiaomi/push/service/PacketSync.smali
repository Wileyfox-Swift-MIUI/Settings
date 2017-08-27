.class public Lcom/xiaomi/push/service/PacketSync;
.super Ljava/lang/Object;
.source "PacketSync.java"


# instance fields
.field private beL:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    .line 43
    return-void
.end method

.method private a(Lcom/xiaomi/smack/packet/a;)V
    .locals 4

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/a;->getText()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/xiaomi/c/f;->Hs()Lcom/xiaomi/c/f;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/smack/c;->KP()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/c/f;->g(Ljava/lang/String;Z)Lcom/xiaomi/c/b;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 283
    invoke-virtual {v1, v0}, Lcom/xiaomi/c/b;->l([Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 285
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->cq(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method private e(Lcom/xiaomi/d/b;)V
    .locals 7

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Kw()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getSerializedSize()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/d/g;->a(Landroid/content/Context;Ljava/lang/String;JZJ)V

    .line 275
    :cond_0
    return-void
.end method

.method private e(Lcom/xiaomi/smack/packet/e;)V
    .locals 7

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getTo()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->eY(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/d/g;->a(Landroid/content/Context;Ljava/lang/String;JZJ)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/xiaomi/d/b;)V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->e(Lcom/xiaomi/d/b;)V

    .line 110
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->d(Lcom/xiaomi/d/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Blob chid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packetid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/xiaomi/d/b;)V
    .locals 11

    .prologue
    const/4 v3, 0x7

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 120
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 174
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 175
    const-string v1, "SECMSG"

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 176
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Kv()Z

    move-result v0

    if-nez v0, :cond_8

    .line 177
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->JZ()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1, v6, p1}, Lcom/xiaomi/push/service/b;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/d/b;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    const-string v1, "PING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPayload()[B

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 126
    invoke-static {v0}, Lcom/xiaomi/push/b/m;->B([B)Lcom/xiaomi/push/b/m;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/xiaomi/push/b/m;->IT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-static {}, Lcom/xiaomi/push/service/ae;->JH()Lcom/xiaomi/push/service/ae;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/b/m;->IU()Lcom/xiaomi/push/b/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/ae;->e(Lcom/xiaomi/push/b/e;)V

    .line 132
    :cond_1
    const-string v0, "1"

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->JT()V

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {}, Lcom/xiaomi/e/j;->Lo()V

    goto :goto_0

    .line 138
    :cond_3
    const-string v1, "SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    const-string v0, "CONF"

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/e;->v([B)Lcom/xiaomi/push/b/e;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/xiaomi/push/service/ae;->JH()Lcom/xiaomi/push/service/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/ae;->e(Lcom/xiaomi/push/b/e;)V

    goto :goto_0

    .line 142
    :cond_4
    const-string v0, "U"

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/n;->C([B)Lcom/xiaomi/push/b/n;

    move-result-object v6

    .line 144
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->ed(Landroid/content/Context;)Lcom/xiaomi/push/a/b;

    move-result-object v0

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->getToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    .line 145
    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->getStart()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->getEnd()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->Jh()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->Jf()Z

    move-result v6

    .line 144
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V

    .line 147
    new-instance v0, Lcom/xiaomi/d/b;

    invoke-direct {v0}, Lcom/xiaomi/d/b;-><init>()V

    .line 148
    invoke-virtual {v0, v10}, Lcom/xiaomi/d/b;->fr(I)V

    .line 149
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UCA"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/d/b;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/b;->setPacketID(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/ad;

    iget-object v3, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/d/b;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    goto/16 :goto_0

    .line 152
    :cond_5
    const-string v0, "P"

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/l;->A([B)Lcom/xiaomi/push/b/l;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/xiaomi/d/b;

    invoke-direct {v1}, Lcom/xiaomi/d/b;-><init>()V

    .line 156
    invoke-virtual {v1, v10}, Lcom/xiaomi/d/b;->fr(I)V

    .line 157
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PCA"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/d/b;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/d/b;->setPacketID(Ljava/lang/String;)V

    .line 159
    new-instance v2, Lcom/xiaomi/push/b/l;

    invoke-direct {v2}, Lcom/xiaomi/push/b/l;-><init>()V

    .line 160
    invoke-virtual {v0}, Lcom/xiaomi/push/b/l;->Jb()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 161
    invoke-virtual {v0}, Lcom/xiaomi/push/b/l;->Ja()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/l;->c(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/l;

    .line 163
    :cond_6
    invoke-virtual {v2}, Lcom/xiaomi/push/b/l;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/xiaomi/d/b;->d([BLjava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/ad;

    iget-object v3, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, v3, v1}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/d/b;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACK msgP: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_7
    const-string v0, "NOTIFY"

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/k;->z([B)Lcom/xiaomi/push/b/k;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify by server err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/b/k;->If()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/b/k;->Ih()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recv SECMSG errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->If()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ih()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_9
    const-string v1, "BIND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 182
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/g;->w([B)Lcom/xiaomi/push/b/g;

    move-result-object v7

    .line 184
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Kw()Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->getResult()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: channel bind succeeded, chid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgd:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    move v3, v10

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :cond_a
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->IC()Ljava/lang/String;

    move-result-object v5

    .line 197
    const-string v1, "auth"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 199
    const-string v1, "invalid-sig"

    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->IE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: bind error invalid-sig token = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/push/service/S;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sec = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 203
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->biz:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-static {v10, v1, v2, v4, v10}, Lcom/xiaomi/e/j;->a(IIILjava/lang/String;I)V

    .line 205
    :cond_b
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v3, 0x5

    .line 206
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->IE()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/PushClientsManager;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_c
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind failed, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->IE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_d
    const-string v1, "cancel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 210
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 211
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->IE()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/PushClientsManager;->U(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_e
    const-string v1, "wait"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 215
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/S;)V

    .line 216
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 217
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->IE()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_f
    const-string v1, "KICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/j;->y([B)Lcom/xiaomi/push/b/j;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Kw()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v0}, Lcom/xiaomi/push/b/j;->getType()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-virtual {v0}, Lcom/xiaomi/push/b/j;->getReason()Ljava/lang/String;

    move-result-object v4

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kicked by server, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 230
    const-string v0, "wait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/S;)V

    .line 237
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    move v2, v7

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    move-object v1, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/xiaomi/push/service/PushClientsManager;->U(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/xiaomi/smack/packet/e;)V
    .locals 12

    .prologue
    const/4 v2, 0x3

    .line 46
    const-string v0, "5"

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const-string v7, "1"

    .line 55
    invoke-virtual {p1, v7}, Lcom/xiaomi/smack/packet/e;->setChannelId(Ljava/lang/String;)V

    .line 59
    :cond_1
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received wrong packet with chid = 0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 63
    :cond_2
    instance-of v0, p1, Lcom/xiaomi/smack/packet/b;

    if-eqz v0, :cond_5

    .line 64
    const-string v0, "kick"

    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/e;->eX(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_6

    .line 66
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getTo()Ljava/lang/String;

    move-result-object v8

    .line 68
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kicked by server, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 72
    const-string v0, "wait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 78
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/S;)V

    .line 79
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/S;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_3
    :goto_0
    return-void

    .line 84
    :cond_4
    iget-object v6, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    move v9, v2

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/xiaomi/push/service/PushClientsManager;->U(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_5
    instance-of v0, p1, Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 90
    check-cast v0, Lcom/xiaomi/smack/packet/d;

    .line 91
    const-string v1, "redir"

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    const-string v1, "hosts"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/d;->eX(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/PacketSync;->a(Lcom/xiaomi/smack/packet/a;)V

    goto :goto_0

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->JZ()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->beL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1, v7, p1}, Lcom/xiaomi/push/service/b;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/smack/packet/e;)V

    goto :goto_0
.end method
