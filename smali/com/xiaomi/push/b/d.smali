.class public final Lcom/xiaomi/push/b/d;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private aSB:Z

.field private bcS:I

.field private bcT:Z

.field private bcU:I

.field private bcV:Z

.field private bcW:J

.field private bcX:Z

.field private bcY:Ljava/lang/String;

.field private bcZ:Ljava/lang/String;

.field private bda:Z

.field private bdb:Ljava/lang/String;

.field private bdc:Z

.field private bdd:Ljava/lang/String;

.field private bde:Z

.field private bdf:Ljava/lang/String;

.field private bdg:Z

.field private bdh:I

.field private bdi:Z

.field private bdj:I

.field private bdk:Z

.field private bdl:I

.field private bdm:Z

.field private bdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 207
    iput v2, p0, Lcom/xiaomi/push/b/d;->bcU:I

    .line 224
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/b/d;->bcW:J

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/d;->bcY:Ljava/lang/String;

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/d;->bcZ:Ljava/lang/String;

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/d;->bdb:Ljava/lang/String;

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/d;->bdd:Ljava/lang/String;

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/d;->bdf:Ljava/lang/String;

    .line 326
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/b/d;->bdh:I

    .line 343
    iput v2, p0, Lcom/xiaomi/push/b/d;->bdj:I

    .line 360
    iput v2, p0, Lcom/xiaomi/push/b/d;->bdl:I

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/d;->bdn:Ljava/lang/String;

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/d;->bcS:I

    .line 194
    return-void
.end method


# virtual methods
.method public FQ()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/xiaomi/push/b/d;->bcS:I

    if-gez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->getSerializedSize()I

    .line 456
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/d;->bcS:I

    return v0
.end method

.method public H(J)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bcV:Z

    .line 229
    iput-wide p1, p0, Lcom/xiaomi/push/b/d;->bcW:J

    .line 230
    return-object p0
.end method

.method public HO()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/xiaomi/push/b/d;->bcU:I

    return v0
.end method

.method public HP()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bcT:Z

    return v0
.end method

.method public HQ()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/xiaomi/push/b/d;->bcW:J

    return-wide v0
.end method

.method public HR()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bcV:Z

    return v0
.end method

.method public HS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/xiaomi/push/b/d;->bcY:Ljava/lang/String;

    return-object v0
.end method

.method public HT()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bcX:Z

    return v0
.end method

.method public HU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/xiaomi/push/b/d;->bcZ:Ljava/lang/String;

    return-object v0
.end method

.method public HV()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->aSB:Z

    return v0
.end method

.method public HW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/xiaomi/push/b/d;->bdb:Ljava/lang/String;

    return-object v0
.end method

.method public HX()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bda:Z

    return v0
.end method

.method public HY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/xiaomi/push/b/d;->bdd:Ljava/lang/String;

    return-object v0
.end method

.method public HZ()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdc:Z

    return v0
.end method

.method public Ia()Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdc:Z

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/d;->bdd:Ljava/lang/String;

    .line 303
    return-object p0
.end method

.method public Ib()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdg:Z

    return v0
.end method

.method public Ic()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/xiaomi/push/b/d;->bdh:I

    return v0
.end method

.method public Id()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/xiaomi/push/b/d;->bdj:I

    return v0
.end method

.method public Ie()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdi:Z

    return v0
.end method

.method public If()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/xiaomi/push/b/d;->bdl:I

    return v0
.end method

.method public Ig()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdk:Z

    return v0
.end method

.method public Ih()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/xiaomi/push/b/d;->bdn:Ljava/lang/String;

    return-object v0
.end method

.method public Ii()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdm:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/d;->d(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HO()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HQ()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 423
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HV()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 426
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HX()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 429
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HZ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 432
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->hasId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 435
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ib()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 436
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ic()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 438
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ie()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 439
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Id()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 441
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ig()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 442
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->If()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 444
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ii()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 445
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ih()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 447
    :cond_a
    return-void
.end method

.method public d(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/d;
    .locals 2

    .prologue
    .line 515
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 516
    sparse-switch v0, :sswitch_data_0

    .line 520
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/d;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    :sswitch_0
    return-object p0

    .line 526
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->eT(I)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 530
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt64()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/b/d;->H(J)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 534
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->dR(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 538
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->dS(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 542
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->dT(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 546
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->dU(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 550
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->dV(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 554
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->eU(I)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 558
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->eV(I)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 562
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->eW(I)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 566
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->dW(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 516
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public dR(Ljava/lang/String;)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bcX:Z

    .line 246
    iput-object p1, p0, Lcom/xiaomi/push/b/d;->bcY:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public dS(Ljava/lang/String;)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->aSB:Z

    .line 263
    iput-object p1, p0, Lcom/xiaomi/push/b/d;->bcZ:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public dT(Ljava/lang/String;)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bda:Z

    .line 280
    iput-object p1, p0, Lcom/xiaomi/push/b/d;->bdb:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public dU(Ljava/lang/String;)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdc:Z

    .line 297
    iput-object p1, p0, Lcom/xiaomi/push/b/d;->bdd:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public dV(Ljava/lang/String;)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bde:Z

    .line 314
    iput-object p1, p0, Lcom/xiaomi/push/b/d;->bdf:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public dW(Ljava/lang/String;)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdm:Z

    .line 382
    iput-object p1, p0, Lcom/xiaomi/push/b/d;->bdn:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public eT(I)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bcT:Z

    .line 212
    iput p1, p0, Lcom/xiaomi/push/b/d;->bcU:I

    .line 213
    return-object p0
.end method

.method public eU(I)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdg:Z

    .line 331
    iput p1, p0, Lcom/xiaomi/push/b/d;->bdh:I

    .line 332
    return-object p0
.end method

.method public eV(I)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdi:Z

    .line 348
    iput p1, p0, Lcom/xiaomi/push/b/d;->bdj:I

    .line 349
    return-object p0
.end method

.method public eW(I)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->bdk:Z

    .line 365
    iput p1, p0, Lcom/xiaomi/push/b/d;->bdl:I

    .line 366
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaomi/push/b/d;->bdf:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HP()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x1

    .line 464
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HO()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HR()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    const/4 v1, 0x2

    .line 468
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HQ()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HT()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    const/4 v1, 0x3

    .line 472
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HV()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 475
    const/4 v1, 0x4

    .line 476
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HX()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 479
    const/4 v1, 0x5

    .line 480
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 482
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HZ()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 483
    const/4 v1, 0x6

    .line 484
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->HY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->hasId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 487
    const/4 v1, 0x7

    .line 488
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ib()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 491
    const/16 v1, 0x8

    .line 492
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ic()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ie()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 495
    const/16 v1, 0x9

    .line 496
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Id()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ig()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 499
    const/16 v1, 0xa

    .line 500
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->If()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ii()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 503
    const/16 v1, 0xb

    .line 504
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Ih()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_a
    iput v0, p0, Lcom/xiaomi/push/b/d;->bcS:I

    .line 507
    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->bde:Z

    return v0
.end method
