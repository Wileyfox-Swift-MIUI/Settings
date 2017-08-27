.class final enum Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
.super Ljava/lang/Enum;
.source "EngineRunnable.java"


# static fields
.field public static final enum aST:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field public static final enum aSU:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field private static final synthetic aSV:[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->aST:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 134
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->aSU:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    sget-object v1, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->aST:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->aSU:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->aSV:[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->aSV:[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    return-object v0
.end method
