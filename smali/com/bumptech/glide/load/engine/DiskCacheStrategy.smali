.class public final enum Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.super Ljava/lang/Enum;
.source "DiskCacheStrategy.java"


# static fields
.field public static final enum aSd:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum aSe:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum aSf:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum aSg:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private static final synthetic aSh:[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;


# instance fields
.field private final cacheResult:Z

.field private final cacheSource:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSd:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 10
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSe:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 12
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSf:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 14
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const-string v1, "RESULT"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSg:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSd:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSe:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSf:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSg:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSh:[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource:Z

    .line 21
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult:Z

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aSh:[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method


# virtual methods
.method public DB()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource:Z

    return v0
.end method

.method public DC()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult:Z

    return v0
.end method
