.class public Lcom/xiaomi/smack/d/a;
.super Ljava/lang/Object;
.source "PacketParserUtils.java"


# static fields
.field private static blU:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/d/a;->blU:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method private static G([B)V
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lcom/xiaomi/smack/d/a;->blU:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v0, :cond_0

    .line 266
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/a;->blU:Lorg/xmlpull/v1/XmlPullParser;

    .line 267
    sget-object v0, Lcom/xiaomi/smack/d/a;->blU:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaomi/smack/d/a;->blU:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 273
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;
    .locals 3

    .prologue
    .line 552
    invoke-static {}, Lcom/xiaomi/smack/c/c;->KZ()Lcom/xiaomi/smack/c/c;

    move-result-object v0

    const-string v1, "all"

    const-string v2, "xm:chat"

    .line 553
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/c/c;->aa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_0

    .line 556
    instance-of v1, v0, Lcom/xiaomi/push/service/c;

    if-eqz v1, :cond_0

    .line 557
    check-cast v0, Lcom/xiaomi/push/service/c;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/service/c;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/packet/b;
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 369
    .line 371
    const-string v0, ""

    const-string v2, "id"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    const-string v0, ""

    const-string v2, "to"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 373
    const-string v0, ""

    const-string v2, "from"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    const-string v0, ""

    const-string v2, "chid"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 375
    const-string v0, ""

    const-string v2, "type"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/smack/packet/c;->eW(Ljava/lang/String;)Lcom/xiaomi/smack/packet/c;

    move-result-object v8

    .line 377
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 378
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 379
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    const-string v10, ""

    invoke-interface {p0, v10, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 381
    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move-object v0, v3

    move-object v1, v3

    .line 387
    :goto_1
    if-nez v2, :cond_3

    .line 388
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 390
    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 391
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 392
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v11

    .line 393
    const-string v12, "error"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 394
    invoke-static {p0}, Lcom/xiaomi/smack/d/a;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;

    move-result-object v0

    :goto_2
    move v13, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v13

    :goto_3
    move v13, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v13

    .line 408
    goto :goto_1

    .line 399
    :cond_1
    new-instance v1, Lcom/xiaomi/smack/packet/b;

    invoke-direct {v1}, Lcom/xiaomi/smack/packet/b;-><init>()V

    .line 400
    invoke-static {v10, v11, p0}, Lcom/xiaomi/smack/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/xiaomi/smack/packet/b;->b(Lcom/xiaomi/smack/packet/a;)V

    goto :goto_2

    .line 403
    :cond_2
    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 404
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "iq"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 405
    const/4 v2, 0x1

    move v13, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v13

    goto :goto_3

    .line 410
    :cond_3
    if-nez v1, :cond_6

    .line 411
    sget-object v1, Lcom/xiaomi/smack/packet/c;->bkC:Lcom/xiaomi/smack/packet/c;

    if-eq v1, v8, :cond_4

    sget-object v1, Lcom/xiaomi/smack/packet/c;->bkD:Lcom/xiaomi/smack/packet/c;

    if-ne v1, v8, :cond_5

    .line 417
    :cond_4
    new-instance v0, Lcom/xiaomi/smack/d/b;

    invoke-direct {v0}, Lcom/xiaomi/smack/d/b;-><init>()V

    .line 422
    invoke-virtual {v0, v4}, Lcom/xiaomi/smack/packet/b;->setPacketID(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, v6}, Lcom/xiaomi/smack/packet/b;->setTo(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, v5}, Lcom/xiaomi/smack/packet/b;->setFrom(Ljava/lang/String;)V

    .line 425
    sget-object v1, Lcom/xiaomi/smack/packet/c;->bkF:Lcom/xiaomi/smack/packet/c;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/c;)V

    .line 426
    invoke-virtual {v0, v7}, Lcom/xiaomi/smack/packet/b;->setChannelId(Ljava/lang/String;)V

    .line 427
    new-instance v1, Lcom/xiaomi/smack/packet/h;

    sget-object v2, Lcom/xiaomi/smack/packet/i;->blx:Lcom/xiaomi/smack/packet/i;

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/packet/h;-><init>(Lcom/xiaomi/smack/packet/i;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/h;)V

    .line 428
    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/a;->f(Lcom/xiaomi/smack/packet/e;)V

    .line 429
    const-string v0, "iq usage error. send packet in packet parser."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    move-object v1, v3

    .line 452
    :goto_4
    return-object v1

    .line 434
    :cond_5
    new-instance v1, Lcom/xiaomi/smack/d/c;

    invoke-direct {v1}, Lcom/xiaomi/smack/d/c;-><init>()V

    .line 443
    :cond_6
    invoke-virtual {v1, v4}, Lcom/xiaomi/smack/packet/b;->setPacketID(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1, v5}, Lcom/xiaomi/smack/packet/b;->setTo(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1, v7}, Lcom/xiaomi/smack/packet/b;->setChannelId(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v1, v6}, Lcom/xiaomi/smack/packet/b;->setFrom(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1, v8}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/c;)V

    .line 448
    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/h;)V

    .line 450
    invoke-virtual {v1, v9}, Lcom/xiaomi/smack/packet/b;->g(Ljava/util/Map;)V

    goto :goto_4

    :cond_7
    move v13, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v13

    goto :goto_3
.end method

.method public static d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/e;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    const-string v0, "1"

    const-string v4, ""

    const-string v5, "s"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    if-eqz v0, :cond_9

    .line 82
    const-string v0, ""

    const-string v4, "chid"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    const-string v0, ""

    const-string v4, "id"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    const-string v0, ""

    const-string v4, "from"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    const-string v0, ""

    const-string v4, "to"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    const-string v0, ""

    const-string v4, "type"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1b

    .line 92
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    move-object v4, v0

    .line 95
    :goto_0
    if-nez v4, :cond_0

    .line 96
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "the channel id is wrong while receiving a encrypted message"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v3

    move-object v3, v1

    .line 99
    :cond_1
    :goto_1
    if-nez v0, :cond_8

    .line 100
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 101
    if-ne v10, v12, :cond_7

    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 103
    const-string v10, "s"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 107
    const/4 v10, 0x4

    if-eq v3, v10, :cond_3

    .line 108
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 112
    const-string v3, "5"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "6"

    .line 113
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    :cond_4
    new-instance v3, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v3}, Lcom/xiaomi/smack/packet/d;-><init>()V

    .line 115
    invoke-virtual {v3, v5}, Lcom/xiaomi/smack/packet/d;->setChannelId(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setEncrypted(Z)V

    .line 117
    invoke-virtual {v3, v7}, Lcom/xiaomi/smack/packet/d;->setFrom(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3, v8}, Lcom/xiaomi/smack/packet/d;->setTo(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3, v6}, Lcom/xiaomi/smack/packet/d;->setPacketID(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v9}, Lcom/xiaomi/smack/packet/d;->setType(Ljava/lang/String;)V

    .line 121
    new-instance v4, Lcom/xiaomi/smack/packet/a;

    const-string v5, "s"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4, v10}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3, v4}, Lcom/xiaomi/smack/packet/d;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 260
    :cond_5
    :goto_2
    return-object v3

    .line 127
    :cond_6
    iget-object v3, v4, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/xiaomi/push/service/ab;->W(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 128
    invoke-static {v3, v10}, Lcom/xiaomi/push/service/ab;->b([BLjava/lang/String;)[B

    move-result-object v3

    .line 129
    invoke-static {v3}, Lcom/xiaomi/smack/d/a;->G([B)V

    .line 130
    sget-object v3, Lcom/xiaomi/smack/d/a;->blU:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 131
    sget-object v3, Lcom/xiaomi/smack/d/a;->blU:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/xiaomi/smack/d/a;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/e;

    move-result-object v3

    goto/16 :goto_1

    .line 133
    :cond_7
    if-ne v10, v13, :cond_1

    .line 134
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "message"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v0, v2

    .line 135
    goto/16 :goto_1

    .line 139
    :cond_8
    if-nez v3, :cond_5

    .line 142
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_9
    new-instance v4, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v4}, Lcom/xiaomi/smack/packet/d;-><init>()V

    .line 146
    const-string v0, ""

    const-string v5, "id"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-nez v0, :cond_a

    const-string v0, "ID_NOT_AVAILABLE"

    :cond_a
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setPacketID(Ljava/lang/String;)V

    .line 148
    const-string v0, ""

    const-string v5, "to"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setTo(Ljava/lang/String;)V

    .line 149
    const-string v0, ""

    const-string v5, "from"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setFrom(Ljava/lang/String;)V

    .line 150
    const-string v0, ""

    const-string v5, "chid"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setChannelId(Ljava/lang/String;)V

    .line 151
    const-string v0, ""

    const-string v5, "appid"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setAppId(Ljava/lang/String;)V

    .line 154
    :try_start_0
    const-string v0, ""

    const-string v5, "transient"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_3
    :try_start_1
    const-string v5, ""

    const-string v6, "seq"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 160
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setSeq(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 165
    :cond_b
    :goto_4
    :try_start_2
    const-string v5, ""

    const-string v6, "mseq"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 167
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setMSeq(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 172
    :cond_c
    :goto_5
    :try_start_3
    const-string v5, ""

    const-string v6, "fseq"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 174
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setFSeq(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 180
    :cond_d
    :goto_6
    :try_start_4
    const-string v5, ""

    const-string v6, "status"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 182
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setStatus(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 187
    :cond_e
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "true"

    .line 188
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    .line 187
    :goto_8
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setIsTransient(Z)V

    .line 189
    const-string v0, ""

    const-string v5, "type"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setType(Ljava/lang/String;)V

    .line 190
    invoke-static {p0}, Lcom/xiaomi/smack/d/a;->i(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_13

    const-string v5, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 195
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setLanguage(Ljava/lang/String;)V

    :goto_9
    move-object v0, v1

    move v1, v3

    .line 208
    :cond_f
    :goto_a
    if-nez v1, :cond_1a

    .line 209
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 210
    if-ne v3, v12, :cond_19

    .line 211
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 214
    const-string v3, "xm"

    .line 216
    :cond_10
    const-string v6, "subject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 217
    invoke-static {p0}, Lcom/xiaomi/smack/d/a;->i(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 218
    if-nez v3, :cond_11

    .line 222
    :cond_11
    invoke-static {p0}, Lcom/xiaomi/smack/d/a;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/d;->setSubject(Ljava/lang/String;)V

    goto :goto_a

    .line 155
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    :cond_12
    move v0, v3

    .line 188
    goto :goto_8

    .line 198
    :cond_13
    invoke-static {}, Lcom/xiaomi/smack/packet/e;->getDefaultLanguage()Ljava/lang/String;

    goto :goto_9

    .line 225
    :cond_14
    const-string v6, "body"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 226
    const-string v3, ""

    const-string v5, "encode"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {p0}, Lcom/xiaomi/smack/d/a;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 229
    invoke-virtual {v4, v5, v3}, Lcom/xiaomi/smack/packet/d;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 231
    :cond_15
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setBody(Ljava/lang/String;)V

    goto :goto_a

    .line 233
    :cond_16
    const-string v6, "thread"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 234
    if-nez v0, :cond_f

    .line 235
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 237
    :cond_17
    const-string v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 238
    invoke-static {p0}, Lcom/xiaomi/smack/d/a;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/d;->a(Lcom/xiaomi/smack/packet/h;)V

    goto :goto_a

    .line 242
    :cond_18
    invoke-static {v5, v3, p0}, Lcom/xiaomi/smack/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/d;->b(Lcom/xiaomi/smack/packet/a;)V

    goto :goto_a

    .line 245
    :cond_19
    if-ne v3, v13, :cond_f

    .line 246
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "message"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v1, v2

    .line 247
    goto/16 :goto_a

    .line 252
    :cond_1a
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setThread(Ljava/lang/String;)V

    move-object v3, v4

    .line 260
    goto/16 :goto_2

    .line 184
    :catch_1
    move-exception v5

    goto/16 :goto_7

    .line 176
    :catch_2
    move-exception v5

    goto/16 :goto_6

    .line 169
    :catch_3
    move-exception v5

    goto/16 :goto_5

    .line 162
    :catch_4
    move-exception v5

    goto/16 :goto_4

    :cond_1b
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 285
    const-string v0, ""

    .line 286
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 287
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 288
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    return-object v0
.end method

.method public static f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/Presence;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 301
    sget-object v0, Lcom/xiaomi/smack/packet/Presence$Type;->bli:Lcom/xiaomi/smack/packet/Presence$Type;

    .line 302
    const-string v2, ""

    const-string v3, "type"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/smack/packet/Presence$Type;->valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 310
    :cond_0
    :goto_0
    new-instance v2, Lcom/xiaomi/smack/packet/Presence;

    invoke-direct {v2, v0}, Lcom/xiaomi/smack/packet/Presence;-><init>(Lcom/xiaomi/smack/packet/Presence$Type;)V

    .line 311
    const-string v0, ""

    const-string v3, "to"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 312
    const-string v0, ""

    const-string v3, "from"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 313
    const-string v0, ""

    const-string v3, "chid"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/Presence;->setChannelId(Ljava/lang/String;)V

    .line 314
    const-string v0, ""

    const-string v3, "id"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    if-nez v0, :cond_1

    const-string v0, "ID_NOT_AVAILABLE"

    :cond_1
    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    move v0, v1

    .line 319
    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 320
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 321
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 322
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 324
    const-string v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 325
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :catch_0
    move-exception v3

    .line 307
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found invalid presence type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_3
    const-string v5, "priority"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 328
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 329
    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/Presence;->setPriority(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 330
    :catch_1
    move-exception v3

    goto :goto_1

    .line 332
    :catch_2
    move-exception v3

    .line 335
    invoke-virtual {v2, v1}, Lcom/xiaomi/smack/packet/Presence;->setPriority(I)V

    goto :goto_1

    .line 337
    :cond_4
    const-string v5, "show"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 338
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 340
    :try_start_2
    invoke-static {v3}, Lcom/xiaomi/smack/packet/Presence$Mode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Mode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/smack/packet/Presence;->a(Lcom/xiaomi/smack/packet/Presence$Mode;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 341
    :catch_3
    move-exception v4

    .line 342
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found invalid presence mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    :cond_5
    const-string v5, "error"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 345
    invoke-static {p0}, Lcom/xiaomi/smack/d/a;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/Presence;->a(Lcom/xiaomi/smack/packet/h;)V

    goto/16 :goto_1

    .line 349
    :cond_6
    invoke-static {v3, v4, p0}, Lcom/xiaomi/smack/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/Presence;->b(Lcom/xiaomi/smack/packet/a;)V

    goto/16 :goto_1

    .line 352
    :cond_7
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 353
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "presence"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 358
    :cond_8
    return-object v2
.end method

.method public static g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/g;
    .locals 4

    .prologue
    .line 464
    const/4 v1, 0x0

    .line 465
    const/4 v0, 0x0

    .line 466
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 467
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 469
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 470
    new-instance v1, Lcom/xiaomi/smack/packet/g;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/packet/g;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 472
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    const/4 v0, 0x1

    goto :goto_0

    .line 477
    :cond_2
    return-object v1
.end method

.method public static h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 488
    const-string v0, "urn:ietf:params:xml:ns:xmpp-stanzas"

    .line 489
    const-string v0, "-1"

    .line 494
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    move-object v7, v2

    move-object v8, v0

    move v0, v1

    .line 497
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 498
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 499
    const-string v4, ""

    const-string v5, "code"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 501
    :goto_1
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "type"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 502
    const-string v4, ""

    const-string v7, "type"

    invoke-interface {p0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 504
    :goto_2
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "reason"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 505
    const-string v3, ""

    const-string v7, "reason"

    invoke-interface {p0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v7, v4

    move-object v8, v5

    goto :goto_0

    :cond_1
    move v0, v1

    move-object v4, v2

    move-object v5, v2

    .line 510
    :cond_2
    :goto_3
    if-nez v0, :cond_7

    .line 511
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 512
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 513
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 518
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 520
    const-string v9, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v4, v1

    .line 521
    goto :goto_3

    .line 523
    :cond_4
    invoke-static {v1, v2, p0}, Lcom/xiaomi/smack/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 526
    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 527
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    const/4 v0, 0x1

    goto :goto_3

    .line 530
    :cond_6
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 531
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 535
    :cond_7
    if-nez v7, :cond_8

    const-string v2, "cancel"

    .line 536
    :goto_4
    new-instance v0, Lcom/xiaomi/smack/packet/h;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/smack/packet/h;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_8
    move-object v2, v7

    .line 535
    goto :goto_4

    :cond_9
    move-object v4, v7

    goto :goto_2

    :cond_a
    move-object v5, v8

    goto/16 :goto_1
.end method

.method private static i(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 564
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 565
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 566
    const-string v2, "xml:lang"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lang"

    .line 567
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "xml"

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    :cond_0
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    :goto_1
    return-object v0

    .line 564
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
