.class public Lcom/xiaomi/d/d;
.super Ljava/lang/Object;
.source "BlobWriter.java"


# instance fields
.field private bjB:Lcom/xiaomi/smack/a;

.field private bjC:I

.field private bjD:I

.field bjw:Ljava/nio/ByteBuffer;

.field private bjx:Ljava/nio/ByteBuffer;

.field private bjy:Ljava/util/zip/Adler32;

.field private mOut:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/xiaomi/smack/a;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    .line 30
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/d/d;->bjx:Ljava/nio/ByteBuffer;

    .line 32
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/d/d;->bjy:Ljava/util/zip/Adler32;

    .line 43
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/xiaomi/d/d;->mOut:Ljava/io/OutputStream;

    .line 44
    iput-object p2, p0, Lcom/xiaomi/d/d;->bjB:Lcom/xiaomi/smack/a;

    .line 46
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0x36ee80

    div-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/d/d;->bjC:I

    .line 48
    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/xiaomi/d/d;->bjD:I

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public KB()V
    .locals 7

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x0

    .line 87
    new-instance v0, Lcom/xiaomi/push/b/h;

    invoke-direct {v0}, Lcom/xiaomi/push/b/h;-><init>()V

    .line 88
    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->fa(I)Lcom/xiaomi/push/b/h;

    .line 89
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->eg(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 90
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->eh(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 91
    invoke-static {}, Lcom/xiaomi/push/service/ae;->Gb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->ei(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 92
    invoke-virtual {v0, v6}, Lcom/xiaomi/push/b/h;->fb(I)Lcom/xiaomi/push/b/h;

    .line 93
    iget-object v1, p0, Lcom/xiaomi/d/d;->bjB:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->KG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->ej(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 94
    iget-object v1, p0, Lcom/xiaomi/d/d;->bjB:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->ek(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->el(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->fc(I)Lcom/xiaomi/push/b/h;

    .line 98
    iget-object v1, p0, Lcom/xiaomi/d/d;->bjB:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->KF()Lcom/xiaomi/smack/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smack/c;->Ke()[B

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-static {v1}, Lcom/xiaomi/push/b/e;->v([B)Lcom/xiaomi/push/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->a(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/h;

    .line 103
    :cond_0
    new-instance v1, Lcom/xiaomi/d/b;

    invoke-direct {v1}, Lcom/xiaomi/d/b;-><init>()V

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/d/b;->fr(I)V

    .line 105
    const-string v2, "CONN"

    invoke-virtual {v1, v2, v5}, Lcom/xiaomi/d/b;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-wide/16 v2, 0x0

    const-string v4, "xiaomi.com"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/d/b;->d(JLjava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lcom/xiaomi/push/b/h;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/xiaomi/d/b;->d([BLjava/lang/String;)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/xiaomi/d/d;->g(Lcom/xiaomi/d/b;)I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[slim] open conn: andver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/xiaomi/push/service/ae;->Gb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/d/d;->bjC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/d/d;->bjD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public g(Lcom/xiaomi/d/b;)I
    .locals 5

    .prologue
    const v4, 0x8000

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getSerializedSize()I

    move-result v1

    .line 53
    if-le v1, v4, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blob size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Drop blob chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/xiaomi/d/b;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 83
    :goto_0
    return v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1000

    if-le v1, v2, :cond_1

    .line 62
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 66
    iget-object v1, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/xiaomi/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    .line 68
    iget-object v1, p0, Lcom/xiaomi/d/d;->bjy:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    .line 69
    iget-object v1, p0, Lcom/xiaomi/d/d;->bjy:Ljava/util/zip/Adler32;

    iget-object v2, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 70
    iget-object v1, p0, Lcom/xiaomi/d/d;->bjy:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    .line 71
    iget-object v2, p0, Lcom/xiaomi/d/d;->bjx:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 76
    iget-object v1, p0, Lcom/xiaomi/d/d;->mOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    iget-object v1, p0, Lcom/xiaomi/d/d;->mOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/xiaomi/d/d;->bjx:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    iget-object v0, p0, Lcom/xiaomi/d/d;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 80
    iget-object v0, p0, Lcom/xiaomi/d/d;->bjw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] Wrote {cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->HW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/d/b;->Ku()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lcom/xiaomi/d/b;

    invoke-direct {v0}, Lcom/xiaomi/d/b;-><init>()V

    .line 119
    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/d/b;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/xiaomi/d/d;->g(Lcom/xiaomi/d/b;)I

    .line 121
    iget-object v0, p0, Lcom/xiaomi/d/d;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 122
    return-void
.end method
