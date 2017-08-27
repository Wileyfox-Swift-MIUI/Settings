.class public interface abstract Lcom/bumptech/glide/load/b/f;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final aUh:Lcom/bumptech/glide/load/b/f;

.field public static final aUi:Lcom/bumptech/glide/load/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/bumptech/glide/load/b/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/g;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/f;->aUh:Lcom/bumptech/glide/load/b/f;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/b/n;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/n;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/n;->Ei()Lcom/bumptech/glide/load/b/m;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/f;->aUi:Lcom/bumptech/glide/load/b/f;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
.end method
