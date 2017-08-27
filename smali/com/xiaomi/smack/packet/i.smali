.class public Lcom/xiaomi/smack/packet/i;
.super Ljava/lang/Object;
.source "XMPPError.java"


# static fields
.field public static final blA:Lcom/xiaomi/smack/packet/i;

.field public static final blB:Lcom/xiaomi/smack/packet/i;

.field public static final blC:Lcom/xiaomi/smack/packet/i;

.field public static final blD:Lcom/xiaomi/smack/packet/i;

.field public static final blE:Lcom/xiaomi/smack/packet/i;

.field public static final blF:Lcom/xiaomi/smack/packet/i;

.field public static final blG:Lcom/xiaomi/smack/packet/i;

.field public static final blH:Lcom/xiaomi/smack/packet/i;

.field public static final blI:Lcom/xiaomi/smack/packet/i;

.field public static final blJ:Lcom/xiaomi/smack/packet/i;

.field public static final blK:Lcom/xiaomi/smack/packet/i;

.field public static final blL:Lcom/xiaomi/smack/packet/i;

.field public static final blM:Lcom/xiaomi/smack/packet/i;

.field public static final blN:Lcom/xiaomi/smack/packet/i;

.field public static final blO:Lcom/xiaomi/smack/packet/i;

.field public static final blP:Lcom/xiaomi/smack/packet/i;

.field public static final blQ:Lcom/xiaomi/smack/packet/i;

.field public static final blt:Lcom/xiaomi/smack/packet/i;

.field public static final blu:Lcom/xiaomi/smack/packet/i;

.field public static final blv:Lcom/xiaomi/smack/packet/i;

.field public static final blw:Lcom/xiaomi/smack/packet/i;

.field public static final blx:Lcom/xiaomi/smack/packet/i;

.field public static final bly:Lcom/xiaomi/smack/packet/i;

.field public static final blz:Lcom/xiaomi/smack/packet/i;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "internal-server-error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blt:Lcom/xiaomi/smack/packet/i;

    .line 461
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "forbidden"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blu:Lcom/xiaomi/smack/packet/i;

    .line 462
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "bad-request"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blv:Lcom/xiaomi/smack/packet/i;

    .line 463
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "conflict"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blw:Lcom/xiaomi/smack/packet/i;

    .line 464
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "feature-not-implemented"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blx:Lcom/xiaomi/smack/packet/i;

    .line 466
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "gone"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bly:Lcom/xiaomi/smack/packet/i;

    .line 467
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "item-not-found"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blz:Lcom/xiaomi/smack/packet/i;

    .line 468
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "jid-malformed"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blA:Lcom/xiaomi/smack/packet/i;

    .line 469
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "not-acceptable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blB:Lcom/xiaomi/smack/packet/i;

    .line 470
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "not-allowed"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blC:Lcom/xiaomi/smack/packet/i;

    .line 471
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "not-authorized"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blD:Lcom/xiaomi/smack/packet/i;

    .line 472
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "payment-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blE:Lcom/xiaomi/smack/packet/i;

    .line 473
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "recipient-unavailable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blF:Lcom/xiaomi/smack/packet/i;

    .line 474
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "redirect"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blG:Lcom/xiaomi/smack/packet/i;

    .line 475
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "registration-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blH:Lcom/xiaomi/smack/packet/i;

    .line 476
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "remote-server-error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blI:Lcom/xiaomi/smack/packet/i;

    .line 477
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "remote-server-not-found"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blJ:Lcom/xiaomi/smack/packet/i;

    .line 479
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "remote-server-timeout"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blK:Lcom/xiaomi/smack/packet/i;

    .line 480
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "resource-constraint"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blL:Lcom/xiaomi/smack/packet/i;

    .line 481
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "service-unavailable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blM:Lcom/xiaomi/smack/packet/i;

    .line 482
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "subscription-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blN:Lcom/xiaomi/smack/packet/i;

    .line 483
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "undefined-condition"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blO:Lcom/xiaomi/smack/packet/i;

    .line 484
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "unexpected-request"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blP:Lcom/xiaomi/smack/packet/i;

    .line 485
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "request-timeout"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->blQ:Lcom/xiaomi/smack/packet/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/xiaomi/smack/packet/i;->value:Ljava/lang/String;

    .line 491
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/smack/packet/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/xiaomi/smack/packet/i;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/xiaomi/smack/packet/i;->value:Ljava/lang/String;

    return-object v0
.end method
