.class public final Lcom/xiaomi/push/b/f;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bcS:I

.field private bdA:Z

.field private bdB:Ljava/lang/String;

.field private bdC:Z

.field private bdD:Ljava/lang/String;

.field private bdE:Z

.field private bdF:Ljava/lang/String;

.field private bdG:Z

.field private bdH:Ljava/lang/String;

.field private bdw:Z

.field private bdx:Ljava/lang/String;

.field private bdy:Z

.field private bdz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1238
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 1243
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bdx:Ljava/lang/String;

    .line 1260
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bdz:Ljava/lang/String;

    .line 1277
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bdB:Ljava/lang/String;

    .line 1294
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bdD:Ljava/lang/String;

    .line 1311
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bdF:Ljava/lang/String;

    .line 1328
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bdH:Ljava/lang/String;

    .line 1380
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/f;->bcS:I

    .line 1238
    return-void
.end method


# virtual methods
.method public FQ()I
    .locals 1

    .prologue
    .line 1383
    iget v0, p0, Lcom/xiaomi/push/b/f;->bcS:I

    if-gez v0, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getSerializedSize()I

    .line 1387
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/f;->bcS:I

    return v0
.end method

.method public IA()Z
    .locals 1

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdG:Z

    return v0
.end method

.method public Ir()Z
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdw:Z

    return v0
.end method

.method public Is()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bdz:Ljava/lang/String;

    return-object v0
.end method

.method public It()Z
    .locals 1

    .prologue
    .line 1262
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdy:Z

    return v0
.end method

.method public Iu()Z
    .locals 1

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdA:Z

    return v0
.end method

.method public Iv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bdD:Ljava/lang/String;

    return-object v0
.end method

.method public Iw()Z
    .locals 1

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdC:Z

    return v0
.end method

.method public Ix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bdF:Ljava/lang/String;

    return-object v0
.end method

.method public Iy()Z
    .locals 1

    .prologue
    .line 1313
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdE:Z

    return v0
.end method

.method public Iz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bdH:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 1235
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/f;->f(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Ir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->It()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1364
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Is()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1366
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1367
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1369
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1370
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1372
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1373
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Ix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1375
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->IA()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1376
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1378
    :cond_5
    return-void
.end method

.method public dX(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdw:Z

    .line 1248
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bdx:Ljava/lang/String;

    .line 1249
    return-object p0
.end method

.method public dY(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdy:Z

    .line 1265
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bdz:Ljava/lang/String;

    .line 1266
    return-object p0
.end method

.method public dZ(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdA:Z

    .line 1282
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bdB:Ljava/lang/String;

    .line 1283
    return-object p0
.end method

.method public ea(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdC:Z

    .line 1299
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bdD:Ljava/lang/String;

    .line 1300
    return-object p0
.end method

.method public eb(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdE:Z

    .line 1316
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bdF:Ljava/lang/String;

    .line 1317
    return-object p0
.end method

.method public ec(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bdG:Z

    .line 1333
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bdH:Ljava/lang/String;

    .line 1334
    return-object p0
.end method

.method public f(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 1427
    sparse-switch v0, :sswitch_data_0

    .line 1431
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/f;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1432
    :sswitch_0
    return-object p0

    .line 1437
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->dX(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1441
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->dY(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1445
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->dZ(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1449
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->ea(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1453
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->eb(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1457
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->ec(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bdB:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1392
    const/4 v0, 0x0

    .line 1393
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Ir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    const/4 v1, 0x1

    .line 1395
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1397
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->It()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1398
    const/4 v1, 0x2

    .line 1399
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Is()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1401
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iu()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1402
    const/4 v1, 0x3

    .line 1403
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1405
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iw()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1406
    const/4 v1, 0x4

    .line 1407
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1409
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iy()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1410
    const/4 v1, 0x5

    .line 1411
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Ix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1413
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->IA()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1414
    const/4 v1, 0x6

    .line 1415
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Iz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1417
    :cond_5
    iput v0, p0, Lcom/xiaomi/push/b/f;->bcS:I

    .line 1418
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bdx:Ljava/lang/String;

    return-object v0
.end method
