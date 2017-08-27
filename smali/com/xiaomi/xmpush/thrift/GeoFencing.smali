.class public Lcom/xiaomi/xmpush/thrift/GeoFencing;
.super Ljava/lang/Object;
.source "GeoFencing.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final biN:Lorg/apache/thrift/protocol/g;

.field private static final biP:Lorg/apache/thrift/protocol/a;

.field public static final biY:Ljava/util/Map;

.field private static final bmU:Lorg/apache/thrift/protocol/a;

.field private static final bop:Lorg/apache/thrift/protocol/a;

.field private static final boq:Lorg/apache/thrift/protocol/a;

.field private static final bor:Lorg/apache/thrift/protocol/a;

.field private static final bos:Lorg/apache/thrift/protocol/a;

.field private static final bot:Lorg/apache/thrift/protocol/a;

.field private static final bou:Lorg/apache/thrift/protocol/a;

.field private static final bov:Lorg/apache/thrift/protocol/a;

.field private static final bow:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:J

.field public circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

.field public circleRadius:D

.field public coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

.field public createTime:J

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public polygonPoints:Ljava/util/List;

.field public type:Lcom/xiaomi/xmpush/thrift/GeoType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v7, 0x4

    const/4 v10, 0x2

    const/16 v6, 0xa

    const/16 v5, 0xb

    const/4 v9, 0x1

    .line 25
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "GeoFencing"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->biN:Lorg/apache/thrift/protocol/g;

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    invoke-direct {v0, v1, v5, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bop:Lorg/apache/thrift/protocol/a;

    .line 28
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "name"

    invoke-direct {v0, v1, v5, v10}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bmU:Lorg/apache/thrift/protocol/a;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->boq:Lorg/apache/thrift/protocol/a;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    invoke-direct {v0, v1, v5, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bor:Lorg/apache/thrift/protocol/a;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "createTime"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bos:Lorg/apache/thrift/protocol/a;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->biP:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "circleCenter"

    const/16 v2, 0xc

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bot:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "circleRadius"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bou:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "polygonPoints"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bov:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "coordinateProvider"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bow:Lorg/apache/thrift/protocol/a;

    .line 158
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 159
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->box:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boy:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "name"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boz:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boA:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boB:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "createTime"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boC:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "type"

    new-instance v4, Lorg/apache/thrift/meta_data/EnumMetaData;

    const/16 v5, 0x10

    const-class v6, Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-direct {v4, v5, v6}, Lorg/apache/thrift/meta_data/EnumMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boD:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "circleCenter"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const/16 v5, 0xc

    const-class v6, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v4, v5, v6}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boE:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "circleRadius"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boF:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "polygonPoints"

    new-instance v4, Lorg/apache/thrift/meta_data/ListMetaData;

    const/16 v5, 0xf

    new-instance v6, Lorg/apache/thrift/meta_data/StructMetaData;

    const/16 v7, 0xc

    const-class v8, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v6, v7, v8}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lorg/apache/thrift/meta_data/ListMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boG:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "coordinateProvider"

    new-instance v4, Lorg/apache/thrift/meta_data/EnumMetaData;

    const/16 v5, 0x10

    const-class v6, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-direct {v4, v5, v6}, Lorg/apache/thrift/meta_data/EnumMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->biY:Ljava/util/Map;

    .line 181
    const-class v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->biY:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 182
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    .line 185
    return-void
.end method


# virtual methods
.method public Ki()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LA()J
    .locals 2

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    return-wide v0
.end method

.method public LB()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public LC()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LD()Z
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public LE()Lcom/xiaomi/xmpush/thrift/GeoType;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    return-object v0
.end method

.method public LF()Lcom/xiaomi/xmpush/thrift/Location;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    return-object v0
.end method

.method public LG()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LH()D
    .locals 2

    .prologue
    .line 451
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    return-wide v0
.end method

.method public LI()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public LJ()Ljava/util/List;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    return-object v0
.end method

.method public LK()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LL()Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    return-object v0
.end method

.method public LM()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lu()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lz()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N(J)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 1

    .prologue
    .line 321
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->cG(Z)V

    .line 323
    return-object p0
.end method

.method public O(J)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 1

    .prologue
    .line 372
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->cH(Z)V

    .line 374
    return-object p0
.end method

.method public Q(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    .line 496
    return-object p0
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/CoordinateProvider;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    .line 528
    return-object p0
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/GeoType;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    .line 404
    return-object p0
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/Location;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    .line 430
    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x8

    const/16 v5, 0xb

    const/4 v4, 0x1

    .line 930
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Ob()Lorg/apache/thrift/protocol/g;

    .line 932
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Od()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 933
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 1026
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oc()V

    .line 1029
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LB()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1030
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bwe:S

    packed-switch v1, :pswitch_data_0

    .line 1022
    :pswitch_0
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 1024
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oe()V

    goto :goto_0

    .line 938
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_1

    .line 939
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    goto :goto_1

    .line 941
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 945
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_2

    .line 946
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    goto :goto_1

    .line 948
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 952
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v7, :cond_3

    .line 953
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->On()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    .line 954
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->cG(Z)V

    goto :goto_1

    .line 956
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 960
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_4

    .line 961
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 963
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 967
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v7, :cond_5

    .line 968
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->On()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    .line 969
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->cH(Z)V

    goto :goto_1

    .line 971
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 975
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v6, :cond_6

    .line 976
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Om()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/GeoType;->fz(I)Lcom/xiaomi/xmpush/thrift/GeoType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    goto :goto_1

    .line 978
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 982
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_7

    .line 983
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    .line 984
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->a(Lorg/apache/thrift/protocol/d;)V

    goto/16 :goto_1

    .line 986
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 990
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 991
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    .line 992
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->cI(Z)V

    goto/16 :goto_1

    .line 994
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 998
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_a

    .line 1000
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oh()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    .line 1002
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    if-ge v0, v2, :cond_9

    .line 1004
    new-instance v2, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V

    .line 1005
    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/Location;->a(Lorg/apache/thrift/protocol/d;)V

    .line 1006
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1008
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oi()V

    goto/16 :goto_1

    .line 1011
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1015
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v6, :cond_b

    .line 1016
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Om()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->fy(I)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    goto/16 :goto_1

    .line 1018
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1032
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LD()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1033
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'createTime\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->validate()V

    .line 1036
    return-void

    .line 936
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->validate()V

    .line 1041
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->biN:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 1042
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1043
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bop:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1044
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1048
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bmU:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1049
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1052
    :cond_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->boq:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1053
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->Q(J)V

    .line 1054
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1055
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1056
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bor:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1057
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1060
    :cond_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bos:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1061
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->Q(J)V

    .line 1062
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1063
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    if-eqz v0, :cond_3

    .line 1064
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->biP:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1065
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fB(I)V

    .line 1066
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1068
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    if-eqz v0, :cond_4

    .line 1069
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1070
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bot:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1071
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1072
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1075
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1076
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bou:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1077
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->writeDouble(D)V

    .line 1078
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1080
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1081
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LK()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1082
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bov:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1084
    new-instance v0, Lorg/apache/thrift/protocol/b;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/b;)V

    .line 1085
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/Location;

    .line 1086
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 1088
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NZ()V

    .line 1090
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1093
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    if-eqz v0, :cond_8

    .line 1094
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->bow:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1095
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fB(I)V

    .line 1096
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1098
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NX()V

    .line 1099
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NV()V

    .line 1100
    return-void
.end method

.method public c(D)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 1

    .prologue
    .line 455
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->cI(Z)V

    .line 457
    return-object p0
.end method

.method public c(Lcom/xiaomi/xmpush/thrift/GeoFencing;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 712
    if-nez p1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v0

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lz()Z

    move-result v1

    .line 716
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lz()Z

    move-result v2

    .line 717
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 718
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 720
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lu()Z

    move-result v1

    .line 725
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lu()Z

    move-result v2

    .line 726
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 727
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 729
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    :cond_5
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LC()Z

    move-result v1

    .line 743
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LC()Z

    move-result v2

    .line 744
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 745
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 747
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    :cond_7
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Ki()Z

    move-result v1

    .line 761
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Ki()Z

    move-result v2

    .line 762
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 763
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 765
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/GeoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LG()Z

    move-result v1

    .line 770
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LG()Z

    move-result v2

    .line 771
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 772
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 774
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Location;->b(Lcom/xiaomi/xmpush/thrift/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LI()Z

    move-result v1

    .line 779
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LI()Z

    move-result v2

    .line 780
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 781
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 783
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 787
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LK()Z

    move-result v1

    .line 788
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LK()Z

    move-result v2

    .line 789
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 790
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 792
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LM()Z

    move-result v1

    .line 797
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LM()Z

    move-result v2

    .line 798
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 799
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 801
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public cG(Z)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 339
    return-void
.end method

.method public cH(Z)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 390
    return-void
.end method

.method public cI(Z)V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 473
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->d(Lcom/xiaomi/xmpush/thrift/GeoFencing;)I

    move-result v0

    return v0
.end method

.method public d(Lcom/xiaomi/xmpush/thrift/GeoFencing;)I
    .locals 4

    .prologue
    .line 814
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
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

    .line 921
    :cond_0
    :goto_0
    return v0

    .line 821
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lz()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 822
    if-nez v0, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lz()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 827
    if-nez v0, :cond_0

    .line 831
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 832
    if-nez v0, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Lu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 837
    if-nez v0, :cond_0

    .line 841
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LB()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LB()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 842
    if-nez v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LB()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 846
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 847
    if-nez v0, :cond_0

    .line 851
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LC()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LC()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 852
    if-nez v0, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LC()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 856
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 857
    if-nez v0, :cond_0

    .line 861
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LD()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 862
    if-nez v0, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LD()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 866
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 867
    if-nez v0, :cond_0

    .line 871
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Ki()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Ki()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 872
    if-nez v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->Ki()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 876
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 877
    if-nez v0, :cond_0

    .line 881
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LG()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LG()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 882
    if-nez v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LG()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 886
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 887
    if-nez v0, :cond_0

    .line 891
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LI()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LI()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 892
    if-nez v0, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LI()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 896
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->b(DD)I

    move-result v0

    .line 897
    if-nez v0, :cond_0

    .line 901
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LK()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LK()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 902
    if-nez v0, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LK()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 906
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 907
    if-nez v0, :cond_0

    .line 911
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 912
    if-nez v0, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LM()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 916
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 917
    if-nez v0, :cond_0

    .line 921
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public eZ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 704
    if-nez p1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 706
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    if-eqz v1, :cond_0

    .line 707
    check-cast p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->c(Lcom/xiaomi/xmpush/thrift/GeoFencing;)Z

    move-result v0

    goto :goto_0
.end method

.method public fa(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public fb(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    .line 347
    return-object p0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeoFencing("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1107
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1109
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1117
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1126
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 1129
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    const-string v1, "createTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1138
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    if-nez v1, :cond_6

    .line 1141
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    const-string v1, "circleCenter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    if-nez v1, :cond_7

    .line 1150
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :cond_0
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1157
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    const-string v1, "circleRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1162
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->LK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1163
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    const-string v1, "polygonPoints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    if-nez v1, :cond_8

    .line 1166
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    :cond_2
    :goto_5
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    const-string v1, "coordinateProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    if-nez v1, :cond_9

    .line 1175
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    :goto_6
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1111
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1119
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1131
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1143
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1152
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1168
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1177
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1190
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1194
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'packageName\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    if-nez v0, :cond_3

    .line 1198
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    if-nez v0, :cond_4

    .line 1201
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'coordinateProvider\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1203
    :cond_4
    return-void
.end method
