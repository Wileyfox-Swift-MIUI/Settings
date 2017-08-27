.class public Lcom/android/settings/sound/RingerVolumeFragment;
.super Lcom/android/settings/BaseFragment;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field static final ati:[I

.field private static final atk:[I

.field private static final atl:[I

.field private static final atm:[I


# instance fields
.field private ath:[Lcom/android/settings/sound/E;

.field private final atj:[I

.field private atn:[Landroid/widget/ImageView;

.field private ato:[Lmiui/widget/SeekBar;

.field private atp:Landroid/content/BroadcastReceiver;

.field private atq:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ati:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->atk:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->atl:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->atm:[I

    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f1301e6
        0x7f1301ea
        0x7f1301ee
        0x7f1301f1
        0x7f1301e3
        0x7f1301f2
    .end array-data

    .line 79
    :array_1
    .array-data 4
        0x2
        0x5
        0x4
        0x0
        0x3
        0x6
    .end array-data

    .line 88
    :array_2
    .array-data 4
        0x7f0200f0
        0x7f0200ed
        0x7f0200e5
        0x7f0200ee
        0x7f0200ea
        0x7f0200e7
    .end array-data

    .line 97
    :array_3
    .array-data 4
        0x7f0200ef
        0x7f0200ec
        0x7f0200e4
        0x7f0200ee
        0x7f0200ea
        0x7f0200e6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atj:[I

    .line 106
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->atl:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atn:[Landroid/widget/ImageView;

    .line 107
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ati:[I

    array-length v0, v0

    new-array v0, v0, [Lmiui/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ato:[Lmiui/widget/SeekBar;

    .line 109
    new-instance v0, Lcom/android/settings/sound/A;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/A;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    .line 355
    return-void

    .line 70
    nop

    :array_0
    .array-data 4
        0x7f0a037d
        0x7f0a037e
        0x7f0a037f
        0x7f0a0e59
        0x7f0a037c
        0x7f0a0e5b
    .end array-data
.end method

.method static synthetic a(Lcom/android/settings/sound/RingerVolumeFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->vm()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/sound/RingerVolumeFragment;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingerVolumeFragment;->cS(I)V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->atk:[I

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->tf()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private cS(I)V
    .locals 4

    .prologue
    .line 252
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->atk:[I

    aget v1, v0, p1

    .line 253
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 255
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atn:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 256
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atn:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const v2, 0x7f0200f1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ato:[Lmiui/widget/SeekBar;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ato:[Lmiui/widget/SeekBar;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/E;->cU(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ato:[Lmiui/widget/SeekBar;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/settings/sound/E;->cT(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 271
    :cond_1
    return-void

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atn:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->atl:[I

    aget v0, v0, p1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->atm:[I

    aget v0, v0, p1

    goto :goto_1
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->ati:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/E;->stop()V

    .line 315
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    aput-object v2, v1, v0

    .line 312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atp:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 320
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atp:Landroid/content/BroadcastReceiver;

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atq:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atq:Landroid/content/BroadcastReceiver;

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    return-void
.end method

.method private tf()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private vm()V
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->atk:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 247
    invoke-direct {p0, v0}, Lcom/android/settings/sound/RingerVolumeFragment;->cS(I)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f0400e5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method protected a(Lcom/android/settings/sound/E;)V
    .locals 4

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 293
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/sound/E;->stopSample()V

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 332
    const v0, 0x7f0a0e5c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 333
    const v1, 0x7f020017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 334
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 337
    return v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->cleanup()V

    .line 308
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 309
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 281
    sparse-switch p2, :sswitch_data_0

    .line 287
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 285
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 344
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->vk()V

    .line 345
    const/4 v0, 0x1

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 300
    invoke-virtual {v3}, Lcom/android/settings/sound/E;->stopSample()V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onPause()V

    .line 303
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 136
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ati:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/sound/E;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 140
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ati:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 141
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ati:[I

    aget v0, v0, v6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 142
    sget v0, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    const v0, 0x7f13020f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SeekBar;

    .line 144
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ato:[Lmiui/widget/SeekBar;

    aput-object v3, v0, v6

    .line 145
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->atk:[I

    aget v0, v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v8, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    new-instance v0, Lcom/android/settings/sound/E;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->atk:[I

    aget v4, v1, v6

    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->tf()Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/E;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v8, v6

    .line 154
    :goto_1
    const v0, 0x7f13020d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 155
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atn:[Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 158
    const v0, 0x7f13020e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atj:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    new-instance v1, Lcom/android/settings/sound/E;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v4, Lcom/android/settings/sound/RingerVolumeFragment;->atk:[I

    aget v4, v4, v6

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/sound/E;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;I)V

    aput-object v1, v0, v6

    goto :goto_1

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->vm()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atp:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v1, Lcom/android/settings/sound/B;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/B;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atp:Landroid/content/BroadcastReceiver;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atq:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    new-instance v1, Lcom/android/settings/sound/C;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/C;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atq:Landroid/content/BroadcastReceiver;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->atq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/iH;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    const v0, 0x7f1301e6

    .line 202
    const v1, 0x7f1301f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 203
    const v1, 0x7f1301f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const v1, 0x7f1301ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 216
    return-void

    .line 206
    :cond_4
    const v0, 0x7f1301ea

    goto :goto_2
.end method

.method vk()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0e5c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/sound/D;

    invoke-direct {v2, p0}, Lcom/android/settings/sound/D;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0e5d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 232
    return-void
.end method

.method vl()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->ati:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/E;->stopSample()V

    .line 238
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ath:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/E;->vn()V

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->vm()V

    .line 243
    return-void
.end method
