.class public Lcom/bumptech/glide/load/a/f;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/c;


# static fields
.field private static final aRO:Lcom/bumptech/glide/load/a/i;


# instance fields
.field private final aRP:Lcom/bumptech/glide/load/b/e;

.field private final aRQ:Lcom/bumptech/glide/load/a/i;

.field private aRR:Ljava/net/HttpURLConnection;

.field private aRS:Ljava/io/InputStream;

.field private volatile aRT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/a/h;-><init>(Lcom/bumptech/glide/load/a/g;)V

    sput-object v0, Lcom/bumptech/glide/load/a/f;->aRO:Lcom/bumptech/glide/load/a/i;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/e;)V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/bumptech/glide/load/a/f;->aRO:Lcom/bumptech/glide/load/a/i;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/a/f;-><init>(Lcom/bumptech/glide/load/b/e;Lcom/bumptech/glide/load/a/i;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/e;Lcom/bumptech/glide/load/a/i;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/a/f;->aRP:Lcom/bumptech/glide/load/b/e;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/a/f;->aRQ:Lcom/bumptech/glide/load/a/i;

    .line 40
    return-void
.end method

.method private a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 5

    .prologue
    const/16 v4, 0x9c4

    .line 49
    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    .line 50
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many (> 5) redirects!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "In re-direct loop"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    move-exception v0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRQ:Lcom/bumptech/glide/load/a/i;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/a/i;->c(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    .line 63
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    iget-object v3, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 73
    iget-boolean v0, p0, Lcom/bumptech/glide/load/a/f;->aRT:Z

    if-eqz v0, :cond_3

    .line 74
    const/4 v0, 0x0

    .line 85
    :goto_1
    return-object v0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 77
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/a/f;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 79
    :cond_4
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received empty or null redirect url"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 85
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, p1, p4}, Lcom/bumptech/glide/load/a/f;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 98
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/h/b;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRS:Ljava/io/InputStream;

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRS:Ljava/io/InputStream;

    return-object v0

    .line 100
    :cond_0
    const-string v0, "HttpUrlFetcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const-string v0, "HttpUrlFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got non empty content encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRS:Ljava/io/InputStream;

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/a/f;->b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRP:Lcom/bumptech/glide/load/b/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/e;->toURL()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bumptech/glide/load/a/f;->aRP:Lcom/bumptech/glide/load/b/e;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/e;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bumptech/glide/load/a/f;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/a/f;->aRT:Z

    .line 132
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRS:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRR:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 120
    :cond_1
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/load/a/f;->aRP:Lcom/bumptech/glide/load/b/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/e;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
