.class public Lcom/bumptech/glide/load/resource/e/d;
.super Ljava/lang/Object;
.source "TranscoderRegistry.java"


# static fields
.field private static final aWq:Lcom/bumptech/glide/h/g;


# instance fields
.field private final aWr:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/h/g;

    invoke-direct {v0}, Lcom/bumptech/glide/h/g;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/e/d;->aWq:Lcom/bumptech/glide/h/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/e/d;->aWr:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/d;->aWr:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/h/g;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/h/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public g(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/e/c;
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lcom/bumptech/glide/load/resource/e/e;->EP()Lcom/bumptech/glide/load/resource/e/c;

    move-result-object v0

    .line 56
    :cond_0
    return-object v0

    .line 48
    :cond_1
    sget-object v1, Lcom/bumptech/glide/load/resource/e/d;->aWq:Lcom/bumptech/glide/h/g;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/load/resource/e/d;->aWq:Lcom/bumptech/glide/h/g;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/h/g;->i(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/d;->aWr:Ljava/util/Map;

    sget-object v2, Lcom/bumptech/glide/load/resource/e/d;->aWq:Lcom/bumptech/glide/h/g;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/e/c;

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No transcoder registered for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
