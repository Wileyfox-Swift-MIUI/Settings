.class public final enum Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
.super Ljava/lang/Enum;
.source "CoordinateProvider.java"


# static fields
.field public static final enum boj:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

.field public static final enum bok:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

.field public static final enum bol:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

.field public static final enum bom:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

.field public static final enum bon:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

.field private static final synthetic boo:[Lcom/xiaomi/xmpush/thrift/CoordinateProvider;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    const-string v1, "Baidu"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->boj:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    .line 16
    new-instance v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    const-string v1, "Tencent"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bok:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    .line 17
    new-instance v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    const-string v1, "AutoNavi"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bol:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    .line 18
    new-instance v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    const-string v1, "Google"

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bom:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    .line 19
    new-instance v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bon:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->boj:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bok:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bol:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bom:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bon:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->boo:[Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->value:I

    .line 25
    return-void
.end method

.method public static fy(I)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    .locals 1

    .prologue
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->boj:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    goto :goto_0

    .line 44
    :pswitch_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bok:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    goto :goto_0

    .line 46
    :pswitch_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bol:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    goto :goto_0

    .line 48
    :pswitch_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bom:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    goto :goto_0

    .line 50
    :pswitch_4
    sget-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->bon:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->boo:[Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->value:I

    return v0
.end method
