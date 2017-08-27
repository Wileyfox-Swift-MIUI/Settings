.class public Lcom/bumptech/glide/f/e;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/f;


# instance fields
.field private final aPc:Lcom/bumptech/glide/load/b/s;

.field private final aRY:Lcom/bumptech/glide/load/resource/e/c;

.field private final aWR:Lcom/bumptech/glide/f/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/f/b;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ModelLoader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/f/e;->aPc:Lcom/bumptech/glide/load/b/s;

    .line 32
    if-nez p2, :cond_1

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transcoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/bumptech/glide/f/e;->aRY:Lcom/bumptech/glide/load/resource/e/c;

    .line 37
    if-nez p3, :cond_2

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DataLoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lcom/bumptech/glide/f/e;->aWR:Lcom/bumptech/glide/f/b;

    .line 41
    return-void
.end method


# virtual methods
.method public EW()Lcom/bumptech/glide/load/b/s;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aPc:Lcom/bumptech/glide/load/b/s;

    return-object v0
.end method

.method public EX()Lcom/bumptech/glide/load/resource/e/c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aRY:Lcom/bumptech/glide/load/resource/e/c;

    return-object v0
.end method

.method public Ep()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aWR:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->Ep()Lcom/bumptech/glide/load/d;

    move-result-object v0

    return-object v0
.end method

.method public Eq()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aWR:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->Eq()Lcom/bumptech/glide/load/d;

    move-result-object v0

    return-object v0
.end method

.method public Er()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aWR:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->Er()Lcom/bumptech/glide/load/a;

    move-result-object v0

    return-object v0
.end method

.method public Es()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aWR:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->Es()Lcom/bumptech/glide/load/e;

    move-result-object v0

    return-object v0
.end method
