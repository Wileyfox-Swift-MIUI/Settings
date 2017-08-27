.class public Lcom/xiaomi/push/service/ak;
.super Ljava/lang/Object;
.source "TinyDataManager.java"


# static fields
.field private static bgO:Lcom/xiaomi/push/service/ak;

.field private static bgP:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private bgQ:Ljava/util/Map;

.field private final bgR:Ljava/util/ArrayList;

.field private channel:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/xiaomi/push/service/ak;

    invoke-direct {v0}, Lcom/xiaomi/push/service/ak;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/ak;->bgO:Lcom/xiaomi/push/service/ak;

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/ak;->bgP:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/ak;->bgQ:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/ak;->bgR:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public static JM()Lcom/xiaomi/push/service/ak;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/xiaomi/push/service/ak;->bgO:Lcom/xiaomi/push/service/ak;

    return-object v0
.end method

.method private JO()Lcom/xiaomi/push/service/an;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->bgQ:Ljava/util/Map;

    const-string v1, "UPLOADER_FROM_MIPUSHCLIENT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/an;

    .line 204
    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->bgQ:Ljava/util/Map;

    const-string v1, "UPLOADER_FROM_XMPUSHSERVICE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/an;

    .line 208
    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/ak;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/ak;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xiaomi/push/service/ak;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/ak;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ak;->eL(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/push/service/ak;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->bgQ:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/xiaomi/push/service/aj;)V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Lcom/xiaomi/push/service/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/aq;-><init>(Lcom/xiaomi/push/service/ak;Lcom/xiaomi/push/service/al;)V

    .line 271
    iput-object p1, v0, Lcom/xiaomi/push/service/aq;->bgV:Lcom/xiaomi/push/service/aj;

    .line 272
    sget-object v1, Lcom/xiaomi/push/service/ak;->bgP:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/push/service/ak;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->channel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/push/service/ak;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->bgR:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/push/service/ak;)Lcom/xiaomi/push/service/an;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/xiaomi/push/service/ak;->JO()Lcom/xiaomi/push/service/an;

    move-result-object v0

    return-object v0
.end method

.method private eL(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TinyDataManager is checking and uploading tiny data, reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the size of pending list is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/ak;->bgR:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/xiaomi/push/service/ak;->JN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/push/service/ak;->JO()Lcom/xiaomi/push/service/an;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_0

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->bgR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/aj;

    .line 229
    iget-object v4, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-interface {v1, v0}, Lcom/xiaomi/push/service/an;->a(Lcom/xiaomi/push/service/aj;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    invoke-interface {v1, v2}, Lcom/xiaomi/push/service/an;->k(Ljava/util/ArrayList;)V

    .line 237
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/aj;

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uploaded by TinyDataManager, reason is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/xiaomi/push/service/ak;->bgR:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 243
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public JN()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/an;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string v0, "[TinyDataManager]: please do not add null uploader to TinyDataManager."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "[TinyDataManager]: can not add a provider from unkown resource."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Lcom/xiaomi/push/service/am;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/am;-><init>(Lcom/xiaomi/push/service/ak;)V

    .line 122
    iput-object p2, v0, Lcom/xiaomi/push/service/am;->bgT:Ljava/lang/String;

    .line 123
    iput-object p1, v0, Lcom/xiaomi/push/service/am;->bgS:Lcom/xiaomi/push/service/an;

    .line 124
    sget-object v1, Lcom/xiaomi/push/service/ak;->bgP:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 8

    .prologue
    .line 331
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/push/service/ak;->a(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Z
    .locals 4

    .prologue
    .line 248
    invoke-static {p2, p3, p4, p5, p6}, Lcom/xiaomi/push/service/ah;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    .line 251
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/aj;

    invoke-direct {v0}, Lcom/xiaomi/push/service/aj;-><init>()V

    .line 252
    iput p1, v0, Lcom/xiaomi/push/service/aj;->bgM:I

    .line 258
    iget-object v1, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    iput-object p2, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    .line 259
    iget-object v1, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    iput-object p3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    .line 260
    iget-object v1, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    iput-wide p4, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    .line 261
    iget-object v1, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    iput-object p6, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    .line 262
    iget-object v1, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    iput-boolean p7, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    .line 263
    iget-object v1, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    .line 265
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ak;->b(Lcom/xiaomi/push/service/aj;)V

    .line 266
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 7

    .prologue
    .line 327
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/service/ak;->a(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public eK(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/xiaomi/push/service/ak;->bgP:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/push/service/ap;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/push/service/ap;-><init>(Lcom/xiaomi/push/service/ak;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const-string v0, "[TinyDataManager]:context is null, TinyDataManager.init(Context, TinyDataUploader) failed."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/ao;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ao;-><init>(Lcom/xiaomi/push/service/ak;)V

    .line 85
    invoke-static {v0, p1}, Lcom/xiaomi/push/service/ao;->a(Lcom/xiaomi/push/service/ao;Landroid/content/Context;)Landroid/content/Context;

    .line 86
    sget-object v1, Lcom/xiaomi/push/service/ak;->bgP:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
