.class public final enum Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;
.super Ljava/lang/Enum;
.source "GeoFencing.java"


# static fields
.field private static final bjj:Ljava/util/Map;

.field public static final enum boA:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field public static final enum boB:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field public static final enum boC:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field public static final enum boD:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field public static final enum boE:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field public static final enum boF:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field public static final enum boG:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field private static final synthetic boH:[Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field public static final enum box:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field public static final enum boy:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

.field public static final enum boz:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 59
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->box:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 60
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "NAME"

    const-string v2, "name"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boy:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 61
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "APP_ID"

    const-string v2, "appId"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boz:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 62
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "PACKAGE_NAME"

    const-string v2, "packageName"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boA:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 63
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "CREATE_TIME"

    const-string v2, "createTime"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boB:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 67
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "TYPE"

    const/4 v2, 0x6

    const-string v3, "type"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boC:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 68
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "CIRCLE_CENTER"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "circleCenter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boD:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 69
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "CIRCLE_RADIUS"

    const/4 v2, 0x7

    const/16 v3, 0x9

    const-string v4, "circleRadius"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boE:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 70
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "POLYGON_POINTS"

    const/16 v2, 0x8

    const/16 v3, 0xa

    const-string v4, "polygonPoints"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boF:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 74
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const-string v1, "COORDINATE_PROVIDER"

    const/16 v2, 0x9

    const/16 v3, 0xb

    const-string v4, "coordinateProvider"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boG:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 58
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->box:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boy:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boz:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boA:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boB:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boC:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boD:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boE:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boF:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boG:Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boH:[Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->bjj:Ljava/util/Map;

    .line 79
    const-class v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    .line 80
    sget-object v2, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->bjj:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->_thriftId:S

    .line 137
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->_fieldName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->boH:[Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method
