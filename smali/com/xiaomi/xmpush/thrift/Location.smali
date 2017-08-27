.class public Lcom/xiaomi/xmpush/thrift/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final biN:Lorg/apache/thrift/protocol/g;

.field public static final biY:Ljava/util/Map;

.field private static final boL:Lorg/apache/thrift/protocol/a;

.field private static final boM:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public latitude:D

.field public longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 23
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "Location"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location;->biN:Lorg/apache/thrift/protocol/g;

    .line 25
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "longitude"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location;->boL:Lorg/apache/thrift/protocol/a;

    .line 26
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "latitude"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location;->boM:Lorg/apache/thrift/protocol/a;

    .line 103
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 104
    sget-object v1, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->boN:Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "longitude"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->boO:Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "latitude"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location;->biY:Ljava/util/Map;

    .line 109
    const-class v0, Lcom/xiaomi/xmpush/thrift/Location;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/Location;->biY:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    .line 113
    return-void
.end method


# virtual methods
.method public LN()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public LO()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 323
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Ob()Lorg/apache/thrift/protocol/g;

    .line 325
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Od()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 326
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 351
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oc()V

    .line 354
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->LN()Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'longitude\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bwe:S

    packed-switch v1, :pswitch_data_0

    .line 347
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 349
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oe()V

    goto :goto_0

    .line 331
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 332
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    .line 333
    invoke-virtual {p0, v2}, Lcom/xiaomi/xmpush/thrift/Location;->cJ(Z)V

    goto :goto_1

    .line 335
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 339
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_2

    .line 340
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    .line 341
    invoke-virtual {p0, v2}, Lcom/xiaomi/xmpush/thrift/Location;->cK(Z)V

    goto :goto_1

    .line 343
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->LO()Z

    move-result v0

    if-nez v0, :cond_4

    .line 358
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'latitude\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->validate()V

    .line 361
    return-void

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->validate()V

    .line 366
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Location;->biN:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 367
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Location;->boL:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 368
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->writeDouble(D)V

    .line 369
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 370
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Location;->boM:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 371
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->writeDouble(D)V

    .line 372
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 373
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NX()V

    .line 374
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NV()V

    .line 375
    return-void
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/Location;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 257
    if-nez p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 274
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Lcom/xiaomi/xmpush/thrift/Location;)I
    .locals 4

    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->LN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Location;->LN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 295
    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->LN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->b(DD)I

    move-result v0

    .line 300
    if-nez v0, :cond_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->LO()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Location;->LO()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 305
    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->LO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->b(DD)I

    move-result v0

    .line 310
    if-nez v0, :cond_0

    .line 314
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cJ(Z)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 170
    return-void
.end method

.method public cK(Z)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 195
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->c(Lcom/xiaomi/xmpush/thrift/Location;)I

    move-result v0

    return v0
.end method

.method public d(D)Lcom/xiaomi/xmpush/thrift/Location;
    .locals 1

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/Location;->cJ(Z)V

    .line 154
    return-object p0
.end method

.method public e(D)Lcom/xiaomi/xmpush/thrift/Location;
    .locals 1

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/Location;->cK(Z)V

    .line 179
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 249
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/Location;

    if-eqz v1, :cond_0

    .line 252
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->b(Lcom/xiaomi/xmpush/thrift/Location;)Z

    move-result v0

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    const-string v1, "longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, "latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 389
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method
