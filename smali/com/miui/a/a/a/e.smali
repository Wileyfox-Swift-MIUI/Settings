.class public Lcom/miui/a/a/a/e;
.super Lcom/miui/a/a/a/b;
.source "SongDiracUtils.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private aYy:Lse/dirac/acs/api/AudioControlService;

.field private aYz:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/a/a/a/b;-><init>()V

    .line 22
    const-string v0, "SongDiracUtils"

    iput-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/miui/a/a/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/a/a/a/e;Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/a/a/a/e;->aYy:Lse/dirac/acs/api/AudioControlService;

    return-object p1
.end method

.method private static a(Lse/dirac/acs/api/AudioControlService;JZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0, p1, p2}, Lse/dirac/acs/api/AudioControlService;->R(J)Lse/dirac/acs/api/Device;

    move-result-object v1

    .line 46
    iget-object v0, v1, Lse/dirac/acs/api/Device;->bxL:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Filter;

    .line 47
    new-instance v2, Lse/dirac/acs/api/OutputSettings;

    invoke-direct {v2, v1, v0}, Lse/dirac/acs/api/OutputSettings;-><init>(Lse/dirac/acs/api/Device;Lse/dirac/acs/api/Filter;)V

    .line 48
    invoke-virtual {v2, p3}, Lse/dirac/acs/api/OutputSettings;->du(Z)Lse/dirac/acs/api/OutputSettings;

    .line 49
    invoke-virtual {v2, v4}, Lse/dirac/acs/api/OutputSettings;->dx(Z)Lse/dirac/acs/api/OutputSettings;

    .line 50
    invoke-virtual {v2, v4}, Lse/dirac/acs/api/OutputSettings;->dv(Z)Lse/dirac/acs/api/OutputSettings;

    .line 51
    invoke-virtual {v2, v3}, Lse/dirac/acs/api/OutputSettings;->dw(Z)Lse/dirac/acs/api/OutputSettings;

    .line 52
    invoke-virtual {p0, v2}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/OutputSettings;)Z

    .line 53
    return-void
.end method

.method static synthetic b(Lcom/miui/a/a/a/e;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/a/a/a/e;->aYz:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static currentApplication()Landroid/app/Application;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 31
    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 41
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 40
    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    .line 40
    goto :goto_0

    .line 36
    :catch_2
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 40
    goto :goto_0

    .line 38
    :catch_3
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private dp(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lcom/miui/a/a/a/e;->aYy:Lse/dirac/acs/api/AudioControlService;

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    const-string v1, "initialize+"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/a/a/a/e;->aYz:Ljava/lang/Boolean;

    .line 60
    new-instance v0, Lcom/miui/a/a/a/f;

    invoke-direct {v0, p0}, Lcom/miui/a/a/a/f;-><init>(Lcom/miui/a/a/a/e;)V

    invoke-static {p1, v0}, Lse/dirac/acs/api/AudioControlService;->a(Landroid/content/Context;Lse/dirac/acs/api/g;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not bind against the control service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catch_0
    move-exception v0

    .line 86
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/a/a/a/e;->aYz:Ljava/lang/Boolean;

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/miui/a/a/a/e;->aYy:Lse/dirac/acs/api/AudioControlService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/a/a/a/e;->aYy:Lse/dirac/acs/api/AudioControlService;

    sget-object v1, Lse/dirac/acs/api/Output;->bxT:Lse/dirac/acs/api/Output;

    invoke-virtual {v0, v1}, Lse/dirac/acs/api/AudioControlService;->b(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    const-string v1, "disable dirac by default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/miui/a/a/a/e;->aYy:Lse/dirac/acs/api/AudioControlService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/miui/a/a/a/e;->a(Lse/dirac/acs/api/AudioControlService;JZ)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    const-string v1, "initialize-"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/miui/a/a/a/e;->aYy:Lse/dirac/acs/api/AudioControlService;

    return-object v0

    .line 79
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    const-string v1, "wait for connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/a/a/a/e;->aYz:Ljava/lang/Boolean;

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/a/a/a/e;->aYz:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/a/a/a/e;->aYz:Ljava/lang/Boolean;

    throw v0
.end method


# virtual methods
.method public E(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeadsetType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, p1}, Lcom/miui/a/a/a/e;->dp(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    int-to-long v2, p2

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/miui/a/a/a/e;->a(Lse/dirac/acs/api/AudioControlService;JZ)V

    .line 140
    :cond_0
    return-void
.end method

.method public FU()Ljava/util/List;
    .locals 8

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    const-string v1, "getHeadseIdsAndTypes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-static {}, Lcom/miui/a/a/a/e;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/a/a/a/e;->dp(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    move-object v0, v1

    .line 205
    :goto_0
    return-object v0

    .line 175
    :cond_0
    sget-object v2, Lse/dirac/acs/api/Output;->bxT:Lse/dirac/acs/api/Output;

    invoke-virtual {v0, v2}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/Output;)Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Device;

    .line 177
    const-string v3, "MEP 100"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_1
    const-string v3, "MEP 200"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_2
    const-string v3, "Piston 100"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    :cond_3
    const-string v3, "MK 101"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 187
    :cond_4
    const-string v3, "MK 301"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 189
    :cond_5
    const-string v3, "General Earbud"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 190
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 191
    :cond_6
    const-string v3, "General InEar"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 192
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 193
    :cond_7
    const-string v3, "MK 303"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 194
    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 195
    :cond_8
    const-string v3, "MO 701"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 196
    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 197
    :cond_9
    const-string v3, "MR 102"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 198
    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 199
    :cond_a
    const-string v3, "EM 303"

    iget-object v4, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 200
    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 202
    :cond_b
    iget-object v3, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown device: name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lse/dirac/acs/api/Device;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    move-object v0, v1

    .line 205
    goto/16 :goto_0
.end method

.method public dm(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    const-string v1, "getHeadsetType"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0, p1}, Lcom/miui/a/a/a/e;->dp(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    sget-object v1, Lse/dirac/acs/api/Output;->bxT:Lse/dirac/acs/api/Output;

    invoke-virtual {v0, v1}, Lse/dirac/acs/api/AudioControlService;->b(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object v0

    .line 149
    iget-object v0, v0, Lse/dirac/acs/api/OutputSettings;->bxV:Lse/dirac/acs/api/Device;

    iget-wide v0, v0, Lse/dirac/acs/api/Device;->id:J

    long-to-int v0, v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    const-string v1, "isEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, p1}, Lcom/miui/a/a/a/e;->dp(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    sget-object v1, Lse/dirac/acs/api/Output;->bxT:Lse/dirac/acs/api/Output;

    invoke-virtual {v0, v1}, Lse/dirac/acs/api/AudioControlService;->b(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lse/dirac/acs/api/OutputSettings;->PL()Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/a/a/a/e;->aYy:Lse/dirac/acs/api/AudioControlService;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/a/a/a/e;->aYy:Lse/dirac/acs/api/AudioControlService;

    invoke-virtual {v0}, Lse/dirac/acs/api/AudioControlService;->close()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/a/a/a/e;->aYy:Lse/dirac/acs/api/AudioControlService;

    .line 107
    :cond_0
    return-void
.end method

.method public t(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/a/a/a/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/a/a/a/e;->dp(Landroid/content/Context;)Lse/dirac/acs/api/AudioControlService;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Lse/dirac/acs/api/Output;->bxT:Lse/dirac/acs/api/Output;

    invoke-virtual {v0, v1}, Lse/dirac/acs/api/AudioControlService;->b(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p2}, Lse/dirac/acs/api/OutputSettings;->du(Z)Lse/dirac/acs/api/OutputSettings;

    .line 117
    invoke-virtual {v0, v1}, Lse/dirac/acs/api/AudioControlService;->a(Lse/dirac/acs/api/OutputSettings;)Z

    .line 119
    :cond_0
    return-void
.end method
