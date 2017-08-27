.class public Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
.super Ljava/lang/Object;
.source "XmPushActionAckMessage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final biN:Lorg/apache/thrift/protocol/g;

.field public static final biY:Ljava/util/Map;

.field private static final bmY:Lorg/apache/thrift/protocol/a;

.field private static final bop:Lorg/apache/thrift/protocol/a;

.field private static final boq:Lorg/apache/thrift/protocol/a;

.field private static final bor:Lorg/apache/thrift/protocol/a;

.field private static final bqY:Lorg/apache/thrift/protocol/a;

.field private static final bqZ:Lorg/apache/thrift/protocol/a;

.field private static final bqi:Lorg/apache/thrift/protocol/a;

.field private static final bqj:Lorg/apache/thrift/protocol/a;

.field private static final bqo:Lorg/apache/thrift/protocol/a;

.field private static final bqq:Lorg/apache/thrift/protocol/a;

.field private static final bra:Lorg/apache/thrift/protocol/a;

.field private static final brb:Lorg/apache/thrift/protocol/a;

.field private static final brc:Lorg/apache/thrift/protocol/a;

.field private static final brd:Lorg/apache/thrift/protocol/a;

.field private static final bre:Lorg/apache/thrift/protocol/a;

.field private static final brf:Lorg/apache/thrift/protocol/a;

.field private static final brg:Lorg/apache/thrift/protocol/a;

.field private static final brh:Lorg/apache/thrift/protocol/a;

.field private static final bri:Lorg/apache/thrift/protocol/a;

.field private static final brj:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public callbackUrl:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public deviceStatus:S

.field public extra:Ljava/util/Map;

.field public geoMsgStatus:S

.field public id:Ljava/lang/String;

.field public imeiMd5:Ljava/lang/String;

.field public isOnline:Z

.field public messageTs:J

.field public packageName:Ljava/lang/String;

.field public passThrough:I

.field public regId:Ljava/lang/String;

.field public request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;

.field public userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v7, 0xc

    const/4 v6, 0x6

    const/4 v9, 0x2

    const/16 v8, 0xb

    .line 23
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionAckMessage"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->biN:Lorg/apache/thrift/protocol/g;

    .line 25
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v8, v10}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqY:Lorg/apache/thrift/protocol/a;

    .line 26
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v7, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqZ:Lorg/apache/thrift/protocol/a;

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bop:Lorg/apache/thrift/protocol/a;

    .line 28
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->boq:Lorg/apache/thrift/protocol/a;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "messageTs"

    const/16 v2, 0xa

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqi:Lorg/apache/thrift/protocol/a;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "topic"

    invoke-direct {v0, v1, v8, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqj:Lorg/apache/thrift/protocol/a;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "aliasName"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bra:Lorg/apache/thrift/protocol/a;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "request"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brb:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bor:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmY:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "isOnline"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brc:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "regId"

    invoke-direct {v0, v1, v8, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brd:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "callbackUrl"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bre:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "userAccount"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brf:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "deviceStatus"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brg:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "geoMsgStatus"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brh:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "imeiMd5"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bri:Lorg/apache/thrift/protocol/a;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "deviceId"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brj:Lorg/apache/thrift/protocol/a;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "passThrough"

    const/16 v2, 0x8

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqo:Lorg/apache/thrift/protocol/a;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "extra"

    const/16 v2, 0xd

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqq:Lorg/apache/thrift/protocol/a;

    .line 192
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 193
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brk:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brl:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v7, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brm:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brn:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bro:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "messageTs"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brp:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "topic"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brq:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "aliasName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brr:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "request"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v4, v7, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brs:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brt:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bru:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "isOnline"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brv:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "regId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brw:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "callbackUrl"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brx:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "userAccount"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bry:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "deviceStatus"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brz:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "geoMsgStatus"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brA:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "imeiMd5"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brB:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "deviceId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brC:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "passThrough"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->brD:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "extra"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    const/16 v5, 0xd

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v7, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v7, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->biY:Ljava/util/Map;

    .line 236
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->biY:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 237
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    .line 242
    return-void
.end method


# virtual methods
.method public LB()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LC()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ly()Z
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

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
    .line 422
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ME()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MF()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MG()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MH()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MI()Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public MJ()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MK()Z
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ML()Z
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MM()Z
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public MN()Z
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public MO()Z
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MP()Z
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ml()Z
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Mm()Z
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mr()Z
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Mt()Z
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public P(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 1

    .prologue
    .line 460
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    .line 461
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->cT(Z)V

    .line 462
    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 1545
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Ob()Lorg/apache/thrift/protocol/g;

    .line 1548
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Od()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 1549
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 1717
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oc()V

    .line 1720
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ml()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1721
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1552
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bwe:S

    packed-switch v1, :pswitch_data_0

    .line 1713
    :pswitch_0
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 1715
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oe()V

    goto :goto_0

    .line 1554
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_1

    .line 1555
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    goto :goto_1

    .line 1557
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1561
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v8, :cond_2

    .line 1562
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 1563
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 1565
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1569
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_3

    .line 1570
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    goto :goto_1

    .line 1572
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1576
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_4

    .line 1577
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    goto :goto_1

    .line 1579
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1583
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 1584
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->On()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    .line 1585
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->cT(Z)V

    goto :goto_1

    .line 1587
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1591
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_6

    .line 1592
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    goto :goto_1

    .line 1594
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1598
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_7

    .line 1599
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    goto :goto_1

    .line 1601
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1605
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v8, :cond_8

    .line 1606
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 1607
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->a(Lorg/apache/thrift/protocol/d;)V

    goto/16 :goto_1

    .line 1609
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1613
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_9

    .line 1614
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1616
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1620
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_a

    .line 1621
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 1623
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1627
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 1628
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    .line 1629
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->da(Z)V

    goto/16 :goto_1

    .line 1631
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1635
    :pswitch_c
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_c

    .line 1636
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1638
    :cond_c
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1642
    :pswitch_d
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_d

    .line 1643
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 1645
    :cond_d
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1649
    :pswitch_e
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_e

    .line 1650
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    goto/16 :goto_1

    .line 1652
    :cond_e
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1656
    :pswitch_f
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v7, :cond_f

    .line 1657
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Ol()S

    move-result v0

    iput-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    .line 1658
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->db(Z)V

    goto/16 :goto_1

    .line 1660
    :cond_f
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1664
    :pswitch_10
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v7, :cond_10

    .line 1665
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Ol()S

    move-result v0

    iput-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    .line 1666
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dc(Z)V

    goto/16 :goto_1

    .line 1668
    :cond_10
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1672
    :pswitch_11
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_11

    .line 1673
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    goto/16 :goto_1

    .line 1675
    :cond_11
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1679
    :pswitch_12
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_12

    .line 1680
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1682
    :cond_12
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1686
    :pswitch_13
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_13

    .line 1687
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Om()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    .line 1688
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->cV(Z)V

    goto/16 :goto_1

    .line 1690
    :cond_13
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1694
    :pswitch_14
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_15

    .line 1696
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Of()Lorg/apache/thrift/protocol/c;

    move-result-object v1

    .line 1697
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    .line 1698
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v2, :cond_14

    .line 1702
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1703
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1704
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1706
    :cond_14
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Og()V

    goto/16 :goto_1

    .line 1709
    :cond_15
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1723
    :cond_16
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->validate()V

    .line 1724
    return-void

    .line 1552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1137
    if-nez p1, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return v0

    .line 1140
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ME()Z

    move-result v1

    .line 1141
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ME()Z

    move-result v2

    .line 1142
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1143
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1149
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MF()Z

    move-result v1

    .line 1150
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MF()Z

    move-result v2

    .line 1151
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 1152
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v1

    .line 1159
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v2

    .line 1160
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 1161
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LB()Z

    move-result v1

    .line 1168
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LB()Z

    move-result v2

    .line 1169
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 1170
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    :cond_9
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mm()Z

    move-result v1

    .line 1186
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mm()Z

    move-result v2

    .line 1187
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 1188
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1194
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MG()Z

    move-result v1

    .line 1195
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MG()Z

    move-result v2

    .line 1196
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 1197
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MH()Z

    move-result v1

    .line 1204
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MH()Z

    move-result v2

    .line 1205
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 1206
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1208
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LC()Z

    move-result v1

    .line 1213
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LC()Z

    move-result v2

    .line 1214
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 1215
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1217
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v1

    .line 1222
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v2

    .line 1223
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 1224
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MI()Z

    move-result v1

    .line 1231
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MI()Z

    move-result v2

    .line 1232
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 1233
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1235
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    if-ne v1, v2, :cond_0

    .line 1239
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MJ()Z

    move-result v1

    .line 1240
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MJ()Z

    move-result v2

    .line 1241
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 1242
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MK()Z

    move-result v1

    .line 1249
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MK()Z

    move-result v2

    .line 1250
    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    .line 1251
    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ML()Z

    move-result v1

    .line 1258
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ML()Z

    move-result v2

    .line 1259
    if-nez v1, :cond_1a

    if-eqz v2, :cond_1b

    .line 1260
    :cond_1a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1262
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MM()Z

    move-result v1

    .line 1267
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MM()Z

    move-result v2

    .line 1268
    if-nez v1, :cond_1c

    if-eqz v2, :cond_1d

    .line 1269
    :cond_1c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1271
    iget-short v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    iget-short v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    if-ne v1, v2, :cond_0

    .line 1275
    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MN()Z

    move-result v1

    .line 1276
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MN()Z

    move-result v2

    .line 1277
    if-nez v1, :cond_1e

    if-eqz v2, :cond_1f

    .line 1278
    :cond_1e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1280
    iget-short v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    iget-short v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    if-ne v1, v2, :cond_0

    .line 1284
    :cond_1f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MO()Z

    move-result v1

    .line 1285
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MO()Z

    move-result v2

    .line 1286
    if-nez v1, :cond_20

    if-eqz v2, :cond_21

    .line 1287
    :cond_20
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MP()Z

    move-result v1

    .line 1294
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MP()Z

    move-result v2

    .line 1295
    if-nez v1, :cond_22

    if-eqz v2, :cond_23

    .line 1296
    :cond_22
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1298
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1302
    :cond_23
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mr()Z

    move-result v1

    .line 1303
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mr()Z

    move-result v2

    .line 1304
    if-nez v1, :cond_24

    if-eqz v2, :cond_25

    .line 1305
    :cond_24
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1307
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    if-ne v1, v2, :cond_0

    .line 1311
    :cond_25
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mt()Z

    move-result v1

    .line 1312
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mt()Z

    move-result v2

    .line 1313
    if-nez v1, :cond_26

    if-eqz v2, :cond_27

    .line 1314
    :cond_26
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    :cond_27
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)I
    .locals 4

    .prologue
    .line 1329
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1330
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

    .line 1536
    :cond_0
    :goto_0
    return v0

    .line 1336
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ME()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ME()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1337
    if-nez v0, :cond_0

    .line 1340
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ME()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1341
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1342
    if-nez v0, :cond_0

    .line 1346
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MF()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MF()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1347
    if-nez v0, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MF()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1351
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1352
    if-nez v0, :cond_0

    .line 1356
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1357
    if-nez v0, :cond_0

    .line 1360
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1361
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1362
    if-nez v0, :cond_0

    .line 1366
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LB()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LB()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1367
    if-nez v0, :cond_0

    .line 1370
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LB()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1371
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1372
    if-nez v0, :cond_0

    .line 1376
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ml()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ml()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1377
    if-nez v0, :cond_0

    .line 1380
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ml()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1381
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 1382
    if-nez v0, :cond_0

    .line 1386
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mm()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1387
    if-nez v0, :cond_0

    .line 1390
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mm()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1391
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1392
    if-nez v0, :cond_0

    .line 1396
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MG()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MG()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1397
    if-nez v0, :cond_0

    .line 1400
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MG()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1401
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1402
    if-nez v0, :cond_0

    .line 1406
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MH()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MH()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1407
    if-nez v0, :cond_0

    .line 1410
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MH()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1411
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1412
    if-nez v0, :cond_0

    .line 1416
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LC()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LC()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1417
    if-nez v0, :cond_0

    .line 1420
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LC()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1421
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1422
    if-nez v0, :cond_0

    .line 1426
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1427
    if-nez v0, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1431
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1432
    if-nez v0, :cond_0

    .line 1436
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MI()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MI()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1437
    if-nez v0, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MI()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1441
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 1442
    if-nez v0, :cond_0

    .line 1446
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MJ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MJ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1447
    if-nez v0, :cond_0

    .line 1450
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MJ()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1451
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1452
    if-nez v0, :cond_0

    .line 1456
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MK()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MK()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1457
    if-nez v0, :cond_0

    .line 1460
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MK()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1461
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1462
    if-nez v0, :cond_0

    .line 1466
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ML()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ML()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1467
    if-nez v0, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ML()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1471
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1472
    if-nez v0, :cond_0

    .line 1476
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1477
    if-nez v0, :cond_0

    .line 1480
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MM()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1481
    iget-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    iget-short v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(SS)I

    move-result v0

    .line 1482
    if-nez v0, :cond_0

    .line 1486
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1487
    if-nez v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MN()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1491
    iget-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    iget-short v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(SS)I

    move-result v0

    .line 1492
    if-nez v0, :cond_0

    .line 1496
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MO()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MO()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1497
    if-nez v0, :cond_0

    .line 1500
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MO()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1501
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1502
    if-nez v0, :cond_0

    .line 1506
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MP()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MP()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1507
    if-nez v0, :cond_0

    .line 1510
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MP()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1511
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1512
    if-nez v0, :cond_0

    .line 1516
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1517
    if-nez v0, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mr()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1521
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->M(II)I

    move-result v0

    .line 1522
    if-nez v0, :cond_0

    .line 1526
    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mt()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1527
    if-nez v0, :cond_0

    .line 1530
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mt()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1531
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 1532
    if-nez v0, :cond_0

    .line 1536
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 1727
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->validate()V

    .line 1729
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->biN:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 1730
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1731
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ME()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqY:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1733
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 1738
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqZ:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1740
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1741
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1744
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1745
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bop:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1746
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1749
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1750
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->boq:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1751
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1754
    :cond_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqi:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1755
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->Q(J)V

    .line 1756
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1757
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1758
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mm()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1759
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqj:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1760
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1764
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1765
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1766
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bra:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1767
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1771
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-eqz v0, :cond_6

    .line 1772
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MH()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1773
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brb:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1774
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1775
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1778
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1779
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LC()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1780
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bor:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1781
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1785
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1786
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1787
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmY:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1788
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1792
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MI()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1793
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brc:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1794
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->dp(Z)V

    .line 1795
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1797
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1798
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MJ()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1799
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brd:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1800
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1804
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1805
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MK()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1806
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bre:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1807
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1811
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1812
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ML()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1813
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brf:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1814
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1818
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MM()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1819
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brg:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1820
    iget-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->e(S)V

    .line 1821
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1823
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MN()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1824
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brh:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1825
    iget-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->e(S)V

    .line 1826
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1828
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1829
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MO()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1830
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bri:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1831
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1835
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1836
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MP()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1837
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->brj:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1838
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1842
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mr()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1843
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqo:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1844
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fB(I)V

    .line 1845
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1847
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    if-eqz v0, :cond_13

    .line 1848
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mt()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1849
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bqq:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1851
    new-instance v0, Lorg/apache/thrift/protocol/c;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/c;)V

    .line 1852
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1854
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1855
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1857
    :cond_12
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NY()V

    .line 1859
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 1862
    :cond_13
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NX()V

    .line 1863
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NV()V

    .line 1864
    return-void
.end method

.method public c(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 1

    .prologue
    .line 698
    iput-short p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    .line 699
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->db(Z)V

    .line 700
    return-object p0
.end method

.method public cT(Z)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 476
    return-void
.end method

.method public cV(Z)V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 808
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)I

    move-result v0

    return v0
.end method

.method public d(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 1

    .prologue
    .line 721
    iput-short p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    .line 722
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dc(Z)V

    .line 723
    return-object p0
.end method

.method public da(Z)V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 619
    return-void
.end method

.method public db(Z)V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 714
    return-void
.end method

.method public dc(Z)V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 737
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1129
    if-nez p1, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return v0

    .line 1131
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    if-eqz v1, :cond_0

    .line 1132
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public fc(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public fd(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    .line 437
    return-object p0
.end method

.method public fe(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    .line 484
    return-object p0
.end method

.method public ff(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    .line 508
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1325
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1868
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionAckMessage("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1869
    const/4 v0, 0x1

    .line 1871
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ME()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1872
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 1874
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1880
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MF()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1881
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_13

    .line 1884
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 1893
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1901
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    :goto_3
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    const-string v0, "messageTs:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1910
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1911
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    const-string v0, "topic:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 1914
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1921
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 1924
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MH()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1931
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    const-string v0, "request:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-nez v0, :cond_18

    .line 1934
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->LC()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1941
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 1944
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    :cond_6
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1951
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 1954
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MI()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1961
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    const-string v0, "isOnline:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1966
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MJ()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1967
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    const-string v0, "regId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 1970
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    :cond_9
    :goto_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MK()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1977
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    const-string v0, "callbackUrl:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 1980
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ML()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1987
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    const-string v0, "userAccount:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 1990
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MM()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1997
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    const-string v0, "deviceStatus:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    iget-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2002
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MN()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2003
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    const-string v0, "geoMsgStatus:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    iget-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2008
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MO()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2009
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2010
    const-string v0, "imeiMd5:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 2012
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    :cond_e
    :goto_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MP()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2019
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    const-string v0, "deviceId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 2022
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    :cond_f
    :goto_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mr()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2029
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    const-string v0, "passThrough:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2034
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Mt()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2035
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    const-string v0, "extra:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    if-nez v0, :cond_20

    .line 2038
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    :cond_11
    :goto_e
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1876
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1886
    :cond_13
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1895
    :cond_14
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1903
    :cond_15
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1916
    :cond_16
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1926
    :cond_17
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1936
    :cond_18
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1946
    :cond_19
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1956
    :cond_1a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1972
    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1982
    :cond_1c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1992
    :cond_1d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 2014
    :cond_1e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 2024
    :cond_1f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 2040
    :cond_20
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_21
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2051
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2053
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2054
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2057
    :cond_1
    return-void
.end method
