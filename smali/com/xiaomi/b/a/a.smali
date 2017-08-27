.class public Lcom/xiaomi/b/a/a;
.super Ljava/lang/Object;
.source "GeoFencingServiceWrapper.java"


# instance fields
.field private final aHy:Landroid/content/ServiceConnection;

.field private aZX:Lcom/xiaomi/b/a/c;

.field private aZY:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/xiaomi/b/a/a;->aZY:Z

    .line 195
    new-instance v0, Lcom/xiaomi/b/a/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/b/a/b;-><init>(Lcom/xiaomi/b/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a;->aHy:Landroid/content/ServiceConnection;

    .line 34
    iput-object p1, p0, Lcom/xiaomi/b/a/a;->mContext:Landroid/content/Context;

    .line 35
    iput-boolean v1, p0, Lcom/xiaomi/b/a/a;->aZY:Z

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/a;->dG(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/b/a/a;Lcom/xiaomi/b/a/c;)Lcom/xiaomi/b/a/c;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/xiaomi/b/a/a;->aZX:Lcom/xiaomi/b/a/c;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/a;->dG(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aZX:Lcom/xiaomi/b/a/c;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/b/a/a;->aZX:Lcom/xiaomi/b/a/c;

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v1 .. v11}, Lcom/xiaomi/b/a/c;->a(DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const-string v0, "GeoFencingServiceWrapper"

    const-string v1, "calling registerFenceListener success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GeoFencingService has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dG(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/xiaomi/b/a/a;->aZY:Z

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aZX:Lcom/xiaomi/b/a/c;

    if-nez v0, :cond_3

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.metok.GeoFencingService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    const-string v1, "com.xiaomi.metok"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/b/a/a;->aHy:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    const-string v0, "GeoFencingServiceWrapper"

    const-string v1, "Can\'t bind GeoFencingService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/b/a/a;->aZY:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "GeoFencingServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_2
    :try_start_1
    const-string v0, "GeoFencingServiceWrapper"

    const-string v1, "GeoFencingService started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/b/a/a;->aZY:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    :cond_3
    const-string v0, "GeoFencingServiceWrapper"

    const-string v1, "GeoFencingService already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/a;->dG(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aZX:Lcom/xiaomi/b/a/c;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aZX:Lcom/xiaomi/b/a/c;

    invoke-interface {v0, p2, p3}, Lcom/xiaomi/b/a/c;->H(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const-string v0, "GeoFencingServiceWrapper"

    const-string v1, "calling unregisterFenceListener success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GeoFencingService has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
