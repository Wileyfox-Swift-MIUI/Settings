.class public Lcom/bumptech/glide/load/resource/b/e;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/b;


# static fields
.field private static final aVu:Lcom/bumptech/glide/load/resource/b/g;


# instance fields
.field private final aSH:Lcom/bumptech/glide/load/d;

.field private final aSb:Lcom/bumptech/glide/load/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/load/resource/b/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/b/g;-><init>(Lcom/bumptech/glide/load/resource/b/f;)V

    sput-object v0, Lcom/bumptech/glide/load/resource/b/e;->aVu:Lcom/bumptech/glide/load/resource/b/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/bumptech/glide/load/resource/b/a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/b/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/b/e;->aSH:Lcom/bumptech/glide/load/d;

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/b/v;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/v;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/b/e;->aSb:Lcom/bumptech/glide/load/a;

    .line 27
    return-void
.end method


# virtual methods
.method public Ep()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/b/e;->aSH:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public Eq()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/bumptech/glide/load/resource/b/e;->aVu:Lcom/bumptech/glide/load/resource/b/g;

    return-object v0
.end method

.method public Er()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/b/e;->aSb:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public Es()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/bumptech/glide/load/resource/b;->El()Lcom/bumptech/glide/load/resource/b;

    move-result-object v0

    return-object v0
.end method
