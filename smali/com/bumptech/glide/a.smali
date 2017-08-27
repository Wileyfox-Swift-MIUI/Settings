.class public Lcom/bumptech/glide/a;
.super Lcom/bumptech/glide/c;
.source "DrawableRequestBuilder.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;)V
    .locals 8

    .prologue
    .line 48
    const-class v4, Lcom/bumptech/glide/load/resource/a/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;)V

    .line 50
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->Cj()Lcom/bumptech/glide/a;

    .line 51
    return-void
.end method


# virtual methods
.method public C(II)Lcom/bumptech/glide/a;
    .locals 0

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/c;->D(II)Lcom/bumptech/glide/c;

    .line 396
    return-object p0
.end method

.method public Ch()Lcom/bumptech/glide/a;
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/f;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/a;->aOA:Lcom/bumptech/glide/h;

    invoke-virtual {v2}, Lcom/bumptech/glide/h;->Cy()Lcom/bumptech/glide/load/resource/d/h;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public Ci()Lcom/bumptech/glide/a;
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/f;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/a;->aOA:Lcom/bumptech/glide/h;

    invoke-virtual {v2}, Lcom/bumptech/glide/h;->Cz()Lcom/bumptech/glide/load/resource/d/h;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public final Cj()Lcom/bumptech/glide/a;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/bumptech/glide/request/a/a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/a;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/c;

    .line 247
    return-object p0
.end method

.method public Ck()Lcom/bumptech/glide/a;
    .locals 1

    .prologue
    .line 431
    invoke-super {p0}, Lcom/bumptech/glide/c;->Cn()Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    return-object v0
.end method

.method Cl()V
    .locals 0

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->Ci()Lcom/bumptech/glide/a;

    .line 454
    return-void
.end method

.method Cm()V
    .locals 0

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->Ch()Lcom/bumptech/glide/a;

    .line 459
    return-void
.end method

.method public synthetic Cn()Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->Ck()Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic D(II)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/a;->C(II)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/a;
    .locals 0

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;

    .line 405
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/a;
    .locals 0

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    .line 420
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/a;
    .locals 0

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;

    .line 116
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/a;
    .locals 0

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    .line 378
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/a;
    .locals 0

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    .line 229
    return-object p0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/b/k;
    .locals 1

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->c(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/b/k;

    move-result-object v0

    return-object v0
.end method

.method public ca(Z)Lcom/bumptech/glide/a;
    .locals 0

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->cb(Z)Lcom/bumptech/glide/c;

    .line 387
    return-object p0
.end method

.method public synthetic cb(Z)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->ca(Z)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->Ck()Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/lang/Object;)Lcom/bumptech/glide/a;
    .locals 0

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->u(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    .line 426
    return-object p0
.end method

.method public synthetic u(Ljava/lang/Object;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->t(Ljava/lang/Object;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method
