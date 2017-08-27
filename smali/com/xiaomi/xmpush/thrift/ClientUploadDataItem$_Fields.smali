.class public final enum Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;
.super Ljava/lang/Enum;
.source "ClientUploadDataItem.java"


# static fields
.field private static final bjj:Ljava/util/Map;

.field public static final enum bmZ:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

.field public static final enum bna:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

.field public static final enum bnb:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

.field public static final enum bnc:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

.field public static final enum bnd:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

.field public static final enum bne:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

.field public static final enum bnf:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

.field private static final synthetic bng:[Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;


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

    .line 40
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    const-string v1, "CHANNEL"

    const/4 v2, 0x0

    const-string v3, "channel"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bmZ:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    .line 41
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    const-string v1, "DATA"

    const-string v2, "data"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bna:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    .line 42
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    const-string v1, "NAME"

    const-string v2, "name"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnb:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    .line 43
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    const-string v1, "COUNTER"

    const-string v2, "counter"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnc:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    .line 44
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    const-string v1, "TIMESTAMP"

    const-string v2, "timestamp"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnd:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    .line 45
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    const-string v1, "FROM_SDK"

    const/4 v2, 0x6

    const-string v3, "fromSdk"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bne:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    .line 46
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    const-string v1, "CATEGORY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "category"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnf:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bmZ:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bna:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnb:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnc:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnd:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bne:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnf:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bng:[Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bjj:Ljava/util/Map;

    .line 51
    const-class v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    .line 52
    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bjj:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->_thriftId:S

    .line 102
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->_fieldName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bng:[Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method
