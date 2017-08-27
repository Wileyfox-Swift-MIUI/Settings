.class public Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"


# instance fields
.field private dD:Lcom/android/settings/aL;

.field private fx:Landroid/security/MiuiLockPatternUtils;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private sA:Landroid/widget/TextView;

.field private sB:Landroid/widget/ImageView;

.field private sC:Z

.field private sD:I

.field private sE:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

.field private sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

.field private ss:Landroid/widget/ImageView;

.field private st:Landroid/widget/ImageView;

.field private sz:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sC:Z

    .line 65
    iput v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sD:I

    .line 67
    new-instance v0, Lcom/android/settings/eU;

    invoke-direct {v0, p0}, Lcom/android/settings/eU;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sE:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sD:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sC:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sC:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fK()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->generateKey()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private fJ()V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sD:I

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fL()V

    .line 161
    :cond_0
    new-instance v0, Lcom/android/settings/eV;

    invoke-direct {v0, p0}, Lcom/android/settings/eV;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/eV;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    return-void
.end method

.method private fK()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fJ()V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sC:Z

    goto :goto_0
.end method

.method private fL()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v2, 0x41100000    # 9.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 213
    .line 215
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ss:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ss:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ss:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 218
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 219
    const-string v4, "MI Band 2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sA:Landroid/widget/TextView;

    const v4, 0x7f0a102a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 227
    :goto_1
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sB:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sB:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 230
    div-int/lit8 v4, v0, 0x12

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 231
    div-int/lit8 v0, v0, 0x12

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 232
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sB:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 237
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 238
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 240
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 241
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 242
    invoke-virtual {v2, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 244
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 245
    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 246
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sB:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 250
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ss:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    goto :goto_0

    .line 221
    :cond_1
    if-eqz v3, :cond_2

    const-string v4, "Amazfit Watch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sA:Landroid/widget/TextView;

    const v4, 0x7f0a102b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 224
    :cond_2
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sA:Landroid/widget/TextView;

    const v4, 0x7f0a1029

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private fM()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sA:Landroid/widget/TextView;

    const v1, 0x7f0a102c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 255
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sB:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 259
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 260
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 261
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 262
    new-instance v2, Lcom/android/settings/eW;

    invoke-direct {v2, p0}, Lcom/android/settings/eW;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 274
    new-instance v2, Lcom/android/settings/eX;

    invoke-direct {v2, p0}, Lcom/android/settings/eX;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 286
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ss:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->st:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sz:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    return-void
.end method

.method static synthetic g(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fM()V

    return-void
.end method

.method private generateKey()[B
    .locals 2

    .prologue
    .line 292
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 293
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 294
    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ss:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->st:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 301
    const v0, 0x7f040143

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 303
    const v0, 0x7f1302d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sA:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f1302d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ss:Landroid/widget/ImageView;

    .line 305
    const v0, 0x7f1302d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->st:Landroid/widget/ImageView;

    .line 306
    const v0, 0x7f1302d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sB:Landroid/widget/ImageView;

    .line 307
    const v0, 0x7f1302d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sz:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string v2, "MI Band 2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ss:Landroid/widget/ImageView;

    const v2, 0x7f020057

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->st:Landroid/widget/ImageView;

    const v2, 0x7f020054

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sA:Landroid/widget/TextView;

    const v2, 0x7f0a0254

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sB:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sz:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sz:Landroid/view/View;

    new-instance v2, Lcom/android/settings/eY;

    invoke-direct {v2, p0}, Lcom/android/settings/eY;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    return-object v1

    .line 313
    :cond_1
    if-eqz v0, :cond_0

    const-string v2, "Amazfit Watch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ss:Landroid/widget/ImageView;

    const v2, 0x7f020056

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->st:Landroid/widget/ImageView;

    const v2, 0x7f020053

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 128
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fK()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0, v6}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->setRetainInstance(Z)V

    .line 89
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    .line 90
    new-instance v0, Lcom/android/settings/aL;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/aL;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->dD:Lcom/android/settings/aL;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 94
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    const-string v3, "device_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string v0, "device_address"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "device_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 107
    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 113
    new-instance v0, Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sE:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    invoke-direct {v0, v3, v4, v5}, Lmiui/bluetooth/ble/MiBleUnlockProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 114
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 116
    const-string v0, "password_confirmed"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fK()V

    .line 121
    :goto_1
    return-void

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    goto :goto_1

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->dD:Lcom/android/settings/aL;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/aL;->b(ILjava/lang/CharSequence;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 140
    iget v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sD:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fL()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sD:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fM()V

    goto :goto_0
.end method
