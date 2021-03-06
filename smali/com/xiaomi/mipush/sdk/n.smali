.class public Lcom/xiaomi/mipush/sdk/n;
.super Ljava/lang/Object;
.source "PushMessageProcessor.java"


# static fields
.field private static bav:Lcom/xiaomi/mipush/sdk/n;

.field private static bax:Ljava/util/Queue;

.field private static lock:Ljava/lang/Object;


# instance fields
.field private baw:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mipush/sdk/n;->bav:Lcom/xiaomi/mipush/sdk/n;

    .line 620
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/n;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 76
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    .line 78
    :cond_0
    return-void
.end method

.method private GT()V
    .locals 8

    .prologue
    .line 571
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 573
    const-string v1, "last_reinitialize"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 574
    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bqK:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-static {v1, v4}, Lcom/xiaomi/mipush/sdk/h;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/RegistrationReason;)V

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_reinitialize"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 578
    :cond_0
    return-void
.end method

.method private static X(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 623
    sget-object v2, Lcom/xiaomi/mipush/sdk/n;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 624
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->dH(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 625
    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->bax:Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 626
    const-string v1, "pref_msg_ids"

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 628
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/xiaomi/mipush/sdk/n;->bax:Ljava/util/Queue;

    .line 629
    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 630
    sget-object v7, Lcom/xiaomi/mipush/sdk/n;->bax:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :cond_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->bax:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    const/4 v0, 0x1

    monitor-exit v2

    .line 644
    :goto_1
    return v0

    .line 636
    :cond_1
    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->bax:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->bax:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v4, 0x19

    if-le v1, v4, :cond_2

    .line 638
    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->bax:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 640
    :cond_2
    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->bax:Ljava/util/Queue;

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/xiaomi/channel/commonutils/g/d;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 642
    const-string v4, "pref_msg_ids"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 643
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    monitor-exit v2

    goto :goto_1

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .locals 12

    .prologue
    const/4 v2, -0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 262
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lorg/apache/thrift/TBase;

    move-result-object v0

    .line 266
    if-nez v0, :cond_1

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiving an un-recognized message. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 548
    :cond_0
    :goto_0
    return-object v5

    .line 270
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive a message."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/DecryptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->MW()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v1

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processing a message, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 283
    sget-object v3, Lcom/xiaomi/mipush/sdk/o;->bas:[I

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->dH(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    .line 314
    const-string v0, "receive a message in pause state. drop it"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    goto :goto_0

    .line 276
    :catch_1
    move-exception v0

    .line 277
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 278
    const-string v0, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object v4, v0

    .line 285
    check-cast v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    .line 286
    iget-wide v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->dH(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    iget-object v1, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/a;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_2
    iget-object v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :goto_1
    const-string v0, "register"

    iget-wide v2, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v5

    .line 298
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/q;->dZ(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/q;->Hc()V

    goto/16 :goto_0

    .line 302
    :pswitch_2
    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    .line 303
    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->dH(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->clear()V

    .line 305
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/h;->dM(Landroid/content/Context;)V

    .line 307
    :cond_3
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->GR()V

    goto/16 :goto_0

    .line 317
    :cond_4
    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 318
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->ND()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v3

    .line 319
    if-nez v3, :cond_5

    .line 320
    const-string v0, "receive an empty message without push content, drop it"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_5
    if-eqz p2, :cond_6

    .line 326
    invoke-static {p1}, Lcom/xiaomi/push/service/F;->g(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 327
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v4

    iget-object v6, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v2, v4, v6, v7}, Lcom/xiaomi/mipush/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_6
    :goto_2
    if-nez p2, :cond_7

    .line 335
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    .line 336
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/h;->W(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-gez v1, :cond_9

    .line 337
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/h;->O(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    :cond_7
    :goto_3
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v1, :cond_2a

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 347
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    const-string v2, "jobkey"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 349
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 350
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 352
    :goto_5
    if-nez p2, :cond_a

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/n;->X(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop a duplicate message, key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 392
    :goto_6
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 394
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    goto/16 :goto_0

    .line 329
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v4, v6}, Lcom/xiaomi/mipush/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 338
    :cond_9
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    .line 339
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/h;->U(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-gez v1, :cond_7

    .line 340
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/h;->S(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 355
    :cond_a
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v4

    if-nez v4, :cond_b

    if-nez p2, :cond_b

    .line 358
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/F;->f(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 359
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/xiaomi/push/service/F;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/push/service/H;

    goto/16 :goto_0

    .line 362
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive a message, msgid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", jobkey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 363
    if-eqz p2, :cond_28

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 364
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v2

    const-string v4, "notify_effect"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 365
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v2

    .line 366
    const-string v0, "notify_effect"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    invoke-static {p1}, Lcom/xiaomi/push/service/F;->g(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 369
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    .line 370
    if-nez v0, :cond_c

    .line 371
    const-string v0, "Getting Intent fail from ignore reg message. "

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :cond_c
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->Md()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 376
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 380
    :cond_e
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_0

    .line 382
    sget-object v3, Lcom/xiaomi/push/service/V;->bgh:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 383
    const-string v0, "key_message"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 385
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    move-object v6, v0

    .line 400
    check-cast v6, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    .line 401
    iget-wide v0, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_10

    .line 402
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/h;->S(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    :cond_10
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :goto_7
    const-string v0, "subscribe-topic"

    iget-wide v2, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    iget-object v4, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    .line 411
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getCategory()Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_4
    move-object v6, v0

    .line 415
    check-cast v6, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    .line 416
    iget-wide v0, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_11

    .line 417
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/h;->T(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    :cond_11
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :goto_8
    const-string v0, "unsubscibe-topic"

    iget-wide v2, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    iget-object v4, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    .line 426
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getCategory()Ljava/lang/String;

    move-result-object v5

    .line 424
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_5
    move-object v5, v0

    .line 430
    check-cast v5, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    .line 431
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->MS()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->MV()Ljava/util/List;

    move-result-object v3

    .line 433
    iget-wide v6, v5, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    cmp-long v1, v6, v10

    if-nez v1, :cond_17

    .line 434
    const-string v1, "accept-time"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v3, :cond_13

    .line 435
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v9, :cond_13

    .line 436
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/xiaomi/mipush/sdk/h;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "00:00"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "00:00"

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 438
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->dH(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/xiaomi/mipush/sdk/a;->setPaused(Z)V

    .line 442
    :goto_9
    const-string v1, "GMT+08"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/n;->a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 457
    :goto_a
    iget-wide v2, v5, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    iget-object v4, v5, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    .line 458
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->getCategory()Ljava/lang/String;

    move-result-object v5

    .line 457
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v5

    goto/16 :goto_0

    .line 440
    :cond_12
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->dH(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/xiaomi/mipush/sdk/a;->setPaused(Z)V

    goto :goto_9

    .line 443
    :cond_13
    const-string v1, "set-alias"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v3, :cond_14

    .line 444
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 445
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/h;->O(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_a

    .line 446
    :cond_14
    const-string v1, "unset-alias"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v3, :cond_15

    .line 447
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 448
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/h;->P(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_a

    .line 449
    :cond_15
    const-string v1, "set-account"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v3, :cond_16

    .line 450
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 451
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/h;->Q(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_a

    .line 452
    :cond_16
    const-string v1, "unset-account"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v3, :cond_17

    .line 453
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 454
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/h;->R(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    move-object v1, v3

    goto/16 :goto_a

    .line 462
    :pswitch_6
    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 463
    const-string v1, "registration id expired"

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 464
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bqJ:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/h;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/RegistrationReason;)V

    goto/16 :goto_0

    .line 465
    :cond_18
    const-string v1, "client_info_update_ok"

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 467
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "app_version"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->dH(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/a;->dp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 471
    :cond_19
    const-string v1, "awake_app"

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 472
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "packages"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v1, "packages"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/h;->b(Landroid/content/Context;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    :cond_1a
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpi:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 477
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;-><init>()V

    .line 480
    :try_start_1
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Nm()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 482
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/O;->eo(Landroid/content/Context;)Lcom/xiaomi/push/service/O;

    move-result-object v0

    .line 483
    invoke-static {v0, v1}, Lcom/xiaomi/push/service/P;->a(Lcom/xiaomi/push/service/O;Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 484
    :catch_2
    move-exception v0

    .line 485
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 487
    :cond_1b
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpj:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 488
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;-><init>()V

    .line 491
    :try_start_2
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Nm()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 493
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/O;->eo(Landroid/content/Context;)Lcom/xiaomi/push/service/O;

    move-result-object v0

    .line 494
    invoke-static {v0, v1}, Lcom/xiaomi/push/service/P;->a(Lcom/xiaomi/push/service/O;Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 495
    :catch_3
    move-exception v0

    .line 496
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 498
    :cond_1c
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpr:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 499
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/t;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V

    goto/16 :goto_0

    .line 500
    :cond_1d
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bps:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 501
    const-string v0, "receive force sync notification"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/xiaomi/mipush/sdk/t;->u(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 503
    :cond_1e
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpx:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 506
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/d;->dI(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/d;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V

    goto/16 :goto_0

    .line 507
    :cond_1f
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpz:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 509
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/d;->dI(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/d;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V

    goto/16 :goto_0

    .line 510
    :cond_20
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpB:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 512
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d;->dI(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/d;->GJ()V

    .line 513
    const-string v0, "receive geo sync notification"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :cond_21
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpD:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    const-string v1, ""

    .line 517
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/service/V;->bgq:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 519
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/service/V;->bgq:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 520
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 522
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v1

    .line 529
    :goto_b
    const/4 v2, -0x1

    if-lt v1, v2, :cond_22

    .line 530
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/h;->H(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 523
    :catch_4
    move-exception v1

    .line 524
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v1, v2

    .line 525
    goto :goto_b

    .line 532
    :cond_22
    const-string v1, ""

    .line 533
    const-string v2, ""

    .line 534
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/service/V;->bgo:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 535
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/service/V;->bgo:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 537
    :cond_23
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/service/V;->bgp:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 538
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/V;->bgp:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 540
    :goto_c
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mipush/sdk/h;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    move-object v0, v2

    goto :goto_c

    :cond_25
    move v1, v2

    goto :goto_b

    :cond_26
    move-object v1, v5

    goto/16 :goto_8

    :cond_27
    move-object v1, v5

    goto/16 :goto_7

    :cond_28
    move-object v5, v1

    goto/16 :goto_6

    :cond_29
    move-object v2, v1

    goto/16 :goto_5

    :cond_2a
    move-object v1, v5

    goto/16 :goto_4

    :cond_2b
    move-object v1, v5

    goto/16 :goto_1

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 216
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lorg/apache/thrift/TBase;

    move-result-object v0

    .line 219
    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message arrived: receiving an un-recognized message. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-object v1

    .line 223
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message arrived: receive a message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/DecryptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->MW()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v2

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message arrived: processing an arrived message, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 236
    sget-object v3, Lcom/xiaomi/mipush/sdk/o;->bas:[I

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 238
    :pswitch_0
    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 239
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->ND()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v2

    .line 240
    if-nez v2, :cond_1

    .line 241
    const-string v0, "message arrived: receive an empty message without push content, drop it"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 227
    const-string v0, "message arrived: receive a message but decrypt failed. report when click."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    .line 230
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 231
    const-string v0, "message arrived: receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 246
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    const-string v3, "jobkey"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v0

    .line 249
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->cg(Z)V

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message arrived: receive a message, msgid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jobkey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    move-object v1, v0

    .line 251
    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 581
    const-string v0, "receive a message but decrypt failed. report now."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 582
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 583
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpp:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fq(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 584
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fp(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 585
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fr(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 586
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 587
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "regid"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/h;->dQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/q;->dZ(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/q;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmK:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/xiaomi/mipush/sdk/q;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 589
    return-void
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 4

    .prologue
    .line 605
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 606
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    .line 607
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->fd(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 608
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->fc(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 609
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->ND()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMessage;->Mf()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->P(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 610
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 611
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->fe(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 613
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 614
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ff(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 616
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/xiaomi/xmpush/thrift/a;->d(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->c(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 617
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/q;->dZ(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/q;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ActionType;->bmH:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v2, v1, v3, v0}, Lcom/xiaomi/mipush/sdk/q;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 618
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 649
    if-eqz p2, :cond_0

    const-string v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-object v1

    .line 652
    :cond_1
    const-string v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 654
    sget-object v2, Lcom/xiaomi/push/service/V;->bgf:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 705
    :goto_1
    if-eqz v0, :cond_0

    .line 706
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 710
    if-eqz v2, :cond_0

    move-object v1, v0

    .line 711
    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 660
    goto :goto_1

    .line 661
    :cond_2
    sget-object v2, Lcom/xiaomi/push/service/V;->bgg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 662
    const-string v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    const-string v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 664
    if-eqz v0, :cond_a

    .line 666
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .line 667
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 668
    :catch_1
    move-exception v2

    .line 669
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 672
    :cond_3
    const-string v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 673
    const-string v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 674
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 675
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 677
    :try_start_4
    const-string v0, "intent_flag"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    const-string v0, "intent_flag"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    move-object v0, v2

    .line 683
    goto/16 :goto_1

    .line 680
    :catch_2
    move-exception v0

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause by intent_flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 684
    :cond_5
    sget-object v2, Lcom/xiaomi/push/service/V;->bgh:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 686
    const-string v0, "web_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 687
    if-eqz v0, :cond_9

    .line 688
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 689
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 693
    :goto_4
    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 695
    const-string v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 696
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 697
    :try_start_6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 699
    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 700
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 713
    :catch_4
    move-exception v0

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 699
    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 668
    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    move-object v2, v0

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private b(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 5

    .prologue
    .line 592
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 593
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    .line 594
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->fd(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 595
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->fc(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 596
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Mk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->P(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 597
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->fe(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/a;->d(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->c(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 601
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/q;->dZ(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/q;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmH:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/q;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 602
    return-void
.end method

.method public static dY(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->bav:Lcom/xiaomi/mipush/sdk/n;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/xiaomi/mipush/sdk/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/n;->bav:Lcom/xiaomi/mipush/sdk/n;

    .line 70
    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->bav:Lcom/xiaomi/mipush/sdk/n;

    return-object v0
.end method


# virtual methods
.method public H(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive an intent from server, action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 83
    const-string v0, "mrt"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    const-string v3, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 89
    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 90
    const-string v3, "mipush_notified"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 91
    if-nez v2, :cond_1

    .line 92
    const-string v0, "receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 208
    :goto_0
    return-object v0

    .line 95
    :cond_1
    new-instance v4, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 97
    :try_start_0
    invoke-static {v4, v2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 99
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/a;->dH(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v5

    .line 100
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v6

    .line 101
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->MW()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/xmpush/thrift/ActionType;->bmG:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v7, v8, :cond_3

    if-eqz v6, :cond_3

    .line 102
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->isPaused()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v3, :cond_3

    .line 104
    if-eqz v6, :cond_2

    .line 105
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v7

    const-string v8, "mrt"

    invoke-virtual {v7, v8, v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ac(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nf()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    const-string v7, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ac(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_2
    invoke-direct {p0, v4}, Lcom/xiaomi/mipush/sdk/n;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 112
    :cond_3
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->MW()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v0

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ActionType;->bmG:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v7, :cond_6

    .line 113
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->MY()Z

    move-result v0

    if-nez v0, :cond_6

    .line 114
    invoke-static {v4}, Lcom/xiaomi/push/service/F;->g(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 115
    const-string v2, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 117
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz v6, :cond_4

    .line 118
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    .line 115
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    move-object v0, v1

    .line 119
    goto :goto_0

    .line 118
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 122
    :cond_5
    if-eqz v3, :cond_7

    .line 123
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v7, "notify_effect"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    :cond_6
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->GF()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v6, Lcom/xiaomi/xmpush/thrift/ActionType;->bmC:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-eq v0, v6, :cond_a

    .line 138
    invoke-static {v4}, Lcom/xiaomi/push/service/F;->g(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    invoke-direct {p0, v4, v3, v2}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;

    move-result-object v0

    goto/16 :goto_0

    .line 128
    :cond_7
    const-string v0, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 130
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 131
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 128
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    move-object v0, v1

    .line 132
    goto/16 :goto_0

    .line 141
    :cond_8
    const-string v0, "receive message without registration. need re-register!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/n;->GT()V

    :cond_9
    :goto_2
    move-object v0, v1

    .line 208
    goto/16 :goto_0

    .line 145
    :cond_a
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->GF()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->GG()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmD:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v2, :cond_b

    .line 147
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->clear()V

    .line 148
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/h;->dM(Landroid/content/Context;)V

    .line 149
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->GR()V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 151
    :cond_b
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/h;->dO(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 159
    :catch_1
    move-exception v0

    .line 160
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 154
    :cond_c
    :try_start_2
    invoke-direct {p0, v4, v3, v2}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 162
    :cond_d
    const-string v0, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 163
    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    .line 165
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 167
    :try_start_3
    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 168
    if-eqz v2, :cond_e

    .line 169
    invoke-static {v1, v2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_4

    .line 174
    :cond_e
    :goto_3
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->MW()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommand(Ljava/lang/String;)V

    .line 175
    const-string v1, "mipush_error_code"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->D(J)V

    .line 176
    const-string v1, "mipush_error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setReason(Ljava/lang/String;)V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a error message. code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mipush_error_code"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mipush_error_msg"

    .line 178
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_f
    const-string v0, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 181
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 182
    if-nez v0, :cond_10

    .line 183
    const-string v0, "message arrived: receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 184
    goto/16 :goto_0

    .line 186
    :cond_10
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 188
    :try_start_4
    invoke-static {v2, v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 189
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/n;->baw:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/a;->dH(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    .line 191
    invoke-static {v2}, Lcom/xiaomi/push/service/F;->g(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 192
    const-string v0, "message arrived: receive ignore reg message, ignore!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/thrift/TException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 202
    :catch_2
    move-exception v0

    .line 203
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 193
    :cond_11
    :try_start_5
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->GF()Z

    move-result v4

    if-nez v4, :cond_12

    .line 194
    const-string v0, "message arrived: receive message without registration. need unregister or re-register!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/thrift/TException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 204
    :catch_3
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 196
    :cond_12
    :try_start_6
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->GF()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->GG()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 197
    const-string v0, "message arrived: app info is invalidated"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 199
    :cond_13
    invoke-direct {p0, v2, v0}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    :try_end_6
    .catch Lorg/apache/thrift/TException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :catch_4
    move-exception v2

    goto/16 :goto_3
.end method

.method public a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;
    .locals 16

    .prologue
    .line 552
    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    :goto_0
    return-object p3

    .line 555
    :cond_0
    const-wide/16 v4, 0x5a0

    .line 556
    invoke-virtual/range {p1 .. p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    int-to-long v6, v2

    .line 557
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 558
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 559
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 560
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 561
    const-wide/16 v14, 0x3c

    mul-long/2addr v8, v14

    add-long/2addr v8, v10

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    rem-long/2addr v8, v4

    .line 562
    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v12

    add-long/2addr v2, v10

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    rem-long/2addr v2, v4

    .line 563
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    .line 564
    const-string v4, "%1$02d:%2$02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    const-string v4, "%1$02d:%2$02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v8, 0x3c

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
