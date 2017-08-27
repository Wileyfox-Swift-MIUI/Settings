.class public Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;
.super Ljava/lang/Object;
.source "RegisteredGeoFencing.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final biN:Lorg/apache/thrift/protocol/g;

.field public static final biY:Ljava/util/Map;

.field private static final bqG:Lorg/apache/thrift/protocol/a;


# instance fields
.field public geoFencings:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 25
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "RegisteredGeoFencing"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->biN:Lorg/apache/thrift/protocol/g;

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "geoFencings"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->bqG:Lorg/apache/thrift/protocol/a;

    .line 97
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 98
    sget-object v1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing$_Fields;->bqH:Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "geoFencings"

    new-instance v4, Lorg/apache/thrift/meta_data/SetMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/StructMetaData;

    const/16 v6, 0xc

    const-class v7, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-direct {v5, v6, v7}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/SetMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->biY:Ljava/util/Map;

    .line 102
    const-class v0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->biY:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method public Mx()Ljava/util/Set;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    return-object v0
.end method

.method public My()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Ob()Lorg/apache/thrift/protocol/g;

    .line 273
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Od()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 274
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oc()V

    .line 303
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->validate()V

    .line 304
    return-void

    .line 277
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bwe:S

    packed-switch v1, :pswitch_data_0

    .line 296
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 298
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oe()V

    goto :goto_0

    .line 279
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 281
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oj()Lorg/apache/thrift/protocol/f;

    move-result-object v1

    .line 282
    new-instance v0, Ljava/util/HashSet;

    iget v2, v1, Lorg/apache/thrift/protocol/f;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    .line 283
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/f;->size:I

    if-ge v0, v2, :cond_1

    .line 285
    new-instance v2, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/GeoFencing;-><init>()V

    .line 286
    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->a(Lorg/apache/thrift/protocol/d;)V

    .line 287
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 289
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Ok()V

    goto :goto_1

    .line 292
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 224
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->My()Z

    move-result v1

    .line 228
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->My()Z

    move-result v2

    .line 229
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 230
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 232
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;)I
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
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

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->My()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->My()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 253
    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->My()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    .line 258
    if-nez v0, :cond_0

    .line 262
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->validate()V

    .line 309
    sget-object v0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->biN:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 310
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 311
    sget-object v0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->bqG:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 313
    new-instance v0, Lorg/apache/thrift/protocol/f;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/f;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/f;)V

    .line 314
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 315
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oa()V

    .line 319
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 321
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NX()V

    .line 322
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NV()V

    .line 323
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->b(Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/util/Set;)Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    .line 157
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    if-eqz v1, :cond_0

    .line 219
    check-cast p1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->a(Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegisteredGeoFencing("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    const-string v1, "geoFencings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 332
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'geoFencings\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    return-void
.end method
