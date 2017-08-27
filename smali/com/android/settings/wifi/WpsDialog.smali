.class public Lcom/android/settings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"


# instance fields
.field private aBa:Landroid/widget/TextView;

.field private aGj:Landroid/widget/ProgressBar;

.field private aGk:Ljava/util/Timer;

.field private aGl:Landroid/net/wifi/WifiManager$WpsCallback;

.field private aGm:I

.field private aGn:Ljava/lang/String;

.field aGo:Lcom/android/settings/wifi/WpsDialog$DialogState;

.field private gr:Landroid/widget/Button;

.field private jt:Landroid/net/wifi/WifiManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mV:Landroid/content/IntentFilter;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGn:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->aGt:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGo:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 81
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    .line 82
    iput p2, p0, Lcom/android/settings/wifi/WpsDialog;->aGm:I

    .line 124
    new-instance v0, Lcom/android/settings/wifi/aT;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aT;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGl:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mV:Landroid/content/IntentFilter;

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mV:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/android/settings/wifi/aS;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aS;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->setCanceledOnTouchOutside(Z)V

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGo:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->aGo:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 235
    iput-object p2, p0, Lcom/android/settings/wifi/WpsDialog;->aGn:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/aX;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/aX;-><init>(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog;->g(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGj:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->gr:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aBa:Landroid/widget/TextView;

    return-object v0
.end method

.method private g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 266
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 267
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGo:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->aGv:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->aGw:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f1303b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aBa:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aBa:Landroid/widget/TextView;

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f1303af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGj:Landroid/widget/ProgressBar;

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGj:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGj:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f1303b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f1303b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->gr:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->gr:Landroid/widget/Button;

    const v1, 0x7f0a030c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->gr:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/aU;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/aU;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->jt:Landroid/net/wifi/WifiManager;

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->setView(Landroid/view/View;)V

    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 184
    iget v1, p0, Lcom/android/settings/wifi/WpsDialog;->aGm:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 185
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->jt:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->aGl:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGo:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const-string v0, "android:dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog$DialogState;->valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/WpsDialog$DialogState;

    move-result-object v0

    .line 151
    const-string v1, "android:dialogMsg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    const-string v1, "android:dialogState"

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->aGo:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WpsDialog$DialogState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "android:dialogMsg"

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->aGn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 195
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGk:Ljava/util/Timer;

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGk:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/wifi/aV;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/aV;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mV:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGo:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->aGv:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->jt:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGk:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->aGk:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 227
    :cond_2
    return-void
.end method
