.class final Lcom/miui/activityutil/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/activityutil/f;

.field private b:[Ljava/lang/String;

.field private c:[B

.field private d:Ljava/io/File;

.field private e:Lcom/miui/activityutil/g;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/activityutil/f;[Ljava/lang/String;Ljava/io/File;Lcom/miui/activityutil/g;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/activityutil/i;->a:Lcom/miui/activityutil/f;

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/activityutil/i;->g:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/activityutil/i;->h:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/miui/activityutil/i;->b:[Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/miui/activityutil/i;->d:Ljava/io/File;

    .line 50
    iput-object p4, p0, Lcom/miui/activityutil/i;->e:Lcom/miui/activityutil/g;

    .line 51
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/activityutil/i;->f:J

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/miui/activityutil/f;[Ljava/lang/String;[BLcom/miui/activityutil/g;)V
    .locals 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/activityutil/i;->a:Lcom/miui/activityutil/f;

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/activityutil/i;->g:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/activityutil/i;->h:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/miui/activityutil/i;->b:[Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/miui/activityutil/i;->c:[B

    .line 42
    iput-object p4, p0, Lcom/miui/activityutil/i;->e:Lcom/miui/activityutil/g;

    .line 43
    array-length v0, p3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/activityutil/i;->f:J

    .line 44
    return-void
.end method

.method private a([Ljava/lang/String;)Lcom/miui/activityutil/h;
    .locals 14

    .prologue
    const/4 v11, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 73
    new-instance v6, Lcom/miui/activityutil/h;

    iget-object v1, p0, Lcom/miui/activityutil/i;->a:Lcom/miui/activityutil/f;

    invoke-direct {v6, v1}, Lcom/miui/activityutil/h;-><init>(Lcom/miui/activityutil/f;)V

    .line 74
    array-length v7, p1

    move v5, v0

    :goto_0
    if-lt v5, v7, :cond_0

    .line 138
    :goto_1
    return-object v6

    .line 74
    :cond_0
    aget-object v0, p1, v5

    .line 87
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 89
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 91
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 93
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "Content-Length"

    iget-wide v8, p0, Lcom/miui/activityutil/i;->f:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "pkg"

    iget-object v3, p0, Lcom/miui/activityutil/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "ver"

    iget-object v3, p0, Lcom/miui/activityutil/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/miui/activityutil/i;->d:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 101
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/miui/activityutil/i;->d:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    const/16 v4, 0x1000

    :try_start_2
    new-array v4, v4, [B

    .line 104
    :goto_2
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 111
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v6, Lcom/miui/activityutil/h;->a:I

    .line 115
    iget v4, v6, Lcom/miui/activityutil/h;->a:I

    const/16 v8, 0xc8

    if-ne v4, v8, :cond_4

    .line 116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .line 117
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 119
    const/16 v8, 0x1000

    :try_start_4
    new-array v8, v8, [B

    .line 120
    :goto_4
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ne v9, v11, :cond_3

    .line 123
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/miui/activityutil/h;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 132
    invoke-static {v1}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v4}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 134
    invoke-static {v3}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 135
    invoke-static {v0}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 105
    :cond_1
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v3, v4, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 130
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v4, v2

    move-object v1, v3

    move-object v3, v2

    :goto_5
    const/4 v8, 0x0

    :try_start_6
    iput v8, v6, Lcom/miui/activityutil/h;->a:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 132
    invoke-static {v0}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v4}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 134
    invoke-static {v1}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 135
    invoke-static {v3}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 74
    :goto_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 108
    :cond_2
    :try_start_7
    iget-object v1, p0, Lcom/miui/activityutil/i;->c:[B

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v1, v2

    goto :goto_3

    .line 121
    :cond_3
    const/4 v10, 0x0

    :try_start_8
    invoke-virtual {v0, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    .line 130
    :catch_1
    move-exception v8

    move-object v12, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_5

    .line 131
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v1, v2

    move-object v4, v2

    .line 132
    :goto_7
    invoke-static {v2}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v4}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 134
    invoke-static {v3}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 135
    invoke-static {v1}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 136
    throw v0

    .line 132
    :cond_4
    invoke-static {v1}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v2}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 134
    invoke-static {v3}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    .line 135
    invoke-static {v2}, Lcom/miui/activityutil/s;->a(Ljava/io/Closeable;)V

    goto :goto_6

    .line 131
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_7

    :catchall_4
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_7

    :catchall_5
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    move-object v13, v1

    move-object v1, v3

    move-object v3, v13

    goto :goto_7

    .line 130
    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v0, v2

    move-object v1, v3

    move-object v4, v2

    move-object v3, v2

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v2

    goto :goto_5
.end method

.method static synthetic a(Lcom/miui/activityutil/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/activityutil/i;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/miui/activityutil/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/activityutil/i;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/miui/activityutil/i;->start()V

    .line 143
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/activityutil/i;->b:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/activityutil/i;->a([Ljava/lang/String;)Lcom/miui/activityutil/h;

    move-result-object v0

    .line 60
    iget v1, v0, Lcom/miui/activityutil/h;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 61
    iget-object v1, p0, Lcom/miui/activityutil/i;->e:Lcom/miui/activityutil/g;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/miui/activityutil/i;->e:Lcom/miui/activityutil/g;

    iget v2, v0, Lcom/miui/activityutil/h;->a:I

    iget-object v0, v0, Lcom/miui/activityutil/h;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/miui/activityutil/g;->a(Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/miui/activityutil/i;->e:Lcom/miui/activityutil/g;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/miui/activityutil/i;->e:Lcom/miui/activityutil/g;

    iget v0, v0, Lcom/miui/activityutil/h;->a:I

    invoke-interface {v1, v0}, Lcom/miui/activityutil/g;->a(I)V

    goto :goto_0
.end method
