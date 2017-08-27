.class public Lcom/android/settings/wifi/MiuiWifiService;
.super Landroid/app/Service;
.source "MiuiWifiService.java"


# static fields
.field public static aCI:Landroid/net/Uri;


# instance fields
.field private aCJ:Landroid/os/HandlerThread;

.field private aCK:Lcom/android/settings/wifi/ao;

.field private aCL:Landroid/net/NetworkInfo$State;

.field private aCM:Z

.field private aCN:Ljava/util/ArrayList;

.field private aCt:Lcom/android/settings/wifi/openwifi/l;

.field private jt:Landroid/net/wifi/WifiManager;

.field private final mBinder:Landroid/os/IBinder;

.field private tN:Landroid/widget/CheckBox;

.field private v:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "http://clients3.google.com/generate_204"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiService;->aCI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCN:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lcom/android/settings/wifi/J;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/J;-><init>(Lcom/android/settings/wifi/MiuiWifiService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->mBinder:Landroid/os/IBinder;

    .line 229
    return-void
.end method

.method private E(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 278
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 280
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 281
    const-string v1, "MiuiWifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " save network failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    :cond_1
    return-void
.end method

.method private F(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 171
    const-string v0, "wifiConfiguration"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    :cond_0
    return-void
.end method

.method private G(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 180
    const-string v0, "miui.intent.extra.BSSID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    const-string v0, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/MiuiWifiService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLandroid/content/Intent;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/openwifi/l;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCN:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiService;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiService;->E(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/ao;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCK:Lcom/android/settings/wifi/ao;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/MiuiWifiService;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->tN:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private yl()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCK:Lcom/android/settings/wifi/ao;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ao;->zd()Ljava/util/ArrayList;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    :cond_0
    return-void
.end method

.method private ym()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 193
    if-nez v1, :cond_1

    .line 194
    iput-object v5, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-nez v2, :cond_3

    .line 200
    :cond_2
    iput-object v5, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    goto :goto_0

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCK:Lcom/android/settings/wifi/ao;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/ao;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 208
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 209
    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCK:Lcom/android/settings/wifi/ao;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/ao;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 211
    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 212
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-nez v3, :cond_6

    .line 213
    const-string v0, "http://clients3.google.com/generate_204"

    invoke-static {p0, v0}, Lcom/android/settings/wifi/j;->G(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 215
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/MiuiWifiService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLandroid/content/Intent;)V

    goto :goto_0

    .line 218
    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCK:Lcom/android/settings/wifi/ao;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/ao;->g(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings/wifi/openwifi/n;)V
    .locals 1

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 337
    const-string v0, "MiuiWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open wifi mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v0, "MiuiWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open wifi ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/openwifi/l;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCK:Lcom/android/settings/wifi/ao;

    invoke-virtual {v0, p2}, Lcom/android/settings/wifi/ao;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/p;->cJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    new-instance v0, Lcom/android/settings/wifi/openwifi/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/wifi/openwifi/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-nez v0, :cond_4

    .line 349
    if-eqz p4, :cond_3

    .line 350
    invoke-static {p0, p3, p2, p1, p5}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 361
    :cond_3
    :goto_0
    return-void

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0, p3}, Lcom/android/settings/wifi/openwifi/l;->i(Landroid/net/Uri;)V

    .line 355
    if-eqz p5, :cond_5

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0, p5}, Lcom/android/settings/wifi/openwifi/l;->setIntent(Landroid/content/Intent;)V

    .line 358
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiService;->yn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiService;->yo()V

    goto :goto_0
.end method

.method public b(Lcom/android/settings/wifi/openwifi/n;)V
    .locals 1

    .prologue
    .line 391
    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 79
    invoke-static {p0}, Lcom/android/settings/wifi/ao;->cJ(Landroid/content/Context;)Lcom/android/settings/wifi/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCK:Lcom/android/settings/wifi/ao;

    .line 80
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->jt:Landroid/net/wifi/WifiManager;

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorkHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCJ:Landroid/os/HandlerThread;

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCJ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v0, Lcom/android/settings/wifi/K;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCJ:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/K;-><init>(Lcom/android/settings/wifi/MiuiWifiService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 87
    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCK:Lcom/android/settings/wifi/ao;

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/ao;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/settings/wifi/openwifi/l;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCJ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 107
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 112
    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 116
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_1

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiService;->ym()V

    .line 119
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_3

    move v1, v2

    :goto_0
    invoke-static {p0, v1}, Lcom/android/settings/wifi/openwifi/l;->m(Landroid/content/Context;Z)V

    .line 122
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCL:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/settings/analytics/b;->a(Landroid/net/NetworkInfo$State;Landroid/net/NetworkInfo$State;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCL:Landroid/net/NetworkInfo$State;

    .line 146
    :cond_2
    :goto_1
    return v2

    .line 119
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :cond_4
    const-string v1, "miui.intent.action.WIFI_SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiService;->yl()V

    goto :goto_1

    .line 127
    :cond_5
    const-string v1, "miui.intent.action.RESTORE_WIFI_CONFIGURATIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiService;->F(Landroid/content/Intent;)V

    goto :goto_1

    .line 129
    :cond_6
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    const-string v0, "connected"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiService;->F(Landroid/content/Intent;)V

    goto :goto_1

    .line 134
    :cond_8
    const-string v1, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 135
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiService;->G(Landroid/content/Intent;)V

    goto :goto_1

    .line 136
    :cond_9
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const-string v0, "changeReason"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 139
    if-ne v0, v2, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const/4 v1, 0x4

    const-string v3, "wifiConfiguration"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public yn()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 292
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 293
    const-string v3, "key_agreement_remind_again"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCM:Z

    if-eqz v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 299
    const-string v3, "com.xiaomi"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 300
    array-length v2, v2

    if-gtz v2, :cond_0

    .line 304
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 306
    const v3, 0x7f0a1045

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0a1044

    new-instance v4, Lcom/android/settings/wifi/I;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/I;-><init>(Lcom/android/settings/wifi/MiuiWifiService;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040199

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 324
    const v0, 0x7f1300d9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->tN:Landroid/widget/CheckBox;

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->tN:Landroid/widget/CheckBox;

    const v4, 0x7f0a1042

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 326
    const v0, 0x7f130056

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    const v4, 0x7f0a1043

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 328
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 329
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 330
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 331
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCM:Z

    move v0, v1

    .line 332
    goto :goto_0
.end method

.method public yo()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->zN()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->zH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    instance-of v0, v0, Lcom/android/settings/wifi/openwifi/p;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->v:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 369
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public yp()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yq()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->yq()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public yr()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->yr()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
