.class Lcom/bumptech/glide/load/engine/k;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/t;


# static fields
.field private static final aSw:Lcom/bumptech/glide/load/engine/m;

.field private static final aSx:Landroid/os/Handler;


# instance fields
.field private final aOR:Z

.field private final aPt:Ljava/util/concurrent/ExecutorService;

.field private final aPu:Ljava/util/concurrent/ExecutorService;

.field private aRT:Z

.field private aSA:Lcom/bumptech/glide/load/engine/v;

.field private aSB:Z

.field private aSC:Z

.field private aSD:Ljava/util/Set;

.field private aSE:Lcom/bumptech/glide/load/engine/EngineRunnable;

.field private aSF:Lcom/bumptech/glide/load/engine/r;

.field private volatile aSG:Ljava/util/concurrent/Future;

.field private final aSq:Lcom/bumptech/glide/load/engine/o;

.field private final aSv:Lcom/bumptech/glide/load/b;

.field private final aSy:Ljava/util/List;

.field private final aSz:Lcom/bumptech/glide/load/engine/m;

.field private exception:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/engine/m;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/m;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/k;->aSw:Lcom/bumptech/glide/load/engine/m;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/n;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/n;-><init>(Lcom/bumptech/glide/load/engine/l;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/k;->aSx:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/o;)V
    .locals 7

    .prologue
    .line 53
    sget-object v6, Lcom/bumptech/glide/load/engine/k;->aSw:Lcom/bumptech/glide/load/engine/m;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/k;-><init>(Lcom/bumptech/glide/load/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/o;Lcom/bumptech/glide/load/engine/m;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/o;Lcom/bumptech/glide/load/engine/m;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSy:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->aSv:Lcom/bumptech/glide/load/b;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/k;->aPu:Ljava/util/concurrent/ExecutorService;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/k;->aPt:Ljava/util/concurrent/ExecutorService;

    .line 61
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/k;->aOR:Z

    .line 62
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/k;->aSq:Lcom/bumptech/glide/load/engine/o;

    .line 63
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/k;->aSz:Lcom/bumptech/glide/load/engine/m;

    .line 64
    return-void
.end method

.method private DE()V
    .locals 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aRT:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSA:Lcom/bumptech/glide/load/engine/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/v;->recycle()V

    .line 163
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSz:Lcom/bumptech/glide/load/engine/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->aSA:Lcom/bumptech/glide/load/engine/v;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/k;->aOR:Z

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/engine/v;Z)Lcom/bumptech/glide/load/engine/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSF:Lcom/bumptech/glide/load/engine/r;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aSB:Z

    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSF:Lcom/bumptech/glide/load/engine/r;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/r;->acquire()V

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSq:Lcom/bumptech/glide/load/engine/o;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->aSv:Lcom/bumptech/glide/load/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k;->aSF:Lcom/bumptech/glide/load/engine/r;

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/o;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/r;)V

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/d;

    .line 156
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/k;->d(Lcom/bumptech/glide/request/d;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k;->aSF:Lcom/bumptech/glide/load/engine/r;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/r;->acquire()V

    .line 158
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k;->aSF:Lcom/bumptech/glide/load/engine/r;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/d;->g(Lcom/bumptech/glide/load/engine/v;)V

    goto :goto_1

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSF:Lcom/bumptech/glide/load/engine/r;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/r;->release()V

    goto :goto_0
.end method

.method private DF()V
    .locals 3

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aRT:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aSC:Z

    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSq:Lcom/bumptech/glide/load/engine/o;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->aSv:Lcom/bumptech/glide/load/b;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/o;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/r;)V

    .line 181
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/d;

    .line 182
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/k;->d(Lcom/bumptech/glide/request/d;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k;->exception:Ljava/lang/Exception;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/d;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/k;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/k;->DE()V

    return-void
.end method

.method static synthetic b(Lcom/bumptech/glide/load/engine/k;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/k;->DF()V

    return-void
.end method

.method private c(Lcom/bumptech/glide/request/d;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSD:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSD:Ljava/util/Set;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSD:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private d(Lcom/bumptech/glide/request/d;)Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSD:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSD:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->aSE:Lcom/bumptech/glide/load/engine/EngineRunnable;

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aPu:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSG:Ljava/util/concurrent/Future;

    .line 69
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/d;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/bumptech/glide/h/h;->FC()V

    .line 78
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aSB:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSF:Lcom/bumptech/glide/load/engine/r;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/d;->g(Lcom/bumptech/glide/load/engine/v;)V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aSC:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->exception:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/d;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aPt:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSG:Ljava/util/concurrent/Future;

    .line 74
    return-void
.end method

.method public b(Lcom/bumptech/glide/request/d;)V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/bumptech/glide/h/h;->FC()V

    .line 89
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aSB:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aSC:Z

    if-eqz v0, :cond_2

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/k;->c(Lcom/bumptech/glide/request/d;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->cancel()V

    goto :goto_0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 167
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->exception:Ljava/lang/Exception;

    .line 168
    sget-object v0, Lcom/bumptech/glide/load/engine/k;->aSx:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aSC:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aSB:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->aRT:Z

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSE:Lcom/bumptech/glide/load/engine/EngineRunnable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->cancel()V

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSG:Ljava/util/concurrent/Future;

    .line 122
    if-eqz v0, :cond_2

    .line 123
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 125
    :cond_2
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/k;->aRT:Z

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->aSq:Lcom/bumptech/glide/load/engine/o;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->aSv:Lcom/bumptech/glide/load/b;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/o;->a(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/b;)V

    goto :goto_0
.end method

.method public g(Lcom/bumptech/glide/load/engine/v;)V
    .locals 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->aSA:Lcom/bumptech/glide/load/engine/v;

    .line 137
    sget-object v0, Lcom/bumptech/glide/load/engine/k;->aSx:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method
