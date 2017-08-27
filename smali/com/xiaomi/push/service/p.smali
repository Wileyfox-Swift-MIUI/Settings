.class public Lcom/xiaomi/push/service/p;
.super Ljava/lang/Object;
.source "MIPushAccount.java"


# instance fields
.field public final aZk:I

.field public final appId:Ljava/lang/String;

.field public final bae:Ljava/lang/String;

.field public final bfe:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final security:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xiaomi/push/service/p;->bfe:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/xiaomi/push/service/p;->token:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/xiaomi/push/service/p;->security:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/xiaomi/push/service/p;->appId:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/xiaomi/push/service/p;->bae:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/xiaomi/push/service/p;->packageName:Ljava/lang/String;

    .line 40
    iput p7, p0, Lcom/xiaomi/push/service/p;->aZk:I

    .line 41
    return-void
.end method

.method public static Jq()Z
    .locals 2

    .prologue
    .line 94
    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    const-string v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ej(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ek(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 88
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/xiaomi/push/service/p;->Jq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/S;Landroid/content/Context;Lcom/xiaomi/push/service/b;Ljava/lang/String;)Lcom/xiaomi/push/service/S;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/S;->pkgName:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/xiaomi/push/service/p;->bfe:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/S;->userId:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/xiaomi/push/service/p;->security:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/xiaomi/push/service/p;->token:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/S;->token:Ljava/lang/String;

    .line 64
    const-string v0, "5"

    iput-object v0, p1, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    .line 65
    const-string v0, "XMPUSH-PASS"

    iput-object v0, p1, Lcom/xiaomi/push/service/S;->bfP:Ljava/lang/String;

    .line 66
    iput-boolean v5, p1, Lcom/xiaomi/push/service/S;->bfQ:Z

    .line 67
    const-string v0, ""

    .line 68
    invoke-static {p2}, Lcom/xiaomi/push/service/p;->ej(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->dq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    const-string v1, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s:%7$s:%8$s"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "sdk_ver"

    aput-object v3, v2, v5

    const/16 v3, 0x1a

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "cpvn"

    aput-object v3, v2, v7

    const-string v3, "3_2_0"

    aput-object v3, v2, v8

    const-string v3, "cpvc"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const/16 v4, 0x75f8

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "aapn"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 71
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/S;->bfR:Ljava/lang/String;

    .line 76
    invoke-static {p2}, Lcom/xiaomi/push/service/p;->ej(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1000271"

    .line 77
    :goto_0
    const-string v1, "%1$s:%2$s,%3$s:%4$s,sync:1"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "appid"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const-string v0, "locale"

    aput-object v0, v2, v7

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 77
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/S;->bfS:Ljava/lang/String;

    .line 80
    invoke-static {p2}, Lcom/xiaomi/push/service/p;->ek(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/service/S;->bfS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",%1$s:%2$s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "ab"

    aput-object v3, v2, v5

    aput-object p4, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/S;->bfS:Ljava/lang/String;

    .line 83
    :cond_1
    iput-object p3, p1, Lcom/xiaomi/push/service/S;->bfU:Lcom/xiaomi/push/service/b;

    .line 84
    return-object p1

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/p;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/S;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/xiaomi/push/service/S;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/S;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 49
    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->JZ()Lcom/xiaomi/push/service/b;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/push/service/p;->a(Lcom/xiaomi/push/service/S;Landroid/content/Context;Lcom/xiaomi/push/service/b;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    .line 50
    return-object v0
.end method
