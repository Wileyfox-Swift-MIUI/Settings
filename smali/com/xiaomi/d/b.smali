.class public Lcom/xiaomi/d/b;
.super Ljava/lang/Object;
.source "Blob.java"


# static fields
.field private static final bju:[B

.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private bjs:Lcom/xiaomi/push/b/d;

.field private bjt:S

.field private bjv:[B

.field mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/xiaomi/smack/d/d;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/d/b;->prefix:Ljava/lang/String;

    .line 158
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/d/b;->id:J

    .line 164
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/xiaomi/d/b;->bju:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/d/b;->bjt:S

    .line 166
    sget-object v0, Lcom/xiaomi/d/b;->bju:[B

    iput-object v0, p0, Lcom/xiaomi/d/b;->bjv:[B

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/d/b;->mPackageName:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/xiaomi/push/b/d;

    invoke-direct {v0}, Lcom/xiaomi/push/b/d;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    .line 172
    return-void
.end method

.method constructor <init>(Lcom/xiaomi/push/b/d;S[B)V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/d/b;->bjt:S

    .line 166
    sget-object v0, Lcom/xiaomi/d/b;->bju:[B

    iput-object v0, p0, Lcom/xiaomi/d/b;->bjv:[B

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/d/b;->mPackageName:Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    .line 176
    iput-short p2, p0, Lcom/xiaomi/d/b;->bjt:S

    .line 177
    iput-object p3, p0, Lcom/xiaomi/d/b;->bjv:[B

    .line 178
    return-void
.end method

.method static Ky()I
    .locals 1

    .prologue
    .line 490
    const/16 v0, 0xe

    return v0
.end method

.method public static a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;)Lcom/xiaomi/d/b;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 368
    new-instance v2, Lcom/xiaomi/d/b;

    invoke-direct {v2}, Lcom/xiaomi/d/b;-><init>()V

    .line 369
    const/4 v0, 0x1

    .line 371
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 376
    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/d/b;->fr(I)V

    .line 377
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/d/b;->setPacketID(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/d/b;->setFrom(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/d/b;->setPackageName(Ljava/lang/String;)V

    .line 380
    const-string v0, "XMLMSG"

    invoke-virtual {v2, v0, v5}, Lcom/xiaomi/d/b;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lcom/xiaomi/d/b;->d([BLjava/lang/String;)V

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/xiaomi/d/b;->b(S)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :goto_1
    return-object v2

    .line 372
    :catch_0
    move-exception v1

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blob parse chid err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_0
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {v2, v0}, Lcom/xiaomi/d/b;->b(S)V

    .line 388
    const-string v0, "SECMSG"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/d/b;->X(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 390
    :catch_1
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blob setPayload err\uff1a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static b(Ljava/nio/ByteBuffer;)Lcom/xiaomi/d/b;
    .locals 6

    .prologue
    .line 445
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/16 v1, -0x3d02

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 446
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 447
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read Blob err :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    const/4 v0, 0x6

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 452
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    .line 453
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 455
    new-instance v3, Lcom/xiaomi/push/b/d;

    invoke-direct {v3}, Lcom/xiaomi/push/b/d;-><init>()V

    .line 456
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v3, v4, v5, v1}, Lcom/xiaomi/push/b/d;->f([BII)Lcom/google/protobuf/micro/c;

    .line 457
    new-array v4, v2, [B

    .line 458
    add-int/lit8 v1, v1, 0xe

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 459
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 460
    new-instance v1, Lcom/xiaomi/d/b;

    invoke-direct {v1, v3, v0, v4}, Lcom/xiaomi/d/b;-><init>(Lcom/xiaomi/push/b/d;S[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method static c(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 486
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static declared-synchronized nextID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 235
    const-class v1, Lcom/xiaomi/d/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/d/b;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/d/b;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/d/b;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public HW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->HW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public HY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->HY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public If()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->If()I

    move-result v0

    return v0
.end method

.method public Ih()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Ih()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ku()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->HO()I

    move-result v0

    return v0
.end method

.method public Kv()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Ig()Z

    move-result v0

    return v0
.end method

.method public Kw()Ljava/lang/String;
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->HR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->HQ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->HS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    .line 315
    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->HU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Kx()S
    .locals 1

    .prologue
    .line 468
    iget-short v0, p0, Lcom/xiaomi/d/b;->bjt:S

    return v0
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/b/d;->dT(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 190
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Ia()Lcom/xiaomi/push/b/d;

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/b/d;->dU(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 194
    :cond_1
    return-void
.end method

.method a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/xiaomi/d/b;->getSerializedSize()I

    move-result v0

    .line 409
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 410
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 412
    if-eqz p1, :cond_2

    .line 413
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_2
    move-object p1, v0

    .line 418
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 419
    const/16 v1, -0x3d02

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 420
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 421
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 422
    iget-short v1, p0, Lcom/xiaomi/d/b;->bjt:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 424
    iget-object v1, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->FQ()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 425
    iget-object v1, p0, Lcom/xiaomi/d/b;->bjv:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 427
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 428
    iget-object v2, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v5}, Lcom/xiaomi/push/b/d;->FQ()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/push/b/d;->e([BII)V

    .line 429
    iget-object v2, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v2}, Lcom/xiaomi/push/b/d;->FQ()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 431
    iget-object v1, p0, Lcom/xiaomi/d/b;->bjv:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 433
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 434
    return-object p1
.end method

.method public b(S)V
    .locals 0

    .prologue
    .line 472
    iput-short p1, p0, Lcom/xiaomi/d/b;->bjt:S

    .line 473
    return-void
.end method

.method public d(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 295
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/b/d;->H(J)Lcom/xiaomi/push/b/d;

    .line 299
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/b/d;->dR(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 303
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/b/d;->dS(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 306
    :cond_2
    return-void
.end method

.method public d([BLjava/lang/String;)V
    .locals 2

    .prologue
    .line 327
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/d;->eV(I)Lcom/xiaomi/push/b/d;

    .line 330
    invoke-virtual {p0}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/push/service/ab;->W(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 331
    invoke-static {v0, p1}, Lcom/xiaomi/push/service/ab;->c([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/d/b;->bjv:[B

    .line 336
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/d;->eV(I)Lcom/xiaomi/push/b/d;

    .line 334
    iput-object p1, p0, Lcom/xiaomi/d/b;->bjv:[B

    goto :goto_0
.end method

.method public eT(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Id()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/ab;->W(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/xiaomi/d/b;->bjv:[B

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ab;->c([B[B)[B

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Id()I

    move-result v0

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjv:[B

    goto :goto_0

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknow cipher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->Id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjv:[B

    goto :goto_0
.end method

.method public fr(I)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/b/d;->eT(I)Lcom/xiaomi/push/b/d;

    .line 206
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xiaomi/d/b;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->getId()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v1, "ID_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->hasId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-static {}, Lcom/xiaomi/d/b;->nextID()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/b/d;->dV(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    goto :goto_0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjv:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Lcom/xiaomi/d/b;->Ky()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/d/b;->bjv:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 275
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 276
    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 277
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 278
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v4, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v4, v2, v3}, Lcom/xiaomi/push/b/d;->H(J)Lcom/xiaomi/push/b/d;

    .line 280
    iget-object v2, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/d;->dR(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 281
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/d;->dS(Ljava/lang/String;)Lcom/xiaomi/push/b/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob parse user err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/xiaomi/d/b;->mPackageName:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xiaomi/d/b;->bjs:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/b/d;->dV(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob [chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/d/b;->Ku()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 477
    invoke-virtual {p0}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/d/b;->Kx()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 478
    invoke-virtual {p0}, Lcom/xiaomi/d/b;->Kw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    return-object v0
.end method
