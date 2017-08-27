.class public Lcom/android/settings/display/BrightnessFragment;
.super Lcom/android/settings/BaseFragment;
.source "BrightnessFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private ZP:Lmiui/widget/SeekBar;

.field private ZQ:Lmiui/widget/SlidingButton;

.field private ZR:Landroid/widget/TextView;

.field private ZS:Landroid/view/View;

.field private ZT:Landroid/view/View;

.field private ZU:I

.field private ZV:I

.field private ZW:Z

.field private ZX:Z

.field private ZY:I

.field private ZZ:I

.field private aaa:Landroid/database/ContentObserver;

.field private aab:Landroid/database/ContentObserver;

.field private mDialog:Landroid/app/Dialog;

.field private wJ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZY:I

    .line 61
    new-instance v0, Lcom/android/settings/display/a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/a;-><init>(Lcom/android/settings/display/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->aaa:Landroid/database/ContentObserver;

    .line 69
    new-instance v0, Lcom/android/settings/display/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/b;-><init>(Lcom/android/settings/display/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->aab:Landroid/database/ContentObserver;

    .line 285
    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/BrightnessFragment;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/display/BrightnessFragment;->ZY:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/display/BrightnessFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessFragment;->pY()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/display/BrightnessFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessFragment;->pZ()V

    return-void
.end method

.method private bH(I)I
    .locals 2

    .prologue
    .line 160
    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 166
    :goto_0
    return p1

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private gN()V
    .locals 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessFragment;->wJ:Z

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZW:Z

    if-eqz v0, :cond_1

    .line 213
    iget v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZV:I

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessFragment;->setMode(I)V

    .line 215
    :cond_1
    iget v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZU:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessFragment;->j(IZ)V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessFragment;->wJ:Z

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZY:I

    goto :goto_0
.end method

.method private j(IZ)V
    .locals 4

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZX:Z

    if-eqz v0, :cond_0

    .line 223
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 225
    const-string v2, "screen_auto_brightness_adj"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 244
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZZ:I

    rsub-int v0, v0, 0xff

    .line 230
    mul-int/2addr v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/settings/display/BrightnessFragment;->ZZ:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v1, v0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 232
    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 235
    :cond_1
    if-eqz p2, :cond_2

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZY:I

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 241
    :cond_2
    iput v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZY:I

    goto :goto_0
.end method

.method private pW()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZS:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZX:Z

    if-eqz v1, :cond_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZT:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZS:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void
.end method

.method private pX()I
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessFragment;->bH(I)I

    move-result v0

    .line 172
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 176
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 187
    :goto_0
    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 178
    :cond_0
    iget v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZY:I

    if-gez v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    .line 184
    :goto_1
    iget v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZZ:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZZ:I

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 182
    :cond_1
    iget v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZY:I

    int-to-float v0, v0

    goto :goto_1
.end method

.method private pY()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessFragment;->pX()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 192
    return-void
.end method

.method private pZ()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, v1}, Lcom/android/settings/display/BrightnessFragment;->bH(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZQ:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessFragment;->pX()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 199
    return-void

    :cond_0
    move v0, v1

    .line 195
    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 247
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZX:Z

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 99
    const v0, 0x7f0400e3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessFragment;->setMode(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessFragment;->pX()I

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    invoke-virtual {v0}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessFragment;->j(IZ)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZR:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v0, 0x7f0a0f1d

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessFragment;->pW()V

    .line 157
    return-void

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0

    .line 153
    :cond_1
    const v0, 0x7f0a0f1c

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZW:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZZ:I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessFragment;->aaa:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessFragment;->aaa:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessFragment;->aab:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessFragment;->wJ:Z

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/settings/display/BrightnessFragment;->aaa:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/display/BrightnessFragment;->aab:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 206
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 207
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/display/BrightnessFragment;->j(IZ)V

    .line 136
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 255
    iget-object v1, p0, Lcom/android/settings/display/BrightnessFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/BrightnessFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    new-instance v1, Lcom/android/settings/display/BrightnessFragment$SavedState;

    invoke-direct {v1}, Lcom/android/settings/display/BrightnessFragment$SavedState;-><init>()V

    .line 258
    iget-object v2, p0, Lcom/android/settings/display/BrightnessFragment;->ZQ:Lmiui/widget/SlidingButton;

    invoke-virtual {v2}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/settings/display/BrightnessFragment$SavedState;->automatic:Z

    .line 259
    iget-object v2, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    invoke-virtual {v2}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v1, Lcom/android/settings/display/BrightnessFragment$SavedState;->progress:I

    .line 260
    iget v2, p0, Lcom/android/settings/display/BrightnessFragment;->ZV:I

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, v1, Lcom/android/settings/display/BrightnessFragment$SavedState;->oldAutomatic:Z

    .line 261
    iget v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZU:I

    iput v0, v1, Lcom/android/settings/display/BrightnessFragment$SavedState;->oldProgress:I

    .line 262
    iget v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZY:I

    iput v0, v1, Lcom/android/settings/display/BrightnessFragment$SavedState;->curBrightness:I

    .line 263
    const-string v0, "save_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessFragment;->gN()V

    .line 269
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    invoke-virtual {v0}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessFragment;->j(IZ)V

    .line 146
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f130191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    .line 107
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Lmiui/widget/SeekBar;->setMax(I)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessFragment;->pX()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZU:I

    .line 109
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/display/BrightnessFragment;->ZU:I

    invoke-virtual {v0, v3}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 111
    const v0, 0x7f1301df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZQ:Lmiui/widget/SlidingButton;

    .line 112
    const v0, 0x7f1301e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZR:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f1301e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZS:Landroid/view/View;

    .line 115
    const v0, 0x7f1301e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZT:Landroid/view/View;

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZW:Z

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZQ:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessFragment;->bH(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZV:I

    .line 119
    iget v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZV:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZX:Z

    .line 120
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZQ:Lmiui/widget/SlidingButton;

    iget v3, p0, Lcom/android/settings/display/BrightnessFragment;->ZV:I

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessFragment;->pW()V

    .line 125
    :goto_2
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZP:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p0}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 126
    return-void

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->ZQ:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/BrightnessFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "save_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/BrightnessFragment$SavedState;

    .line 276
    iget v1, v0, Lcom/android/settings/display/BrightnessFragment$SavedState;->oldProgress:I

    iput v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZU:I

    .line 277
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessFragment$SavedState;->oldAutomatic:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZV:I

    .line 278
    iget v1, v0, Lcom/android/settings/display/BrightnessFragment$SavedState;->curBrightness:I

    iput v1, p0, Lcom/android/settings/display/BrightnessFragment;->ZY:I

    .line 279
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessFragment$SavedState;->automatic:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessFragment;->setMode(I)V

    .line 280
    iget v0, v0, Lcom/android/settings/display/BrightnessFragment$SavedState;->progress:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/display/BrightnessFragment;->j(IZ)V

    .line 282
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 283
    return-void

    :cond_1
    move v1, v3

    .line 277
    goto :goto_0

    :cond_2
    move v2, v3

    .line 279
    goto :goto_1
.end method
