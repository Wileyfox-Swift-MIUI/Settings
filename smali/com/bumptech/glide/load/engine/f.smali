.class Lcom/bumptech/glide/load/engine/f;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field private final aPt:Ljava/util/concurrent/ExecutorService;

.field private final aPu:Ljava/util/concurrent/ExecutorService;

.field private final aSq:Lcom/bumptech/glide/load/engine/o;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/o;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/f;->aPu:Ljava/util/concurrent/ExecutorService;

    .line 375
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/f;->aPt:Ljava/util/concurrent/ExecutorService;

    .line 376
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/f;->aSq:Lcom/bumptech/glide/load/engine/o;

    .line 377
    return-void
.end method


# virtual methods
.method public c(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/k;
    .locals 6

    .prologue
    .line 380
    new-instance v0, Lcom/bumptech/glide/load/engine/k;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/f;->aPu:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/f;->aPt:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/f;->aSq:Lcom/bumptech/glide/load/engine/o;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/k;-><init>(Lcom/bumptech/glide/load/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/o;)V

    return-object v0
.end method
