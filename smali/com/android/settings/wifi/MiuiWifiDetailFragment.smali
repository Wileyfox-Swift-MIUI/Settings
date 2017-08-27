.class public Lcom/android/settings/wifi/MiuiWifiDetailFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/u;


# instance fields
.field private aBU:Lcom/android/settings/wifi/t;

.field private aBo:Lcom/android/b/e/a;

.field private aCq:I

.field private aCr:Landroid/net/wifi/WifiConfiguration;

.field aCs:I

.field aCt:Lcom/android/settings/wifi/openwifi/l;

.field private aCu:Z

.field private aCv:Z

.field private aCw:Z

.field private aCx:Lcom/android/settings/wifi/aq;

.field private aCy:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCs:I

    .line 214
    new-instance v0, Lcom/android/settings/wifi/B;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/B;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCy:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCr:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->yf()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCu:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCq:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCv:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/aq;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCx:Lcom/android/settings/wifi/aq;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->yh()V

    return-void
.end method

.method private yd()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 134
    const v0, 0x7f130271

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 135
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCq:I

    if-eq v1, v8, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v2}, Lcom/android/b/e/a;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiSettings;->e(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    .line 137
    const v1, 0x7f13026f

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 138
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    if-nez v7, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    if-nez v7, :cond_0

    .line 141
    new-instance v2, Lcom/android/settings/wifi/v;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/v;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v1, v1, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_4

    const-string v1, "CMCC"

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 150
    :goto_1
    if-eqz v1, :cond_5

    move v1, v5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    if-nez v7, :cond_7

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    if-nez v7, :cond_1

    .line 156
    new-instance v1, Lcom/android/settings/wifi/w;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/w;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_1
    const v0, 0x7f130270

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 182
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCq:I

    if-eq v1, v8, :cond_2

    if-eqz v0, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    new-instance v1, Lcom/android/settings/wifi/z;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/z;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 139
    goto :goto_0

    :cond_4
    move v1, v4

    .line 148
    goto :goto_1

    .line 150
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v5

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_2

    :cond_7
    move v3, v4

    .line 154
    goto :goto_3
.end method

.method private ye()V
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aMo:Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/android/settings/wifi/bm;->c(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f13037c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 200
    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    new-instance v1, Lcom/android/settings/wifi/A;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/A;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private yf()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 225
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->yg()V

    .line 226
    new-instance v0, Lcom/android/settings/wifi/aq;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCy:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    move v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/aq;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCx:Lcom/android/settings/wifi/aq;

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCx:Lcom/android/settings/wifi/aq;

    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/aq;->j(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCx:Lcom/android/settings/wifi/aq;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aq;->show()V

    .line 229
    return-void
.end method

.method private yg()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCx:Lcom/android/settings/wifi/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCx:Lcom/android/settings/wifi/aq;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aq;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCx:Lcom/android/settings/wifi/aq;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aq;->dismiss()V

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCx:Lcom/android/settings/wifi/aq;

    .line 236
    return-void
.end method

.method private yh()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 241
    const v1, 0x7f130235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    const v1, 0x7f0a0fb7

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v3}, Lcom/android/settings/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 244
    iget v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCs:I

    if-ltz v2, :cond_0

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0fc5

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCs:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_1
    return-void
.end method

.method private yi()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 256
    const v1, 0x7f130236

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    const v1, 0x7f130237

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    .line 259
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCw:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCu:Z

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCu:Z

    .line 261
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCu:Z

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 262
    new-instance v1, Lcom/android/settings/wifi/C;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/C;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/e;->cH(Landroid/content/Context;)Lcom/android/settings/wifi/e;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/e;->cs(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method private yj()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v0, Lcom/android/settings/d/f;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/d/f;-><init>(Landroid/net/NetworkPolicyManager;)V

    .line 276
    invoke-virtual {v0}, Lcom/android/settings/d/f;->read()V

    .line 277
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v1, v1, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/d/f;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 280
    const v2, 0x7f130239

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 281
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v2, 0x7f13023a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    .line 283
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCw:Z

    if-nez v2, :cond_1

    .line 284
    if-eqz v1, :cond_3

    .line 285
    iget-wide v2, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 286
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCv:Z

    .line 294
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCv:Z

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 295
    new-instance v1, Lcom/android/settings/wifi/D;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/D;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 288
    :cond_2
    iget-boolean v1, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCv:Z

    goto :goto_1

    .line 291
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCv:Z

    goto :goto_1
.end method

.method private yk()V
    .locals 2

    .prologue
    .line 359
    new-instance v0, Lcom/android/settings/wifi/E;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/E;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/E;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 374
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f0401ae

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public bD(Z)V
    .locals 0

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->i(Z)V

    .line 307
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    const v1, 0x7f0a0dd5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 317
    .line 318
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCr:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCr:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCr:Landroid/net/wifi/WifiConfiguration;

    .line 326
    :cond_0
    if-eqz v0, :cond_1

    .line 327
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 328
    const-string v2, "network_id"

    iget v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCq:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    const-string v2, "is_delete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    const-string v2, "config"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 334
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/e;->cH(Landroid/content/Context;)Lcom/android/settings/wifi/e;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v3, v3, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCu:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/wifi/e;->g(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 344
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCu:Z

    if-eqz v2, :cond_2

    .line 345
    const-string v2, "MiuiWifiDetailFragment"

    const-string v3, "clickAutoConnectWifi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v3, v3, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/wifi/e;->E(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    :cond_2
    new-instance v0, Lcom/android/settings/d/f;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/d/f;-><init>(Landroid/net/NetworkPolicyManager;)V

    .line 350
    invoke-virtual {v0}, Lcom/android/settings/d/f;->read()V

    .line 351
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aEU:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCv:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/d/f;->a(Landroid/net/NetworkTemplate;Z)V

    .line 355
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->b(Landroid/os/Bundle;)V

    .line 356
    return-void

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBU:Lcom/android/settings/wifi/t;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBU:Lcom/android/settings/wifi/t;

    invoke-virtual {v0}, Lcom/android/settings/wifi/t;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    const-string v0, "is_autoConnect"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCu:Z

    .line 88
    const-string v0, "is_metered"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCv:Z

    .line 89
    iput-boolean v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCw:Z

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    iput v7, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCq:I

    .line 94
    new-instance v1, Lcom/android/b/e/a;

    invoke-direct {v1, v6, v0}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    .line 95
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setHasOptionsMenu(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget v0, v0, Lcom/android/b/e/a;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCq:I

    .line 98
    new-instance v0, Lcom/android/settings/wifi/t;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/t;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/b/e/a;ZLcom/android/settings/wifi/u;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBU:Lcom/android/settings/wifi/t;

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->bssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aBo:Lcom/android/b/e/a;

    iget-object v1, v1, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/android/settings/wifi/openwifi/l;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCt:Lcom/android/settings/wifi/openwifi/l;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->yd()V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->yh()V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->ye()V

    .line 105
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCq:I

    if-eq v0, v7, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCt:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCt:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->zO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->yk()V

    .line 109
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->yg()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCt:Lcom/android/settings/wifi/openwifi/l;

    .line 129
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onDestroy()V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onResume()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->yi()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->yj()V

    .line 116
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "is_metered"

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCv:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string v0, "is_autoConnect"

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aCu:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method
