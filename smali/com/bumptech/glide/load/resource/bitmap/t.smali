.class public Lcom/bumptech/glide/load/resource/bitmap/t;
.super Ljava/lang/Object;
.source "StreamBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/b;


# instance fields
.field private final aUO:Lcom/bumptech/glide/load/resource/bitmap/b;

.field private final aVl:Lcom/bumptech/glide/load/resource/bitmap/u;

.field private final aVm:Lcom/bumptech/glide/load/b/v;

.field private final aVn:Lcom/bumptech/glide/load/resource/b/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/b/v;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/v;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aVm:Lcom/bumptech/glide/load/b/v;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aVl:Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aUO:Lcom/bumptech/glide/load/resource/bitmap/b;

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/resource/b/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aVl:Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/b/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aVn:Lcom/bumptech/glide/load/resource/b/c;

    .line 32
    return-void
.end method


# virtual methods
.method public Ep()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aVn:Lcom/bumptech/glide/load/resource/b/c;

    return-object v0
.end method

.method public Eq()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aVl:Lcom/bumptech/glide/load/resource/bitmap/u;

    return-object v0
.end method

.method public Er()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aVm:Lcom/bumptech/glide/load/b/v;

    return-object v0
.end method

.method public Es()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aUO:Lcom/bumptech/glide/load/resource/bitmap/b;

    return-object v0
.end method
