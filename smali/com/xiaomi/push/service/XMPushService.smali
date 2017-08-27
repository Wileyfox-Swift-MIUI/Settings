.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/smack/e;


# static fields
.field public static START_STICKY:I

.field private static final bhf:I


# instance fields
.field private bfU:Lcom/xiaomi/push/service/b;

.field private bhb:Lcom/xiaomi/smack/c;

.field private bhc:Lcom/xiaomi/push/service/ac;

.field private bhd:Lcom/xiaomi/push/service/aM;

.field private bhe:J

.field private bhg:Lcom/xiaomi/d/f;

.field private bhh:Lcom/xiaomi/smack/a;

.field private bhi:Lcom/xiaomi/push/service/PacketSync;

.field private bhj:Lcom/xiaomi/push/service/i;

.field private bhk:Lcom/xiaomi/smack/g;

.field final bhl:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/xiaomi/push/service/XMPushService;->bhf:I

    .line 109
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "app.chat.xiaomi.net"

    invoke-static {v0, v1}, Lcom/xiaomi/c/f;->P(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "42.62.94.2:443"

    invoke-static {v0, v1}, Lcom/xiaomi/c/f;->P(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "114.54.23.2"

    invoke-static {v0, v1}, Lcom/xiaomi/c/f;->P(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.13.142.2"

    invoke-static {v0, v1}, Lcom/xiaomi/c/f;->P(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.206.200.2"

    invoke-static {v0, v1}, Lcom/xiaomi/c/f;->P(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhe:J

    .line 122
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->bhi:Lcom/xiaomi/push/service/PacketSync;

    .line 126
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    .line 130
    new-instance v0, Lcom/xiaomi/push/service/av;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/av;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhk:Lcom/xiaomi/smack/g;

    .line 271
    new-instance v0, Lcom/xiaomi/push/service/aB;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aB;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhl:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private E(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1064
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 1065
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->eI(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 1066
    if-eqz v0, :cond_1

    .line 1067
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/S;

    .line 1068
    if-eqz v2, :cond_0

    .line 1069
    new-instance v0, Lcom/xiaomi/push/service/aW;

    move-object v1, p0

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/aW;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    goto :goto_0

    .line 1073
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->eG(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method private J(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 536
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 539
    const-string v3, "ext_encrypt"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 540
    new-instance v4, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v4, v2}, Lcom/xiaomi/smack/packet/d;-><init>(Landroid/os/Bundle;)V

    .line 541
    const/4 v2, 0x0

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/d;

    .line 543
    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 548
    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v1

    .line 551
    if-eqz v3, :cond_2

    const-string v2, "3"

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->Ka()Lcom/xiaomi/smack/a;

    move-result-object v2

    .line 553
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/smack/a;->KC()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    iget-object v1, v1, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/d/b;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;)Lcom/xiaomi/d/b;

    move-result-object v0

    .line 555
    new-instance v1, Lcom/xiaomi/push/service/ad;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/d/b;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto :goto_0

    .line 560
    :cond_2
    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;

    move-result-object v0

    .line 561
    :cond_3
    if-eqz v0, :cond_0

    .line 562
    new-instance v1, Lcom/xiaomi/push/service/ad;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto :goto_0
.end method

.method private JQ()Lcom/xiaomi/push/service/an;
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/xiaomi/push/service/aD;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aD;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    return-object v0
.end method

.method private JR()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 421
    .line 423
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 424
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 429
    :goto_0
    if-eqz v0, :cond_3

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network changed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 435
    :goto_1
    invoke-static {}, Lcom/xiaomi/e/g;->Lh()Lcom/xiaomi/e/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/xiaomi/e/g;->Lh()Lcom/xiaomi/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/e/f;->Ld()V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhg:Lcom/xiaomi/d/f;

    invoke-virtual {v0}, Lcom/xiaomi/d/f;->KO()V

    .line 440
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 441
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->JS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->cp(Z)V

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/i;->fg(I)V

    .line 448
    new-instance v0, Lcom/xiaomi/push/service/aL;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aL;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 450
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/push/a/b;->ed(Landroid/content/Context;)Lcom/xiaomi/push/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b;->HA()V

    .line 454
    :goto_2
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->JW()V

    .line 455
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 427
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 432
    :cond_3
    const-string v0, "network changed, no active network"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 452
    :cond_4
    new-instance v0, Lcom/xiaomi/push/service/aN;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/xiaomi/push/service/aN;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    goto :goto_2
.end method

.method private JS()Z
    .locals 4

    .prologue
    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->bhe:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->aR(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private JW()V
    .locals 1

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->JU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    invoke-static {}, Lcom/xiaomi/push/service/b/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/push/service/b/a;->cs(Z)V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/b/a;->stop()V

    goto :goto_0
.end method

.method private JX()V
    .locals 3

    .prologue
    .line 1290
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhg:Lcom/xiaomi/d/f;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->bhk:Lcom/xiaomi/smack/g;

    new-instance v2, Lcom/xiaomi/push/service/aw;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/aw;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/d/f;->a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 1296
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhg:Lcom/xiaomi/d/f;

    invoke-virtual {v0}, Lcom/xiaomi/d/f;->connect()V

    .line 1298
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhg:Lcom/xiaomi/d/f;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    :goto_0
    return-void

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    const-string v1, "fail to create Slim connection"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/b/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1301
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->bhg:Lcom/xiaomi/d/f;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/d/f;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method private K(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 569
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 570
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 571
    const-string v0, "ext_packets"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 572
    array-length v0, v5

    new-array v6, v0, [Lcom/xiaomi/smack/packet/d;

    .line 573
    const-string v0, "ext_encrypt"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    move v1, v2

    .line 574
    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_1

    .line 575
    new-instance v8, Lcom/xiaomi/smack/packet/d;

    aget-object v0, v5, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v8, v0}, Lcom/xiaomi/smack/packet/d;-><init>(Landroid/os/Bundle;)V

    aput-object v8, v6, v1

    .line 576
    aget-object v0, v6, v1

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/d;

    aput-object v0, v6, v1

    .line 577
    aget-object v0, v6, v1

    if-nez v0, :cond_0

    .line 605
    :goto_1
    return-void

    .line 574
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 582
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 584
    if-eqz v7, :cond_3

    const-string v0, "3"

    aget-object v3, v6, v2

    invoke-virtual {v3}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->Ka()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->KC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    array-length v0, v6

    new-array v0, v0, [Lcom/xiaomi/d/b;

    .line 589
    :goto_2
    array-length v3, v6

    if-ge v2, v3, :cond_2

    .line 590
    aget-object v3, v6, v2

    .line 591
    invoke-virtual {v3}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v4

    .line 592
    iget-object v4, v4, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/d/b;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;)Lcom/xiaomi/d/b;

    move-result-object v3

    aput-object v3, v0, v2

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 594
    :cond_2
    new-instance v1, Lcom/xiaomi/push/service/a;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/a;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/d/b;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto :goto_1

    .line 599
    :cond_3
    :goto_3
    array-length v0, v6

    if-ge v2, v0, :cond_5

    .line 600
    aget-object v0, v6, v2

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v0

    aget-object v3, v6, v2

    invoke-virtual {v3}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 601
    if-eqz v7, :cond_4

    aget-object v3, v6, v2

    iget-object v0, v0, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;

    move-result-object v0

    :goto_4
    aput-object v0, v6, v2

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 601
    :cond_4
    aget-object v0, v6, v2

    goto :goto_4

    .line 604
    :cond_5
    new-instance v0, Lcom/xiaomi/push/service/a;

    invoke-direct {v0, p0, v6}, Lcom/xiaomi/push/service/a;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/smack/packet/d;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto :goto_1
.end method

.method private Kb()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1768
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1771
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/O;->eo(Landroid/content/Context;)Lcom/xiaomi/push/service/O;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ConfigKey;->bnO:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 1772
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/O;->p(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method private Kc()V
    .locals 3

    .prologue
    .line 1776
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 1777
    sget v0, Lcom/xiaomi/push/service/XMPushService;->bhf:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->startForeground(ILandroid/app/Notification;)V

    .line 1800
    :goto_0
    return-void

    .line 1781
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/push/service/as;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/push/service/ax;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/ax;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method static synthetic Kd()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/xiaomi/push/service/XMPushService;->bhf:I

    return v0
.end method

.method private L(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 609
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 611
    sget-object v0, Lcom/xiaomi/push/service/V;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/V;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 614
    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    const-string v0, "security is empty. ignore."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 873
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    if-eqz v0, :cond_8

    .line 621
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    .line 622
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->b(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/S;

    move-result-object v2

    .line 624
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bfU:Lcom/xiaomi/push/service/b;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Lcom/xiaomi/push/service/S;ZILjava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 628
    iget-object v0, v2, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v6, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v6, :cond_4

    .line 629
    new-instance v0, Lcom/xiaomi/push/service/aI;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/aI;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto :goto_0

    .line 631
    :cond_4
    if-eqz v1, :cond_5

    .line 635
    new-instance v0, Lcom/xiaomi/push/service/aU;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/aU;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto :goto_0

    .line 636
    :cond_5
    iget-object v0, v2, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgc:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v1, :cond_6

    .line 638
    const-string v0, "the client is binding. %1$s %2$s."

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, v2, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object v2, v2, Lcom/xiaomi/push/service/S;->userId:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_6
    iget-object v0, v2, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgd:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v1, :cond_1

    .line 642
    iget-object v6, p0, Lcom/xiaomi/push/service/XMPushService;->bfU:Lcom/xiaomi/push/service/b;

    move-object v7, p0

    move-object v8, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Lcom/xiaomi/push/service/S;ZILjava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_7
    invoke-virtual {p0, v9}, Lcom/xiaomi/push/service/XMPushService;->cq(Z)V

    goto :goto_0

    .line 651
    :cond_8
    const-string v0, "channel id is empty, do nothing!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_9
    sget-object v0, Lcom/xiaomi/push/service/V;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 654
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    sget-object v2, Lcom/xiaomi/push/service/V;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 656
    sget-object v3, Lcom/xiaomi/push/service/V;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service called closechannel chid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 659
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 661
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->eH(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 662
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 663
    invoke-direct {p0, v0, v4}, Lcom/xiaomi/push/service/XMPushService;->E(Ljava/lang/String;I)V

    goto :goto_1

    .line 666
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 667
    invoke-direct {p0, v2, v4}, Lcom/xiaomi/push/service/XMPushService;->E(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    move-object v1, p0

    move-object v6, v5

    .line 669
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 673
    :cond_c
    sget-object v0, Lcom/xiaomi/push/service/V;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 674
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->J(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 675
    :cond_d
    sget-object v0, Lcom/xiaomi/push/service/V;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 676
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->K(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 677
    :cond_e
    sget-object v0, Lcom/xiaomi/push/service/V;->ACTION_SEND_IQ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 678
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 680
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 682
    new-instance v4, Lcom/xiaomi/smack/packet/b;

    invoke-direct {v4, v2}, Lcom/xiaomi/smack/packet/b;-><init>(Landroid/os/Bundle;)V

    .line 683
    invoke-direct {p0, v4, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_1

    .line 685
    new-instance v0, Lcom/xiaomi/push/service/ad;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto/16 :goto_0

    .line 687
    :cond_f
    sget-object v0, Lcom/xiaomi/push/service/V;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 688
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 692
    new-instance v4, Lcom/xiaomi/smack/packet/Presence;

    invoke-direct {v4, v2}, Lcom/xiaomi/smack/packet/Presence;-><init>(Landroid/os/Bundle;)V

    .line 693
    invoke-direct {p0, v4, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_1

    .line 695
    new-instance v0, Lcom/xiaomi/push/service/ad;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto/16 :goto_0

    .line 697
    :cond_10
    sget-object v0, Lcom/xiaomi/push/service/V;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 698
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    if-eqz v0, :cond_1

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request reset connection from chid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 702
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/service/V;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgd:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v1, :cond_1

    .line 706
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->Ka()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/smack/a;->M(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    :cond_11
    new-instance v0, Lcom/xiaomi/push/service/aV;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aV;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto/16 :goto_0

    .line 712
    :cond_12
    sget-object v0, Lcom/xiaomi/push/service/V;->ACTION_UPDATE_CHANNEL_INFO:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 713
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->eH(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 715
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open channel should be called first before update info, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    :cond_13
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    sget-object v4, Lcom/xiaomi/push/service/V;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 725
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 728
    :cond_14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 730
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->eI(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 732
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/S;

    move-object v5, v0

    .line 737
    :cond_15
    :goto_2
    if-eqz v5, :cond_1

    .line 738
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 739
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/S;->bfR:Ljava/lang/String;

    .line 741
    :cond_16
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/S;->bfS:Ljava/lang/String;

    goto/16 :goto_0

    .line 735
    :cond_17
    invoke-virtual {v1, v0, v4}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v5

    goto :goto_2

    .line 745
    :cond_18
    const-string v0, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 747
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/Z;->eq(Landroid/content/Context;)Lcom/xiaomi/push/service/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/Z;->JB()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 748
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/Z;->eq(Landroid/content/Context;)Lcom/xiaomi/push/service/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/Z;->JC()I

    move-result v0

    if-nez v0, :cond_19

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register without being provisioned. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mipush_app_package"

    .line 750
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    :cond_19
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 755
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 756
    const-string v0, "mipush_env_chanage"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 757
    const-string v1, "mipush_env_type"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 758
    invoke-static {p0}, Lcom/xiaomi/push/service/s;->en(Landroid/content/Context;)Lcom/xiaomi/push/service/s;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/service/s;->eC(Ljava/lang/String;)V

    .line 759
    if-eqz v0, :cond_1a

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 760
    new-instance v0, Lcom/xiaomi/push/service/aF;

    const/16 v2, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/aF;-><init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto/16 :goto_0

    .line 777
    :cond_1a
    invoke-virtual {p0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->c([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 779
    :cond_1b
    const-string v0, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "com.xiaomi.mipush.UNREGISTER_APP"

    .line 780
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 781
    :cond_1c
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    const-string v1, "mipush_payload"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 783
    const-string v2, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 784
    const-string v3, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 785
    invoke-static {p0}, Lcom/xiaomi/push/service/s;->en(Landroid/content/Context;)Lcom/xiaomi/push/service/s;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/service/s;->eB(Ljava/lang/String;)V

    .line 787
    :cond_1d
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    goto/16 :goto_0

    .line 788
    :cond_1e
    sget-object v0, Lcom/xiaomi/push/service/aa;->bgu:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 790
    const-string v0, "uninstall_pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 797
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move v9, v3

    .line 802
    :goto_3
    const-string v1, "com.xiaomi.channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 803
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->eI(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v9, :cond_1f

    .line 805
    const-string v0, "1"

    invoke-direct {p0, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->E(Ljava/lang/String;I)V

    .line 806
    const-string v0, "close the miliao channel as the app is uninstalled."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 810
    :cond_1f
    const-string v1, "pref_registered_pkg_names"

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 812
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v9, :cond_1

    .line 816
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 817
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 818
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 820
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/F;->af(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 821
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/F;->ae(Landroid/content/Context;Ljava/lang/String;)V

    .line 823
    :cond_20
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/F;->ac(Landroid/content/Context;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    if-eqz v2, :cond_1

    .line 828
    :try_start_1
    invoke-static {v0, v2}, Lcom/xiaomi/push/service/D;->S(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/D;->e(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg sent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to send Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 832
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto/16 :goto_0

    .line 837
    :cond_21
    const-string v0, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 838
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    sget-object v1, Lcom/xiaomi/push/service/V;->bgj:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 840
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 841
    const/4 v2, -0x1

    if-lt v1, v2, :cond_22

    .line 842
    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/service/F;->i(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 844
    :cond_22
    sget-object v1, Lcom/xiaomi/push/service/V;->bgm:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 845
    sget-object v2, Lcom/xiaomi/push/service/V;->bgn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/push/service/F;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 849
    :cond_23
    const-string v0, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    sget-object v0, Lcom/xiaomi/push/service/V;->bgl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 855
    sget-object v0, Lcom/xiaomi/push/service/V;->bgk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 856
    sget-object v0, Lcom/xiaomi/push/service/V;->bgk:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/g/c;->dk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 863
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 859
    :cond_25
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/g/c;->dk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v3, v9

    .line 860
    goto :goto_4

    .line 865
    :cond_26
    if-eqz v3, :cond_27

    .line 866
    invoke-static {p0, v2}, Lcom/xiaomi/push/service/F;->ae(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 868
    :cond_27
    invoke-static {p0, v2, v1}, Lcom/xiaomi/push/service/F;->j(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 798
    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/a;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    return-object p1
.end method

.method private a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 992
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/push/service/ab;->W(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 993
    new-instance v3, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v3}, Lcom/xiaomi/smack/packet/d;-><init>()V

    .line 994
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setFrom(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setTo(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setPacketID(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setChannelId(Ljava/lang/String;)V

    .line 998
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setEncrypted(Z)V

    .line 1000
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/d;->stripInvalidXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/ab;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1001
    new-instance v5, Lcom/xiaomi/smack/packet/a;

    const-string v6, "s"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v5, v4}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v3, v5}, Lcom/xiaomi/smack/packet/d;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 1006
    return-object v3
.end method

.method private a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;
    .locals 4

    .prologue
    .line 953
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 954
    invoke-virtual {v1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->eH(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 955
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open channel should be called first before sending a packet, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 986
    :goto_0
    const/4 p1, 0x0

    :cond_0
    :goto_1
    return-object p1

    .line 960
    :cond_1
    invoke-virtual {p1, p2}, Lcom/xiaomi/smack/packet/e;->setPackageName(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 962
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 964
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 965
    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/e;->setChannelId(Ljava/lang/String;)V

    .line 967
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v1

    .line 968
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a packet as the channel is not connected, chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 971
    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgd:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v2, v3, :cond_5

    .line 974
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a packet as the channel is not opened, chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_5
    iget-object v0, v1, Lcom/xiaomi/push/service/S;->session:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid session. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_6
    instance-of v0, p1, Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 981
    check-cast p1, Lcom/xiaomi/smack/packet/d;

    iget-object v0, v1, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;

    move-result-object p1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->L(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[BZ)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/service/aP;)V
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/i;->a(Lcom/xiaomi/push/service/l;)V

    .line 1095
    return-void
.end method

.method private a(Ljava/lang/String;[BZ)V
    .locals 2

    .prologue
    .line 876
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->eI(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 878
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 879
    if-eqz p3, :cond_0

    .line 880
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/u;->c(Ljava/lang/String;[B)V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/S;

    .line 886
    iget-object v0, v0, Lcom/xiaomi/push/service/S;->bfV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bgd:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v0, v1, :cond_2

    .line 887
    if-eqz p3, :cond_0

    .line 888
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/u;->c(Ljava/lang/String;[B)V

    goto :goto_0

    .line 893
    :cond_2
    new-instance v0, Lcom/xiaomi/push/service/aG;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/xiaomi/push/service/aG;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1010
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v2

    .line 1012
    const/4 v0, 0x0

    .line 1013
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1014
    sget-object v3, Lcom/xiaomi/push/service/V;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    sget-object v4, Lcom/xiaomi/push/service/V;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1016
    iget-object v5, v2, Lcom/xiaomi/push/service/S;->session:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/xiaomi/push/service/S;->session:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session changed. old session="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/xiaomi/push/service/S;->session:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", new session="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " chid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    move v0, v1

    .line 1020
    :cond_0
    iget-object v2, v2, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "security changed. chid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sechash = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/g/c;->dj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    move v0, v1

    .line 1025
    :cond_1
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 335
    const-string v1, "Leave"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enter"

    .line 336
    invoke-static {p3}, Lcom/xiaomi/push/service/e;->ef(Landroid/content/Context;)Lcom/xiaomi/push/service/e;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaomi/push/service/e;->ew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    :goto_0
    return v0

    .line 339
    :cond_0
    invoke-static {p3}, Lcom/xiaomi/push/service/e;->ef(Landroid/content/Context;)Lcom/xiaomi/push/service/e;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/xiaomi/push/service/e;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update geofence statue failed geo_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/S;
    .locals 3

    .prologue
    .line 1029
    sget-object v0, Lcom/xiaomi/push/service/V;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v0

    .line 1032
    if-nez v0, :cond_0

    .line 1034
    new-instance v0, Lcom/xiaomi/push/service/S;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/S;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1037
    :cond_0
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->bfT:Ljava/lang/String;

    .line 1038
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->userId:Ljava/lang/String;

    .line 1039
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->token:Ljava/lang/String;

    .line 1040
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->pkgName:Ljava/lang/String;

    .line 1041
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->bfR:Ljava/lang/String;

    .line 1042
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->bfS:Ljava/lang/String;

    .line 1043
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_KICK:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xiaomi/push/service/S;->bfQ:Z

    .line 1044
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->security:Ljava/lang/String;

    .line 1045
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->session:Ljava/lang/String;

    .line 1046
    sget-object v1, Lcom/xiaomi/push/service/V;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->bfP:Ljava/lang/String;

    .line 1047
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->bfU:Lcom/xiaomi/push/service/b;

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->bfU:Lcom/xiaomi/push/service/b;

    .line 1048
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/S;->context:Landroid/content/Context;

    .line 1050
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/S;)V

    .line 1051
    return-object v0
.end method

.method private connect()V
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    const-string v0, "try to connect while connecting."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1258
    const-string v0, "try to connect while is connected."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhb:Lcom/xiaomi/smack/c;

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/c;->eU(Ljava/lang/String;)V

    .line 1264
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->JX()V

    .line 1266
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-nez v0, :cond_0

    .line 1268
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager;->ep(Landroid/content/Context;)V

    .line 1269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->cr(Z)V

    goto :goto_0
.end method

.method private cp(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhe:J

    .line 482
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/i;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "ERROR, the job controller is blocked."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 484
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->J(Landroid/content/Context;I)V

    .line 485
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    .line 497
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->cq(Z)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->KN()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->dF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    :cond_2
    new-instance v0, Lcom/xiaomi/push/service/aT;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/aT;-><init>(Lcom/xiaomi/push/service/XMPushService;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    goto :goto_0

    .line 493
    :cond_3
    new-instance v0, Lcom/xiaomi/push/service/aN;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/push/service/aN;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 494
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->cq(Z)V

    goto :goto_0
.end method

.method private cr(Z)V
    .locals 2

    .prologue
    .line 1275
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->Gd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    if-eqz p1, :cond_1

    .line 1277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_BLOCKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static er(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1804
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1805
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 1806
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1807
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1808
    const-string v2, "Push Service"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1809
    const-string v2, "Push Service"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1810
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1811
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1816
    :goto_0
    return-object v0

    .line 1813
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1814
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1815
    const-string v2, "Push Service"

    const-string v3, "Push Service"

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->JW()V

    return-void
.end method

.method static synthetic g(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/c;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhb:Lcom/xiaomi/smack/c;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/i;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhi:Lcom/xiaomi/push/service/PacketSync;

    return-object v0
.end method

.method static synthetic k(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->connect()V

    return-void
.end method

.method static synthetic l(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->JR()V

    return-void
.end method

.method public static n(ILjava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 353
    const-string v1, "Enter"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p0, v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    const-string v1, "Leave"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 359
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method JT()V
    .locals 4

    .prologue
    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->bhe:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/smack/h;->KS()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->aR(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->cp(Z)V

    goto :goto_0
.end method

.method public JU()Z
    .locals 1

    .prologue
    .line 1217
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->dE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->Jx()I

    move-result v0

    if-lez v0, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->JV()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1217
    :goto_0
    return v0

    .line 1219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public JV()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1229
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1230
    const-string v2, "IS_CM_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1231
    const-string v3, "IS_CU_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1232
    const-string v4, "IS_CT_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1233
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1235
    :cond_1
    :goto_0
    return v0

    .line 1234
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public JY()Lcom/xiaomi/push/service/b;
    .locals 1

    .prologue
    .line 1306
    new-instance v0, Lcom/xiaomi/push/service/b;

    invoke-direct {v0}, Lcom/xiaomi/push/service/b;-><init>()V

    return-object v0
.end method

.method public JZ()Lcom/xiaomi/push/service/b;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bfU:Lcom/xiaomi/push/service/b;

    return-object v0
.end method

.method public Ka()Lcom/xiaomi/smack/a;
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    return-object v0
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smack/a;->a(ILjava/lang/Exception;)V

    .line 1202
    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    .line 1205
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->fg(I)V

    .line 1206
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->fg(I)V

    .line 1208
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->J(Landroid/content/Context;I)V

    .line 1209
    return-void

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .prologue
    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    const-string v1, "com.xiaomi.metok.geofencing.state_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    return-void
.end method

.method public a(Lcom/xiaomi/push/service/aP;J)V
    .locals 2

    .prologue
    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/push/service/i;->a(Lcom/xiaomi/push/service/l;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_0
    return-void

    .line 1104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/smack/a;)V
    .locals 3

    .prologue
    .line 1724
    invoke-static {}, Lcom/xiaomi/e/g;->Lh()Lcom/xiaomi/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/e/f;->a(Lcom/xiaomi/smack/a;)V

    .line 1725
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->cr(Z)V

    .line 1726
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhc:Lcom/xiaomi/push/service/ac;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/ac;->JF()V

    .line 1727
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->Jw()Ljava/util/ArrayList;

    move-result-object v0

    .line 1728
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/S;

    .line 1729
    new-instance v2, Lcom/xiaomi/push/service/aI;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/push/service/aI;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V

    .line 1730
    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    goto :goto_0

    .line 1732
    :cond_0
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1718
    invoke-static {}, Lcom/xiaomi/e/g;->Lh()Lcom/xiaomi/e/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/e/f;->a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V

    .line 1719
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->cq(Z)V

    .line 1720
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1736
    invoke-static {}, Lcom/xiaomi/e/g;->Lh()Lcom/xiaomi/e/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/e/f;->a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V

    .line 1737
    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->cr(Z)V

    .line 1738
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->cq(Z)V

    .line 1739
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1055
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 1056
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/S;

    move-result-object v2

    .line 1057
    if-eqz v2, :cond_0

    .line 1058
    new-instance v0, Lcom/xiaomi/push/service/aW;

    move-object v1, p0

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/aW;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 1060
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method public a([Lcom/xiaomi/d/b;)V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->b([Lcom/xiaomi/d/b;)V

    .line 1160
    return-void

    .line 1158
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->a([Lcom/xiaomi/smack/packet/e;)V

    .line 1176
    return-void

    .line 1174
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/xiaomi/push/service/aP;)V
    .locals 2

    .prologue
    .line 1098
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;J)V

    .line 1099
    return-void
.end method

.method public b(Lcom/xiaomi/smack/a;)V
    .locals 1

    .prologue
    .line 1693
    const-string v0, "begin to connect..."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 1694
    invoke-static {}, Lcom/xiaomi/e/g;->Lh()Lcom/xiaomi/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/e/f;->b(Lcom/xiaomi/smack/a;)V

    .line 1695
    return-void
.end method

.method public c(Lcom/xiaomi/push/service/aP;)V
    .locals 2

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    iget v1, p1, Lcom/xiaomi/push/service/aP;->type:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/push/service/i;->a(ILcom/xiaomi/push/service/l;)V

    .line 1685
    return-void
.end method

.method public c([BLjava/lang/String;)V
    .locals 7

    .prologue
    const v6, 0x42c1d83

    .line 915
    if-nez p1, :cond_0

    .line 916
    const-string v0, "null payload"

    invoke-static {p0, p2, p1, v6, v0}, Lcom/xiaomi/push/service/u;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 918
    const-string v0, "register request without payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 950
    :goto_0
    return-void

    .line 920
    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 922
    :try_start_0
    invoke-static {v1, p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 923
    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bmC:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v2, :cond_1

    .line 925
    new-instance v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;-><init>()V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 928
    :try_start_1
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Nb()[B

    move-result-object v0

    .line 927
    invoke-static {v4, v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 930
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/u;->b(Ljava/lang/String;[B)V

    .line 931
    new-instance v0, Lcom/xiaomi/push/service/t;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 932
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 933
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getToken()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/t;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 931
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 936
    const v0, 0x42c1d83

    const-string v1, " data action error."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/u;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 944
    :catch_1
    move-exception v0

    .line 945
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 946
    const-string v0, " data container error."

    invoke-static {p0, p2, p1, v6, v0}, Lcom/xiaomi/push/service/u;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 940
    :cond_1
    const v0, 0x42c1d83

    :try_start_3
    const-string v1, " registration action required."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/u;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 942
    const-string v0, "register request with invalid payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public cq(Z)V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhc:Lcom/xiaomi/push/service/ac;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/ac;->co(Z)V

    .line 1187
    return-void
.end method

.method public d(Lcom/xiaomi/push/service/S;)V
    .locals 6

    .prologue
    .line 1190
    if-eqz p1, :cond_0

    .line 1191
    invoke-virtual {p1}, Lcom/xiaomi/push/service/S;->JA()J

    move-result-wide v0

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule rebind job in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 1193
    new-instance v2, Lcom/xiaomi/push/service/aI;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/aI;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/S;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aP;J)V

    .line 1195
    :cond_0
    return-void
.end method

.method public f(Lcom/xiaomi/d/b;)V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->i(Lcom/xiaomi/d/b;)V

    .line 1152
    return-void

    .line 1150
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->f(Lcom/xiaomi/smack/packet/e;)V

    .line 1168
    return-void

    .line 1166
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ff(I)Z
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/i;->ff(I)Z

    move-result v0

    return v0
.end method

.method public fg(I)V
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/i;->fg(I)V

    .line 1677
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhh:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1090
    new-instance v0, Lcom/xiaomi/push/service/aR;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aR;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 145
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/c;->dx(Landroid/content/Context;)V

    .line 147
    invoke-static {p0}, Lcom/xiaomi/push/service/q;->el(Landroid/content/Context;)Lcom/xiaomi/push/service/p;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget v0, v0, Lcom/xiaomi/push/service/p;->aZk:I

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/a;->eG(I)V

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/W;->e(Lcom/xiaomi/push/service/XMPushService;)V

    .line 155
    new-instance v0, Lcom/xiaomi/push/service/ay;

    const/16 v3, 0x1466

    const-string v4, "xiaomi.com"

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/ay;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhb:Lcom/xiaomi/smack/c;

    .line 169
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhb:Lcom/xiaomi/smack/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/c;->cC(Z)V

    .line 171
    new-instance v0, Lcom/xiaomi/d/f;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->bhb:Lcom/xiaomi/smack/c;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/d/f;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhg:Lcom/xiaomi/d/f;

    .line 173
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->JY()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bfU:Lcom/xiaomi/push/service/b;

    .line 177
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->Gd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bfU:Lcom/xiaomi/push/service/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/b;->ee(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/push/service/b/a;->dx(Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhg:Lcom/xiaomi/d/f;

    invoke-virtual {v0, p0}, Lcom/xiaomi/d/f;->a(Lcom/xiaomi/smack/e;)V

    .line 188
    new-instance v0, Lcom/xiaomi/push/service/PacketSync;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PacketSync;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhi:Lcom/xiaomi/push/service/PacketSync;

    .line 190
    new-instance v0, Lcom/xiaomi/push/service/ac;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ac;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhc:Lcom/xiaomi/push/service/ac;

    .line 192
    new-instance v0, Lcom/xiaomi/push/service/c;

    invoke-direct {v0}, Lcom/xiaomi/push/service/c;-><init>()V

    .line 193
    invoke-virtual {v0}, Lcom/xiaomi/push/service/c;->register()V

    .line 195
    invoke-static {}, Lcom/xiaomi/e/g;->Lg()Lcom/xiaomi/e/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/e/g;->e(Lcom/xiaomi/push/service/XMPushService;)V

    .line 197
    new-instance v0, Lcom/xiaomi/push/service/i;

    const-string v1, "Connection Controller Thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    .line 198
    new-instance v0, Lcom/xiaomi/push/service/az;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/az;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 214
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->Jz()V

    .line 216
    new-instance v1, Lcom/xiaomi/push/service/aA;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/aA;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/R;)V

    .line 228
    new-instance v0, Lcom/xiaomi/push/service/aM;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aM;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhd:Lcom/xiaomi/push/service/aM;

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->bhd:Lcom/xiaomi/push/service/aM;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->Kb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->Kc()V

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 252
    invoke-static {}, Lcom/xiaomi/push/service/ak;->JM()Lcom/xiaomi/push/service/ak;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/xiaomi/push/service/ak;->JN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/ak;->init(Landroid/content/Context;)V

    .line 259
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->JQ()Lcom/xiaomi/push/service/an;

    move-result-object v1

    const-string v2, "UPLOADER_FROM_XMPUSHSERVICE"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ak;->a(Lcom/xiaomi/push/service/an;Ljava/lang/String;)V

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhl:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    .line 265
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/c/f;->dB(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/c/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/d;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const v2, 0x15180

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/h;II)Z

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMPushService created pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaomi/push/service/XMPushService;->bhf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 269
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhd:Lcom/xiaomi/push/service/aM;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1115
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhl:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1116
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhj:Lcom/xiaomi/push/service/i;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/i;->Jn()V

    .line 1117
    new-instance v0, Lcom/xiaomi/push/service/aH;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/aH;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 1132
    new-instance v0, Lcom/xiaomi/push/service/aQ;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aQ;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    .line 1135
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->Jz()V

    .line 1136
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->J(Landroid/content/Context;I)V

    .line 1137
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Jv()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->Jy()V

    .line 1139
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bhg:Lcom/xiaomi/d/f;

    invoke-virtual {v0, p0}, Lcom/xiaomi/d/f;->b(Lcom/xiaomi/smack/e;)V

    .line 1140
    invoke-static {}, Lcom/xiaomi/push/service/ae;->JH()Lcom/xiaomi/push/service/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/ae;->clear()V

    .line 1141
    invoke-static {}, Lcom/xiaomi/push/service/b/a;->stop()V

    .line 1142
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1143
    const-string v0, "Service destroyed"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 504
    if-nez p1, :cond_1

    .line 505
    const-string v0, "onStart() with intent NULL"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 509
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    const-string v0, "Service called on timer"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 512
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->JS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-direct {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->cp(Z)V

    .line 528
    :cond_0
    :goto_1
    return-void

    .line 507
    :cond_1
    const-string v0, "onStart() with intent.Action = %s, chid = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/xiaomi/push/service/V;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_2
    const-string v0, "com.xiaomi.push.check_alive"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    const-string v0, "Service called on check alive."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->JS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->cp(Z)V

    goto :goto_1

    .line 520
    :cond_3
    const-string v0, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/xiaomi/push/service/aO;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/aO;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/aP;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    .line 1085
    sget v0, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return v0
.end method
