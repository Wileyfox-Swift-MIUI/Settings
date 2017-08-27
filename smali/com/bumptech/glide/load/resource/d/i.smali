.class public Lcom/bumptech/glide/load/resource/d/i;
.super Ljava/lang/Object;
.source "ImageVideoGifDrawableLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/b;


# instance fields
.field private final aSH:Lcom/bumptech/glide/load/d;

.field private final aSJ:Lcom/bumptech/glide/load/e;

.field private final aSK:Lcom/bumptech/glide/load/a;

.field private final aWo:Lcom/bumptech/glide/load/d;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/engine/a/e;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->Eq()Lcom/bumptech/glide/load/d;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/f/b;->Eq()Lcom/bumptech/glide/load/d;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/e;)V

    .line 36
    new-instance v1, Lcom/bumptech/glide/load/resource/b/c;

    new-instance v2, Lcom/bumptech/glide/load/resource/d/g;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/resource/d/g;-><init>(Lcom/bumptech/glide/load/d;)V

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/b/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/d/i;->aSH:Lcom/bumptech/glide/load/d;

    .line 37
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->aWo:Lcom/bumptech/glide/load/d;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/d/f;

    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->Es()Lcom/bumptech/glide/load/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/f/b;->Es()Lcom/bumptech/glide/load/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/d/f;-><init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->aSJ:Lcom/bumptech/glide/load/e;

    .line 41
    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->Er()Lcom/bumptech/glide/load/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->aSK:Lcom/bumptech/glide/load/a;

    .line 42
    return-void
.end method


# virtual methods
.method public Ep()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->aSH:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public Eq()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->aWo:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public Er()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->aSK:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public Es()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->aSJ:Lcom/bumptech/glide/load/e;

    return-object v0
.end method
