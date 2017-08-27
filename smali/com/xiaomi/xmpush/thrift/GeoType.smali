.class public final enum Lcom/xiaomi/xmpush/thrift/GeoType;
.super Ljava/lang/Enum;
.source "GeoType.java"


# static fields
.field public static final enum boI:Lcom/xiaomi/xmpush/thrift/GeoType;

.field public static final enum boJ:Lcom/xiaomi/xmpush/thrift/GeoType;

.field private static final synthetic boK:[Lcom/xiaomi/xmpush/thrift/GeoType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoType;

    const-string v1, "Circle"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/xmpush/thrift/GeoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoType;->boI:Lcom/xiaomi/xmpush/thrift/GeoType;

    .line 15
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoType;

    const-string v1, "Polygon"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/xmpush/thrift/GeoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoType;->boJ:Lcom/xiaomi/xmpush/thrift/GeoType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/GeoType;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoType;->boI:Lcom/xiaomi/xmpush/thrift/GeoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoType;->boJ:Lcom/xiaomi/xmpush/thrift/GeoType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoType;->boK:[Lcom/xiaomi/xmpush/thrift/GeoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/xiaomi/xmpush/thrift/GeoType;->value:I

    .line 21
    return-void
.end method

.method public static fz(I)Lcom/xiaomi/xmpush/thrift/GeoType;
    .locals 1

    .prologue
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 42
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoType;->boI:Lcom/xiaomi/xmpush/thrift/GeoType;

    goto :goto_0

    .line 40
    :pswitch_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoType;->boJ:Lcom/xiaomi/xmpush/thrift/GeoType;

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoType;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/GeoType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/GeoType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GeoType;->boK:[Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/GeoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/GeoType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/GeoType;->value:I

    return v0
.end method
