.class public Lcom/bumptech/glide/load/resource/d/f;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/e;


# instance fields
.field private final aWj:Lcom/bumptech/glide/load/e;

.field private final aWk:Lcom/bumptech/glide/load/e;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/f;->aWj:Lcom/bumptech/glide/load/e;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/f;->aWk:Lcom/bumptech/glide/load/e;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/v;Ljava/io/OutputStream;)Z
    .locals 2

    .prologue
    .line 28
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/a;

    .line 29
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/a;->EM()Lcom/bumptech/glide/load/engine/v;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->aWj:Lcom/bumptech/glide/load/e;

    invoke-interface {v0, v1, p2}, Lcom/bumptech/glide/load/e;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/f;->aWk:Lcom/bumptech/glide/load/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/a;->EN()Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/bumptech/glide/load/e;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/engine/v;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/d/f;->a(Lcom/bumptech/glide/load/engine/v;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/f;->aWj:Lcom/bumptech/glide/load/e;

    invoke-interface {v1}, Lcom/bumptech/glide/load/e;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/f;->aWk:Lcom/bumptech/glide/load/e;

    invoke-interface {v1}, Lcom/bumptech/glide/load/e;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->id:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->id:Ljava/lang/String;

    return-object v0
.end method
