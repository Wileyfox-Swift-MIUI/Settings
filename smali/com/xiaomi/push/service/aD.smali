.class Lcom/xiaomi/push/service/aD;
.super Ljava/lang/Object;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/push/service/an;


# instance fields
.field final synthetic bhm:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/xiaomi/push/service/aD;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/aD;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/aD;->eM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private eM(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "1000271"

    .line 415
    :goto_0
    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aD;->bhm:Lcom/xiaomi/push/service/XMPushService;

    const-string v1, "pref_registered_pkg_names"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 413
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/aj;)Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/xiaomi/push/service/aD;->bhm:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/aD;->eM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/xiaomi/push/service/aD;->bhm:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/aE;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, p1}, Lcom/xiaomi/push/service/aE;-><init>(Lcom/xiaomi/push/service/aD;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 398
    return-void
.end method
