.class public final enum Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;
.super Ljava/lang/Enum;
.source "ClientUploadData.java"


# static fields
.field private static final bjj:Ljava/util/Map;

.field public static final enum bmQ:Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

.field private static final synthetic bmR:[Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    const-string v1, "UPLOAD_DATA_ITEMS"

    const-string v2, "uploadDataItems"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->bmQ:Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    .line 28
    new-array v0, v4, [Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->bmQ:Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->bmR:[Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->bjj:Ljava/util/Map;

    .line 34
    const-class v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    .line 35
    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->bjj:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->_thriftId:S

    .line 73
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->_fieldName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->bmR:[Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method
