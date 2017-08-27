.class public Lorg/htmlparser/tags/TableRow;
.super Lorg/htmlparser/tags/CompositeTag;
.source "TableRow.java"


# static fields
.field private static final bxi:[Ljava/lang/String;

.field private static final bxj:[Ljava/lang/String;

.field private static final bxm:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TR"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/TableRow;->bxi:[Ljava/lang/String;

    .line 55
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "TR"

    aput-object v1, v0, v2

    const-string v1, "TBODY"

    aput-object v1, v0, v3

    const-string v1, "TFOOT"

    aput-object v1, v0, v4

    const-string v1, "THEAD"

    aput-object v1, v0, v5

    sput-object v0, Lorg/htmlparser/tags/TableRow;->bxm:[Ljava/lang/String;

    .line 60
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "TBODY"

    aput-object v1, v0, v2

    const-string v1, "TFOOT"

    aput-object v1, v0, v3

    const-string v1, "THEAD"

    aput-object v1, v0, v4

    const-string v1, "TABLE"

    aput-object v1, v0, v5

    sput-object v0, Lorg/htmlparser/tags/TableRow;->bxj:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public OI()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/htmlparser/tags/TableRow;->bxi:[Ljava/lang/String;

    return-object v0
.end method

.method public OJ()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/htmlparser/tags/TableRow;->bxm:[Ljava/lang/String;

    return-object v0
.end method

.method public OK()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lorg/htmlparser/tags/TableRow;->bxj:[Ljava/lang/String;

    return-object v0
.end method
