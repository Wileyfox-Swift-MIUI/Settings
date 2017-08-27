.class public Lcom/android/settings/RadioInfo;
.super Lmiui/app/Activity;
.source "RadioInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSlotId:I

.field private xJ:Landroid/widget/TextView;

.field private xK:Landroid/widget/TextView;

.field private xL:Landroid/widget/TextView;

.field private xM:Landroid/widget/TextView;

.field private xN:Landroid/widget/TextView;

.field private xO:Landroid/widget/TextView;

.field private xP:Landroid/widget/TextView;

.field private xQ:Landroid/widget/TextView;

.field private xR:Landroid/widget/TextView;

.field private xS:Landroid/widget/TextView;

.field private xT:Landroid/widget/TextView;

.field private xU:Landroid/widget/TextView;

.field private xV:Landroid/widget/TextView;

.field private xW:Landroid/widget/TextView;

.field private xX:Landroid/widget/TextView;

.field private xY:Landroid/widget/TextView;

.field private xZ:Landroid/widget/TextView;

.field private yA:Ljava/util/List;

.field private yB:Landroid/telephony/PhoneStateListener;

.field private yC:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private yD:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private yE:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private yF:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private yG:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private yH:Landroid/view/MenuItem$OnMenuItemClickListener;

.field yI:Landroid/view/View$OnClickListener;

.field yJ:Lcom/android/settings/hd;

.field private yK:Landroid/widget/Button;

.field yL:Landroid/view/View$OnClickListener;

.field private yM:Landroid/widget/Button;

.field yN:Landroid/view/View$OnClickListener;

.field yO:Landroid/view/View$OnClickListener;

.field private yP:Landroid/widget/Button;

.field yQ:Landroid/view/View$OnClickListener;

.field yR:Landroid/view/View$OnClickListener;

.field yS:Landroid/view/View$OnClickListener;

.field yT:Landroid/view/View$OnClickListener;

.field yU:Landroid/view/View$OnClickListener;

.field yV:Landroid/view/View$OnClickListener;

.field yW:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private yX:[Ljava/lang/String;

.field private ya:Landroid/widget/TextView;

.field private yb:Landroid/widget/TextView;

.field private yc:Landroid/widget/TextView;

.field private yd:Landroid/widget/TextView;

.field private ye:Landroid/widget/TextView;

.field private yf:Landroid/widget/TextView;

.field private yg:Landroid/widget/TextView;

.field private yh:Landroid/widget/TextView;

.field private yi:Landroid/widget/TextView;

.field private yj:Landroid/widget/TextView;

.field private yk:Landroid/widget/EditText;

.field private yl:Landroid/widget/Button;

.field private ym:Landroid/widget/Button;

.field private yn:Landroid/widget/Button;

.field private yo:Landroid/widget/Button;

.field private yp:Landroid/widget/Button;

.field private yq:Landroid/widget/Button;

.field private yr:Landroid/widget/Button;

.field private ys:Landroid/widget/Spinner;

.field private yt:Lcom/android/internal/telephony/Phone;

.field private yu:Lmiui/telephony/SubscriptionInfo;

.field private yv:Ljava/lang/String;

.field private yw:Ljava/lang/String;

.field private yx:Ljava/lang/String;

.field private yy:Z

.field private yz:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 79
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->TAG:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    .line 147
    iput-object v1, p0, Lcom/android/settings/RadioInfo;->yu:Lmiui/telephony/SubscriptionInfo;

    .line 153
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->yy:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->yz:Z

    .line 158
    new-instance v0, Lcom/android/settings/gD;

    invoke-direct {v0, p0}, Lcom/android/settings/gD;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yB:Landroid/telephony/PhoneStateListener;

    .line 208
    new-instance v0, Lcom/android/settings/gP;

    invoke-direct {v0, p0}, Lcom/android/settings/gP;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 968
    new-instance v0, Lcom/android/settings/hb;

    invoke-direct {v0, p0}, Lcom/android/settings/hb;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yC:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 983
    new-instance v0, Lcom/android/settings/hc;

    invoke-direct {v0, p0}, Lcom/android/settings/hc;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yD:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 998
    new-instance v0, Lcom/android/settings/gE;

    invoke-direct {v0, p0}, Lcom/android/settings/gE;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yE:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1014
    new-instance v0, Lcom/android/settings/gF;

    invoke-direct {v0, p0}, Lcom/android/settings/gF;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yF:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1021
    new-instance v0, Lcom/android/settings/gG;

    invoke-direct {v0, p0}, Lcom/android/settings/gG;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yG:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1030
    new-instance v0, Lcom/android/settings/gH;

    invoke-direct {v0, p0}, Lcom/android/settings/gH;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yH:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1048
    new-instance v0, Lcom/android/settings/gI;

    invoke-direct {v0, p0}, Lcom/android/settings/gI;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yI:Landroid/view/View$OnClickListener;

    .line 1073
    new-instance v0, Lcom/android/settings/hd;

    invoke-direct {v0, p0}, Lcom/android/settings/hd;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yJ:Lcom/android/settings/hd;

    .line 1077
    new-instance v0, Lcom/android/settings/gJ;

    invoke-direct {v0, p0}, Lcom/android/settings/gJ;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yL:Landroid/view/View$OnClickListener;

    .line 1103
    new-instance v0, Lcom/android/settings/gK;

    invoke-direct {v0, p0}, Lcom/android/settings/gK;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yN:Landroid/view/View$OnClickListener;

    .line 1120
    new-instance v0, Lcom/android/settings/gL;

    invoke-direct {v0, p0}, Lcom/android/settings/gL;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yO:Landroid/view/View$OnClickListener;

    .line 1173
    new-instance v0, Lcom/android/settings/gN;

    invoke-direct {v0, p0}, Lcom/android/settings/gN;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yQ:Landroid/view/View$OnClickListener;

    .line 1196
    new-instance v0, Lcom/android/settings/gO;

    invoke-direct {v0, p0}, Lcom/android/settings/gO;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yR:Landroid/view/View$OnClickListener;

    .line 1203
    new-instance v0, Lcom/android/settings/gQ;

    invoke-direct {v0, p0}, Lcom/android/settings/gQ;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yS:Landroid/view/View$OnClickListener;

    .line 1216
    new-instance v0, Lcom/android/settings/gR;

    invoke-direct {v0, p0}, Lcom/android/settings/gR;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yT:Landroid/view/View$OnClickListener;

    .line 1222
    new-instance v0, Lcom/android/settings/gS;

    invoke-direct {v0, p0}, Lcom/android/settings/gS;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yU:Landroid/view/View$OnClickListener;

    .line 1230
    new-instance v0, Lcom/android/settings/gT;

    invoke-direct {v0, p0}, Lcom/android/settings/gT;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yV:Landroid/view/View$OnClickListener;

    .line 1236
    new-instance v0, Lcom/android/settings/gU;

    invoke-direct {v0, p0}, Lcom/android/settings/gU;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yW:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1249
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTE/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTE/GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LTE/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TD-SCDMA only"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TD-SCDMA and WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TD-SCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TD-SCDMA and GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TD-SCDMA, GSM and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TD-SCDMA, GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TD-SCDMA, WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TD-SCDMA, GSM/WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TD-SCDMA, GSM/WCDMA, CDMA and EVDO"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TD-SCDMA, LTE,CDMA, EVDO, GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yX:[Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hg()V

    return-void
.end method

.method static synthetic B(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hh()V

    return-void
.end method

.method static synthetic C(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hi()V

    return-void
.end method

.method static synthetic D(Lcom/android/settings/RadioInfo;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    return v0
.end method

.method static synthetic E(Lcom/android/settings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic F(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gT()V

    return-void
.end method

.method static synthetic G(Lcom/android/settings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hm()Z

    move-result v0

    return v0
.end method

.method static synthetic H(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hn()V

    return-void
.end method

.method static synthetic I(Lcom/android/settings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->ho()Z

    move-result v0

    return v0
.end method

.method static synthetic J(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hr()V

    return-void
.end method

.method static synthetic K(Lcom/android/settings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hp()Z

    move-result v0

    return v0
.end method

.method static synthetic L(Lcom/android/settings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hs()Z

    move-result v0

    return v0
.end method

.method static synthetic M(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->ht()V

    return-void
.end method

.method static synthetic N(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gU()V

    return-void
.end method

.method static synthetic O(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hk()V

    return-void
.end method

.method static synthetic P(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Q(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hj()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method private final a(Landroid/telephony/CellLocation;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 586
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 587
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 588
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 589
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 590
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->xV:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a00d6

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v8, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0a00d7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :goto_2
    return-void

    .line 590
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 595
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 596
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 597
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 598
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 599
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 600
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 601
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 602
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->xV:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v8, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "SID = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_4

    const-string v0, "unknown"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_5

    const-string v0, "unknown"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v3, v8, :cond_6

    const-string v0, "unknown"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LONG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v4, v8, :cond_7

    const-string v0, "unknown"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 617
    :cond_8
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xV:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private final a(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xY:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gV()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->m(Ljava/util/List;)V

    return-void
.end method

.method private final a(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    if-eqz p1, :cond_2

    .line 627
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    const-string v0, "no neighboring cells"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xW:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    return-void

    .line 630
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 631
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 635
    :cond_2
    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->yy:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hb()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->yz:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->he()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hl()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hc()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hf()V

    return-void
.end method

.method static synthetic g(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gY()V

    return-void
.end method

.method private gS()V
    .locals 2

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00b7

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yl:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 515
    return-void

    .line 511
    :cond_0
    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private gT()V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ym:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yJ:Lcom/android/settings/hd;

    invoke-virtual {v2}, Lcom/android/settings/hd;->hu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 519
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSlot(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->m(Ljava/util/List;)V

    .line 520
    return-void
.end method

.method private gU()V
    .locals 2

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yj:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    return-void

    .line 523
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private final gV()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 529
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 533
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xR:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 540
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 542
    :cond_2
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 544
    if-ne v4, v2, :cond_4

    .line 546
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->xR:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0a00d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a00d5

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    const-string v0, "A7-LTE-ALL"

    const-string v1, "persist.radio.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gW()V

    .line 555
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private final gW()V
    .locals 1

    .prologue
    .line 558
    new-instance v0, Lcom/android/settings/gW;

    invoke-direct {v0, p0}, Lcom/android/settings/gW;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 564
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 565
    return-void
.end method

.method private final gX()V
    .locals 4

    .prologue
    .line 568
    .line 570
    const-string v0, "QOEMHOOK"

    .line 571
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    .line 572
    new-array v0, v0, [B

    .line 574
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 575
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 576
    const-string v2, "QOEMHOOK"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 577
    const v2, 0x80035

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 578
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 579
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryASDivStatus a seperate thread, req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 582
    return-void
.end method

.method private final gY()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xT:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->yy:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    return-void
.end method

.method private final gZ()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xU:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->yz:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    return-void
.end method

.method static synthetic h(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gZ()V

    return-void
.end method

.method private final ha()V
    .locals 5

    .prologue
    const v4, 0x7f0a0b59

    .line 675
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 676
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 678
    const v0, 0x7f0a00d1

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    packed-switch v2, :pswitch_data_0

    .line 693
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->xO:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xN:Landroid/widget/TextView;

    const v2, 0x7f0a00c8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 701
    :goto_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yu:Lmiui/telephony/SubscriptionInfo;

    if-eqz v0, :cond_3

    .line 702
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yu:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 703
    :goto_2
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->xM:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yu:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    :goto_4
    return-void

    .line 682
    :pswitch_0
    const v0, 0x7f0a00c4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 686
    :pswitch_1
    const v0, 0x7f0a00c6

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 689
    :pswitch_2
    const v0, 0x7f0a00c7

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xN:Landroid/widget/TextView;

    const v2, 0x7f0a00c9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 702
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 703
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 705
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 706
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xM:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 708
    :cond_4
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xM:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final hb()V
    .locals 3

    .prologue
    .line 735
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getDataStateForSlot(I)I

    move-result v1

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 737
    const v0, 0x7f0a00d1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 739
    packed-switch v1, :pswitch_data_0

    .line 754
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->xP:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    return-void

    .line 741
    :pswitch_0
    const v0, 0x7f0a00cf

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 744
    :pswitch_1
    const v0, 0x7f0a00ce

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 747
    :pswitch_2
    const v0, 0x7f0a00cd

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 750
    :pswitch_3
    const v0, 0x7f0a00d0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final hc()V
    .locals 4

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xQ:Landroid/widget/TextView;

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSlot(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    return-void
.end method

.method private final hd()V
    .locals 4

    .prologue
    const v3, 0x7f0a00d1

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 766
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 767
    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->xJ:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 772
    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->xK:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    return-void
.end method

.method private final he()V
    .locals 2

    .prologue
    .line 779
    const-string v0, "net.gsm.radio-reset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->xZ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    const-string v0, "net.gsm.attempt-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->ya:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    const-string v0, "net.gsm.succeed-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yb:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    const-string v0, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yd:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    return-void
.end method

.method private final hf()V
    .locals 12

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 798
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v2

    .line 799
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v4

    .line 800
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v6

    .line 801
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v8

    .line 803
    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    const v10, 0x7f0a00d3

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    iget-object v10, p0, Lcom/android/settings/RadioInfo;->ye:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yf:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    return-void
.end method

.method private final hg()V
    .locals 4

    .prologue
    .line 817
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 818
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 819
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 820
    if-nez v0, :cond_0

    .line 821
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yv:Ljava/lang/String;

    .line 830
    :goto_0
    return-void

    .line 823
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yv:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yv:Ljava/lang/String;

    goto :goto_0

    .line 827
    :catch_1
    move-exception v0

    .line 828
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yv:Ljava/lang/String;

    goto :goto_0
.end method

.method private final hh()V
    .locals 2

    .prologue
    .line 837
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 839
    if-nez v0, :cond_0

    .line 840
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yw:Ljava/lang/String;

    .line 851
    :goto_0
    return-void

    .line 842
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yw:Ljava/lang/String;

    goto :goto_0

    .line 846
    :catch_1
    move-exception v0

    .line 847
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yw:Ljava/lang/String;

    goto :goto_0

    .line 848
    :catch_2
    move-exception v0

    .line 849
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yw:Ljava/lang/String;

    goto :goto_0
.end method

.method private hi()V
    .locals 4

    .prologue
    .line 857
    const/4 v1, 0x0

    .line 860
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 863
    const-string v1, "Pass"

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->yx:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 870
    :goto_0
    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 874
    :cond_0
    :goto_1
    return-void

    .line 865
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail: Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->yx:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 867
    :catch_0
    move-exception v1

    .line 868
    :goto_2
    :try_start_3
    const-string v1, "Fail: IOException"

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->yx:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 870
    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 870
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 871
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    .line 870
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 867
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private hj()V
    .locals 3

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 878
    return-void
.end method

.method private final hk()V
    .locals 3

    .prologue
    const v2, 0x7f0a00d1

    .line 881
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->yv:Ljava/lang/String;

    .line 884
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->yw:Ljava/lang/String;

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->yx:Ljava/lang/String;

    .line 887
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yh:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yi:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    new-instance v1, Lcom/android/settings/gX;

    invoke-direct {v1, p0}, Lcom/android/settings/gX;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 898
    new-instance v2, Lcom/android/settings/gY;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/gY;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 905
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 907
    new-instance v2, Lcom/android/settings/gZ;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/gZ;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 914
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 916
    new-instance v2, Lcom/android/settings/ha;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/ha;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 923
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 924
    return-void
.end method

.method private final hl()V
    .locals 2

    .prologue
    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yc:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    return-void
.end method

.method private hm()Z
    .locals 2

    .prologue
    .line 1090
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private hn()V
    .locals 2

    .prologue
    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1095
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hm()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1098
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yK:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    return-void

    .line 1095
    :cond_0
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ho()Z
    .locals 2

    .prologue
    .line 1115
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private hp()Z
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    .line 1149
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    .line 1151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hq()V
    .locals 2

    .prologue
    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsVoLteProvisionedState isImsVoLteProvisioned()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1156
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00bd

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    .line 1161
    :goto_0
    return-void

    .line 1156
    :cond_0
    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    goto :goto_0
.end method

.method private hr()V
    .locals 2

    .prologue
    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->ho()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->ho()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1168
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yM:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    return-void

    .line 1165
    :cond_0
    const v0, 0x7f0a00b8

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hs()Z
    .locals 2

    .prologue
    .line 1185
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private ht()V
    .locals 2

    .prologue
    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hs()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1190
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hs()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1193
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yP:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    return-void

    .line 1190
    :cond_0
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->ha()V

    return-void
.end method

.method static synthetic k(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gS()V

    return-void
.end method

.method static synthetic l(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hq()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1277
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void
.end method

.method private final m(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->yA:Ljava/util/List;

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yA:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 644
    const/4 v0, 0x0

    .line 645
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 646
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 651
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v1, v0

    .line 653
    goto :goto_0

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xX:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method

.method static synthetic m(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yX:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/android/settings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ys:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic o(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic p(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xW:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yk:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yp:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic s(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->xS:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gX()V

    return-void
.end method

.method static synthetic u(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yv:Ljava/lang/String;

    return-object v0
.end method

.method private final updatePhoneState()V
    .locals 4

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 716
    const v0, 0x7f0a00d1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 718
    sget-object v3, Lcom/android/settings/gV;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 730
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->xL:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    return-void

    .line 720
    :pswitch_0
    const v0, 0x7f0a00ca

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 723
    :pswitch_1
    const v0, 0x7f0a00cb

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 726
    :pswitch_2
    const v0, 0x7f0a00cc

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic v(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic y(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yi:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 295
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 297
    const v0, 0x7f040123

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->setContentView(I)V

    .line 301
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 303
    const-string v2, "phone_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v2, "phone1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/fE;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    .line 306
    iput v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yu:Lmiui/telephony/SubscriptionInfo;

    .line 321
    :goto_0
    const v0, 0x7f130281

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xJ:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f130187

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xK:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f130293

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xL:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f130282

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xM:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f13028d

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xN:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f13028e

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xO:Landroid/widget/TextView;

    .line 327
    const v0, 0x7f13028f

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xP:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f130290

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xQ:Landroid/widget/TextView;

    .line 329
    const v0, 0x7f130287

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xR:Landroid/widget/TextView;

    .line 330
    const v0, 0x7f130288

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xS:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f130291

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xT:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f130292

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xU:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f130289

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xV:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f13028a

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xW:Landroid/widget/TextView;

    .line 335
    const v0, 0x7f13028b

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xX:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f13028c

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xY:Landroid/widget/TextView;

    .line 338
    const v0, 0x7f130294

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->xZ:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f130295

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ya:Landroid/widget/TextView;

    .line 340
    const v0, 0x7f130296

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yb:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f130297

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yc:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f13029a

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yd:Landroid/widget/TextView;

    .line 343
    const v0, 0x7f130298

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ye:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f130299

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yf:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f1302a4

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yk:Landroid/widget/EditText;

    .line 346
    const v0, 0x7f1302a6

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yj:Landroid/widget/TextView;

    .line 348
    const v0, 0x7f130284

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yg:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f130285

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yh:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f130286

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yi:Landroid/widget/TextView;

    .line 352
    const v0, 0x7f13029b

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ys:Landroid/widget/Spinner;

    .line 353
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->yX:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 355
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 356
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->ys:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ys:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yW:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 359
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->ys:Landroid/widget/Spinner;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/telephony/TelephonyManager;->isDisableLte(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 361
    const v0, 0x7f13029c

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yl:Landroid/widget/Button;

    .line 362
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yl:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yI:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const v0, 0x7f13029d

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ym:Landroid/widget/Button;

    .line 365
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ym:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yJ:Lcom/android/settings/hd;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v0, 0x7f13029e

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yK:Landroid/widget/Button;

    .line 368
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yK:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    const v0, 0x7f13029f

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yM:Landroid/widget/Button;

    .line 375
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yM:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    const v0, 0x7f1302a0

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yP:Landroid/widget/Button;

    .line 378
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yP:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v0, 0x7f130283

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yo:Landroid/widget/Button;

    .line 381
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yo:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yT:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    const v0, 0x7f1302a2

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yp:Landroid/widget/Button;

    .line 383
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yp:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yU:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const v0, 0x7f1302a3

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yq:Landroid/widget/Button;

    .line 385
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yq:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yV:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const v0, 0x7f1302a5

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yn:Landroid/widget/Button;

    .line 387
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yR:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    const v0, 0x7f1302a7

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yr:Landroid/widget/Button;

    .line 390
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yr:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yS:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 392
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yr:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 398
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 399
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 408
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 411
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSlot(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yA:Ljava/util/List;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mCellInfoValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yA:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 413
    return-void

    .line 310
    :cond_1
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/settings/fE;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    .line 311
    iput v4, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 313
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yu:Lmiui/telephony/SubscriptionInfo;

    goto/16 :goto_0

    .line 316
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yt:Lcom/android/internal/telephony/Phone;

    .line 317
    iput v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->yu:Lmiui/telephony/SubscriptionInfo;

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 359
    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 470
    const v0, 0x7f0a00c0

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yC:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 472
    const/4 v0, 0x2

    const v1, 0x7f0a00c1

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yD:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 474
    const/4 v0, 0x3

    const v1, 0x7f0a00c2

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yE:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 476
    const/4 v0, 0x4

    const v1, 0x7f0a00c3

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yF:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 478
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->yH:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 480
    return v2
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 455
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 457
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 460
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yB:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManagerEx;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 461
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 486
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 487
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v3}, Lmiui/telephony/TelephonyManagerEx;->getDataStateForSlot(I)I

    move-result v0

    .line 490
    packed-switch v0, :pswitch_data_0

    .line 499
    :pswitch_0
    const/4 v0, 0x0

    .line 502
    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 503
    return v1

    .line 493
    :pswitch_1
    const-string v0, "Disable data connection"

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 494
    goto :goto_0

    .line 496
    :pswitch_2
    const-string v0, "Enable data connection"

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 497
    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 417
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 420
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->ys:Landroid/widget/Spinner;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/telephony/TelephonyManager;->isDisableLte(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 421
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    .line 422
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gV()V

    .line 423
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gY()V

    .line 424
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gZ()V

    .line 425
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->ha()V

    .line 426
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getCellLocationForSlot(I)Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    .line 427
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hb()V

    .line 428
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->he()V

    .line 429
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hf()V

    .line 430
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gS()V

    .line 431
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gT()V

    .line 432
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hn()V

    .line 433
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hq()V

    .line 434
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hr()V

    .line 435
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->ht()V

    .line 436
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->hd()V

    .line 437
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->gU()V

    .line 439
    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->W:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 442
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->yB:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x25dc

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManagerEx;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 451
    return-void

    .line 420
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
