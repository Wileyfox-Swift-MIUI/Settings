.class public Lcom/bumptech/glide/f;
.super Lcom/bumptech/glide/c;
.source "GifRequestBuilder.java"


# direct methods
.method constructor <init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/c;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/c;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/c;)V

    .line 42
    return-void
.end method

.method private c([Lcom/bumptech/glide/load/f;)[Lcom/bumptech/glide/load/resource/c/f;
    .locals 5

    .prologue
    .line 197
    array-length v0, p1

    new-array v1, v0, [Lcom/bumptech/glide/load/resource/c/f;

    .line 198
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 199
    new-instance v2, Lcom/bumptech/glide/load/resource/c/f;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/bumptech/glide/f;->aOA:Lcom/bumptech/glide/h;

    invoke-virtual {v4}, Lcom/bumptech/glide/h;->Cu()Lcom/bumptech/glide/load/engine/a/e;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/c/f;-><init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/a/e;)V

    aput-object v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v1
.end method


# virtual methods
.method Cl()V
    .locals 0

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->Cr()Lcom/bumptech/glide/f;

    .line 427
    return-void
.end method

.method Cm()V
    .locals 0

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->Cq()Lcom/bumptech/glide/f;

    .line 432
    return-void
.end method

.method public synthetic Cn()Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->Ct()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public Cq()Lcom/bumptech/glide/f;
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/f;->aOA:Lcom/bumptech/glide/h;

    invoke-virtual {v2}, Lcom/bumptech/glide/h;->Cw()Lcom/bumptech/glide/load/resource/bitmap/e;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/f;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public Cr()Lcom/bumptech/glide/f;
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/f;->aOA:Lcom/bumptech/glide/h;

    invoke-virtual {v2}, Lcom/bumptech/glide/h;->Cx()Lcom/bumptech/glide/load/resource/bitmap/l;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/f;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public Cs()Lcom/bumptech/glide/f;
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lcom/bumptech/glide/request/a/a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/a;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/c;

    .line 234
    return-object p0
.end method

.method public Ct()Lcom/bumptech/glide/f;
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Lcom/bumptech/glide/c;->Cn()Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public synthetic D(II)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/f;->E(II)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public E(II)Lcom/bumptech/glide/f;
    .locals 0

    .prologue
    .line 385
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/c;->D(II)Lcom/bumptech/glide/c;

    .line 386
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/f;
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f;->c([Lcom/bumptech/glide/load/f;)[Lcom/bumptech/glide/load/resource/c/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/f;->d([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->c(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->c(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->c(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->c(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->d([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;
    .locals 0

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;

    .line 395
    return-object p0
.end method

.method public c(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/f;
    .locals 0

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    .line 410
    return-object p0
.end method

.method public c(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/f;
    .locals 0

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;

    .line 106
    return-object p0
.end method

.method public c(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/f;
    .locals 0

    .prologue
    .line 376
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    .line 377
    return-object p0
.end method

.method public synthetic cb(Z)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->cc(Z)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public cc(Z)Lcom/bumptech/glide/f;
    .locals 0

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->cb(Z)Lcom/bumptech/glide/c;

    .line 368
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->Ct()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public varargs d([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;
    .locals 0

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    .line 216
    return-object p0
.end method

.method public synthetic u(Ljava/lang/Object;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->v(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/Object;)Lcom/bumptech/glide/f;
    .locals 0

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->u(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    .line 416
    return-object p0
.end method
