.class public Lcom/bumptech/glide/load/resource/bitmap/j;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/b;


# instance fields
.field private final aSH:Lcom/bumptech/glide/load/d;

.field private final aSK:Lcom/bumptech/glide/load/a;

.field private final aUN:Lcom/bumptech/glide/load/resource/bitmap/k;

.field private final aUO:Lcom/bumptech/glide/load/resource/bitmap/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/b/c;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/b/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aSH:Lcom/bumptech/glide/load/d;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aUN:Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aUO:Lcom/bumptech/glide/load/resource/bitmap/b;

    .line 31
    invoke-static {}, Lcom/bumptech/glide/load/resource/a;->Ek()Lcom/bumptech/glide/load/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aSK:Lcom/bumptech/glide/load/a;

    .line 32
    return-void
.end method


# virtual methods
.method public Ep()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aSH:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public Eq()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aUN:Lcom/bumptech/glide/load/resource/bitmap/k;

    return-object v0
.end method

.method public Er()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aSK:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public Es()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aUO:Lcom/bumptech/glide/load/resource/bitmap/b;

    return-object v0
.end method
