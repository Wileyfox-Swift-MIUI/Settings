.class public final enum Lcom/xiaomi/xmpush/thrift/Location$_Fields;
.super Ljava/lang/Enum;
.source "Location.java"


# static fields
.field private static final bjj:Ljava/util/Map;

.field public static final enum boN:Lcom/xiaomi/xmpush/thrift/Location$_Fields;

.field public static final enum boO:Lcom/xiaomi/xmpush/thrift/Location$_Fields;

.field private static final synthetic boP:[Lcom/xiaomi/xmpush/thrift/Location$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 35
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    const-string v1, "LONGITUDE"

    const-string v2, "longitude"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/xiaomi/xmpush/thrift/Location$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->boN:Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    .line 36
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    const-string v1, "LATITUDE"

    const-string v2, "latitude"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/xiaomi/xmpush/thrift/Location$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->boO:Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    .line 34
    new-array v0, v5, [Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->boN:Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->boO:Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->boP:[Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->bjj:Ljava/util/Map;

    .line 41
    const-class v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    .line 42
    sget-object v2, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->bjj:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->_thriftId:S

    .line 83
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->_fieldName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/Location$_Fields;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/Location$_Fields;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->boP:[Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/Location$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/Location$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method
