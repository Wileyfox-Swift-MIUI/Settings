.class public Lcom/xiaomi/push/service/ah;
.super Ljava/lang/Object;
.source "TinyDataHelper.java"


# static fields
.field private static bgL:Ljava/util/concurrent/atomic/AtomicLong;

.field private static prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/g/d;->eI(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/ah;->prefix:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/xiaomi/push/service/ah;->bgL:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static JL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/push/service/ah;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/ah;->bgL:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 4

    .prologue
    const/16 v3, 0x2800

    const/4 v0, 0x1

    .line 141
    if-nez p0, :cond_0

    .line 142
    const-string v1, "Value of parameter category can not be null."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 165
    :goto_0
    return v0

    .line 146
    :cond_0
    if-nez p1, :cond_1

    .line 147
    const-string v1, "Value of parameter Name can not be null"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/g/d;->dm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    const-string v1, "Value of parameter catetory invalid, can only contain ascii char."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/g/d;->dm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    const-string v1, "Value of parameter name invalid, can only contain ascii char."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter data is too large("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), max size for data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x7800

    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 84
    const-string v1, "requests can not be null in TinyDataHelper.transToThriftObj()."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const-string v1, "requests.length is 0 in TinyDataHelper.transToThriftObj()."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;-><init>()V

    move v1, v2

    move v3, v2

    move-object v4, v0

    .line 97
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 98
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/aj;

    .line 100
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    if-nez v6, :cond_3

    .line 97
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 104
    :cond_3
    iget-object v6, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-static {v6}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v6

    array-length v6, v6

    .line 105
    if-le v6, v8, :cond_4

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TinyData is too big, ignore upload request."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :cond_4
    add-int v7, v3, v6

    if-le v7, v8, :cond_5

    .line 112
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/push/service/ah;->JL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {v3, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fr(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 114
    invoke-virtual {v3, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fp(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 115
    sget-object v7, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpv:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v7, v7, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fq(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 116
    invoke-static {v4}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/a/a;->t([B)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->H([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 117
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v4, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;-><init>()V

    move v3, v2

    .line 123
    :cond_5
    iget-object v0, v0, Lcom/xiaomi/push/service/aj;->bgN:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-virtual {v4, v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->a(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    .line 124
    add-int/2addr v3, v6

    goto :goto_2

    .line 127
    :cond_6
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->Lq()I

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/push/service/ah;->JL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fr(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 130
    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fp(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 131
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->bpv:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->fq(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 132
    invoke-static {v4}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->t([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->H([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 133
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v0, v5

    .line 136
    goto/16 :goto_0
.end method
