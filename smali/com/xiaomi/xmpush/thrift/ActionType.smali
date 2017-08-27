.class public final enum Lcom/xiaomi/xmpush/thrift/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# static fields
.field public static final enum bmC:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmD:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmE:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmF:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmG:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmH:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmI:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmJ:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmK:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmL:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmM:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum bmN:Lcom/xiaomi/xmpush/thrift/ActionType;

.field private static final synthetic bmO:[Lcom/xiaomi/xmpush/thrift/ActionType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 15
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Registration"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmC:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 16
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "UnRegistration"

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmD:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 17
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Subscription"

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmE:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 18
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "UnSubscription"

    invoke-direct {v0, v1, v6, v7}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmF:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 19
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "SendMessage"

    invoke-direct {v0, v1, v7, v8}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmG:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 20
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "AckMessage"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmH:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 21
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "SetConfig"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmI:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 22
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "ReportFeedback"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmJ:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 23
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Notification"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmK:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 24
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Command"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmL:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 25
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "MultiConnectionBroadcast"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmM:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 26
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "MultiConnectionResult"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmN:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 14
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmC:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->bmD:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->bmE:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->bmF:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->bmG:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->bmH:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmI:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmJ:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmK:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmL:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmM:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmN:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmO:[Lcom/xiaomi/xmpush/thrift/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/xiaomi/xmpush/thrift/ActionType;->value:I

    .line 32
    return-void
.end method

.method public static fv(I)Lcom/xiaomi/xmpush/thrift/ActionType;
    .locals 1

    .prologue
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmC:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmD:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmE:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmF:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 56
    :pswitch_4
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmG:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 58
    :pswitch_5
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmH:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 60
    :pswitch_6
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmI:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 62
    :pswitch_7
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmJ:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 64
    :pswitch_8
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmK:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 66
    :pswitch_9
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmL:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 68
    :pswitch_a
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmM:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 70
    :pswitch_b
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmN:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ActionType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/ActionType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bmO:[Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/ActionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/ActionType;->value:I

    return v0
.end method
