.class public Lcom/android/settings/display/PageLayoutFragment;
.super Lmiui/app/Fragment;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/settings/widget/j;


# static fields
.field private static final aaC:[I

.field private static final aaD:[I

.field private static final aaE:[I

.field private static final aaF:[I

.field private static final aaG:[F

.field private static final aaH:Ljava/util/HashMap;

.field private static final aaI:Ljava/util/HashMap;

.field private static final aaJ:Ljava/util/HashMap;

.field private static final aaK:Ljava/util/HashMap;

.field private static final aaL:Ljava/util/HashMap;

.field private static final aaM:Ljava/util/HashMap;

.field private static final aaN:Ljava/util/HashMap;

.field private static final aaO:Ljava/util/HashMap;

.field private static final aaP:Ljava/util/HashMap;

.field private static final aaQ:Ljava/util/HashMap;


# instance fields
.field private aaR:Lcom/android/settings/display/PageLayoutScreenView;

.field private aaS:I

.field private aaT:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field private vC:Z

.field private wH:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaD:[I

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaE:[I

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaF:[I

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaG:[F

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaH:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaI:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaK:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaL:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaM:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaN:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaO:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaP:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaQ:Ljava/util/HashMap;

    .line 124
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020249

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020249

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020249

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020249

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020247

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020247

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    const v1, 0x7f1301bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const v1, 0x7f1301be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const v1, 0x7f1301c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaK:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaK:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaK:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaK:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    const v1, 0x7f1301bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const v1, 0x7f1301be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const v1, 0x7f1301c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f10001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaK:Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaK:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaL:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a109c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaL:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaL:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaL:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaL:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaL:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaM:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaM:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaM:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10ab    # 1.8352E38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaM:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaM:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaM:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaN:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a109c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaN:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a109d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaN:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a109e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaN:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a109f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaN:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaN:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a10a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaQ:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b015d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaQ:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b015e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaQ:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b015f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaQ:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0160

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaQ:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0161

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaQ:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0162

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaO:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0163

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaO:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0164

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaO:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0165

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaO:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0166

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaO:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0167

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaO:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0168

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0169

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b016a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b016b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b016c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaP:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b016d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b016e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02024a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02024a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02024a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02024a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020248

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020248

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 55
    :array_0
    .array-data 4
        0x7f1301bb
        0x7f1301be
        0x7f1301c3
    .end array-data

    .line 63
    :array_1
    .array-data 4
        0x7f1301af
        0x7f1301b0
        0x7f1301b1
        0x7f1301b2
        0x7f1301b3
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x7f1301bb
        0x7f1301be
        0x7f1301c3
    .end array-data

    .line 77
    :array_3
    .array-data 4
        0x7f1301c6
        0x7f1301c7
        0x7f1301c8
    .end array-data

    .line 83
    :array_4
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    .line 203
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    .line 562
    new-instance v0, Lcom/android/settings/display/u;

    invoke-direct {v0, p0}, Lcom/android/settings/display/u;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 605
    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/PageLayoutFragment;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    return v0
.end method

.method private static a(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 598
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 599
    const-string v1, "data_selected_uimode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    const-string v1, "data_selected_fontscale"

    invoke-static {p1}, Lcom/android/settings/display/s;->getFontScale(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 601
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 602
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 603
    return-void
.end method

.method private a(Landroid/view/View;F)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 547
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 548
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 555
    :cond_0
    return-void

    .line 549
    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 550
    check-cast p1, Landroid/view/ViewGroup;

    .line 551
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 552
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/settings/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/android/settings/display/PageLayoutFragment;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/display/PageLayoutFragment;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings/display/PageLayoutFragment;->vC:Z

    return v0
.end method

.method static synthetic bt(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 559
    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private j(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v6, -0x2

    const/4 v3, 0x0

    .line 342
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    .line 343
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 345
    const v0, 0x7f1301ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/PageLayoutScreenView;

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaR:Lcom/android/settings/display/PageLayoutScreenView;

    .line 346
    const v0, 0x7f1301b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    const v0, 0x7f1301b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v0, 0x7f1301b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const v0, 0x7f130191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->wH:Landroid/widget/SeekBar;

    .line 351
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->wH:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 353
    const v0, 0x7f1301ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/FontLinearLayout;

    .line 354
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/FontLinearLayout;->a(Lcom/android/settings/widget/j;)V

    .line 358
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    sparse-switch v0, :sswitch_data_0

    move v0, v3

    move v1, v3

    .line 379
    :goto_0
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->wH:Landroid/widget/SeekBar;

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 381
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 382
    const v0, 0x7f1301bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a108a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const v0, 0x7f1301bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a1089

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    const v0, 0x7f1301bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a10b2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const v0, 0x7f1301c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a108c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    const v0, 0x7f1301c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a108d    # 1.835194E38f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const v0, 0x7f1301c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a10b1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const v0, 0x7f1301ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 395
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v6, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 401
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->aaR:Lcom/android/settings/display/PageLayoutScreenView;

    invoke-virtual {v1, v0}, Lcom/android/settings/display/PageLayoutScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 402
    iget-boolean v0, p0, Lcom/android/settings/display/PageLayoutFragment;->vC:Z

    if-eqz v0, :cond_1

    .line 403
    const v0, 0x7f1301b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 404
    const v0, 0x7f1301b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->qc()V

    .line 408
    return-void

    .line 360
    :sswitch_0
    const/4 v1, -0x6

    .line 361
    const/4 v0, 0x1

    .line 362
    goto/16 :goto_0

    .line 364
    :sswitch_1
    const/4 v0, -0x1

    move v7, v1

    move v1, v0

    move v0, v7

    .line 366
    goto/16 :goto_0

    .line 369
    :sswitch_2
    const/4 v0, 0x3

    .line 370
    goto/16 :goto_0

    :sswitch_3
    move v0, v2

    move v1, v4

    .line 374
    goto/16 :goto_0

    .line 376
    :sswitch_4
    const/4 v0, 0x5

    move v1, v3

    goto/16 :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_4
        0xd -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method private qc()V
    .locals 15

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1301c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 412
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->aaS:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 413
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaN:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaQ:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1301ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 416
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->aaS:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 417
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaN:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaQ:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaP:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 423
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaI:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 424
    if-eqz v0, :cond_0

    .line 425
    sget-object v3, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 426
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v5, v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 425
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 430
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 431
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 433
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaK:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 434
    sget-object v3, Lcom/android/settings/display/PageLayoutFragment;->aaE:[I

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    .line 435
    iget-object v7, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 437
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v7, v1, v8, v1, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 434
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 440
    :cond_1
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaH:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 441
    if-eqz v0, :cond_4

    .line 442
    sget-object v4, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v7, v4

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v7, :cond_4

    aget v1, v4, v3

    .line 443
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 444
    invoke-virtual {v8, v5, v6}, Landroid/view/View;->measure(II)V

    .line 445
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 446
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 447
    instance-of v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_2

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v1, v9

    move-object v1, v2

    .line 449
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 450
    if-gez v9, :cond_3

    .line 451
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :cond_2
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 453
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 460
    :cond_4
    const/4 v1, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0120

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .line 463
    sget-object v9, Lcom/android/settings/display/PageLayoutFragment;->aaD:[I

    array-length v10, v9

    const/4 v0, 0x0

    move v3, v0

    move v2, v1

    :goto_4
    if-ge v3, v10, :cond_7

    aget v11, v9, v3

    .line 464
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 465
    invoke-virtual {v12, v5, v6}, Landroid/view/View;->measure(II)V

    .line 466
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 468
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 469
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    .line 470
    add-int v0, v4, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    .line 471
    sget-object v13, Lcom/android/settings/display/PageLayoutFragment;->aaD:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ne v11, v13, :cond_6

    .line 472
    const/4 v0, 0x0

    move v2, v0

    :goto_5
    move-object v0, v1

    .line 476
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0, v2, v11, v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 477
    invoke-virtual {v12, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v4

    goto :goto_4

    .line 473
    :cond_6
    sget-object v13, Lcom/android/settings/display/PageLayoutFragment;->aaD:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    if-ne v11, v13, :cond_a

    .line 474
    div-int/lit8 v0, v4, 0x2

    add-int/2addr v0, v2

    sub-int v0, v7, v0

    add-int/2addr v0, v8

    move v2, v0

    goto :goto_5

    .line 482
    :cond_7
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1301b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaJ:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 486
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f1301b0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f1301af

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 489
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 490
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f1301b1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 491
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f1301b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 493
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f1301b3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f1301b4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 497
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 500
    sget-object v4, Lcom/android/settings/display/PageLayoutFragment;->aaF:[I

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v5, :cond_9

    aget v0, v4, v2

    .line 501
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 502
    const v0, 0x1020016

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 503
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaL:Ljava/util/HashMap;

    iget v7, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaO:Ljava/util/HashMap;

    iget v8, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 505
    const v0, 0x1020010

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 506
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaM:Ljava/util/HashMap;

    iget v7, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaP:Ljava/util/HashMap;

    iget v8, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0c0060

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 509
    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    const/16 v7, 0xb

    if-ne v1, v7, :cond_8

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b0121

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 511
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 513
    :cond_8
    sget v0, Lmiui/R$id;->arrow_right:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 514
    const v0, 0x1020006

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    sget v0, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 500
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_6

    .line 518
    :cond_9
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    sparse-switch v0, :sswitch_data_0

    .line 544
    :goto_7
    return-void

    .line 520
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1301af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 521
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 524
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1301b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 525
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 528
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1301b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 529
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 532
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1301b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 533
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 536
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1301b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 537
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 540
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1301b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 541
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    :cond_a
    move v2, v0

    goto/16 :goto_5

    .line 518
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/android/settings/widget/FontLinearLayout;F)V
    .locals 6

    .prologue
    .line 736
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaG:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 737
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaG:[F

    aget v1, v1, v0

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 738
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->wH:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->wH:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    mul-int/lit8 v3, v0, 0x3c

    sub-int/2addr v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 740
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->wH:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Lcom/android/settings/display/PageLayoutFragment;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 736
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    :cond_1
    mul-int/lit8 v1, v0, 0x3c

    goto :goto_1

    .line 743
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 210
    invoke-static {}, Lcom/android/settings/display/s;->qb()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/PageLayoutFragment;->vC:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->qd()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaS:I

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 217
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 218
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaH:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const v0, 0x7f0e00de

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 220
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    .line 221
    const v0, 0x7f0e00ea

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :cond_0
    move v3, v2

    .line 223
    :goto_1
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 224
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 211
    goto :goto_0

    .line 227
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 228
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaH:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const v0, 0x7f0e00df

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 230
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_3

    .line 231
    const v0, 0x7f0e00eb

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :cond_3
    move v3, v2

    .line 233
    :goto_2
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 234
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 237
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 238
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaH:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    .line 240
    const v0, 0x7f0e00e0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_3
    move v3, v2

    .line 244
    :goto_4
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v6, v6

    if-ge v3, v6, :cond_6

    .line 245
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 242
    :cond_5
    const v0, 0x7f0e00ec

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_3

    .line 248
    :cond_6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 249
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaH:Ljava/util/HashMap;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_7

    .line 251
    const v0, 0x7f0e00e1

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_5
    move v3, v2

    .line 255
    :goto_6
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v6, v6

    if-ge v3, v6, :cond_8

    .line 256
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 253
    :cond_7
    const v0, 0x7f0e00ed

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_5

    .line 259
    :cond_8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 260
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaH:Ljava/util/HashMap;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_9

    .line 262
    const v0, 0x7f0e00e2

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_7
    move v3, v2

    .line 266
    :goto_8
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v6, v6

    if-ge v3, v6, :cond_a

    .line 267
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 264
    :cond_9
    const v0, 0x7f0e00ee

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_7

    .line 270
    :cond_a
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 271
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaH:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_b

    .line 273
    const v0, 0x7f0e00e3

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_9
    move v3, v2

    .line 277
    :goto_a
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v6, v6

    if-ge v3, v6, :cond_c

    .line 278
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 275
    :cond_b
    const v0, 0x7f0e00ef

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_9

    .line 282
    :cond_c
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 283
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaI:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const v0, 0x7f0e00e4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    move v0, v2

    .line 285
    :goto_b
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v6, v6

    if-ge v0, v6, :cond_d

    .line 286
    sget-object v6, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v5, v0

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 289
    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 290
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaI:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const v0, 0x7f0e00e5

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    move v0, v2

    .line 292
    :goto_c
    sget-object v5, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v5, v5

    if-ge v0, v5, :cond_e

    .line 293
    sget-object v5, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v1, v0

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 296
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 297
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaI:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const v0, 0x7f0e00e6

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    move v0, v2

    .line 299
    :goto_d
    sget-object v5, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v5, v5

    if-ge v0, v5, :cond_f

    .line 300
    sget-object v5, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v3, v0

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 303
    :cond_f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 304
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaI:Ljava/util/HashMap;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const v0, 0x7f0e00e7

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    move v0, v2

    .line 306
    :goto_e
    sget-object v5, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v5, v5

    if-ge v0, v5, :cond_10

    .line 307
    sget-object v5, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v3, v0

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 310
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 311
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->aaI:Ljava/util/HashMap;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const v0, 0x7f0e00e8

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    move v0, v2

    .line 313
    :goto_f
    sget-object v5, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v5, v5

    if-ge v0, v5, :cond_11

    .line 314
    sget-object v5, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v3, v0

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 317
    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->aaI:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const v1, 0x7f0e00e9

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 320
    :goto_10
    sget-object v3, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    array-length v3, v3

    if-ge v2, v3, :cond_12

    .line 321
    sget-object v3, Lcom/android/settings/display/PageLayoutFragment;->aaC:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget v4, v1, v2

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 323
    :cond_12
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 327
    const v0, 0x7f0400d3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 328
    new-instance v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    .line 330
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 657
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 665
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 666
    rem-int/lit8 v1, v0, 0x3c

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 667
    add-int/lit8 v0, v0, 0x1e

    .line 669
    :cond_0
    div-int/lit8 v1, v0, 0x3c

    .line 670
    const/4 v0, 0x0

    .line 671
    packed-switch v1, :pswitch_data_0

    .line 713
    :cond_1
    :goto_0
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 714
    return-void

    .line 673
    :pswitch_0
    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    if-eq v2, v5, :cond_1

    .line 674
    iput v5, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    .line 675
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->qc()V

    goto :goto_0

    .line 679
    :pswitch_1
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    if-eq v0, v3, :cond_2

    .line 680
    iput v3, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    .line 681
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->qc()V

    .line 683
    :cond_2
    const/4 v0, -0x6

    .line 684
    goto :goto_0

    .line 686
    :pswitch_2
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    if-eq v0, v6, :cond_3

    .line 687
    iput v6, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    .line 688
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->qc()V

    .line 690
    :cond_3
    const/4 v0, -0x1

    .line 691
    goto :goto_0

    .line 693
    :pswitch_3
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    if-eq v0, v7, :cond_4

    .line 694
    iput v7, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    .line 695
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->qc()V

    .line 697
    :cond_4
    const/4 v0, 0x2

    .line 698
    goto :goto_0

    .line 700
    :pswitch_4
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_5

    .line 701
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    .line 702
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->qc()V

    .line 704
    :cond_5
    const/16 v0, 0x8

    .line 705
    goto :goto_0

    .line 707
    :pswitch_5
    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    if-eq v2, v4, :cond_1

    .line 708
    iput v4, p0, Lcom/android/settings/display/PageLayoutFragment;->aaT:I

    .line 709
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->qc()V

    goto :goto_0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Lmiui/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 338
    invoke-direct {p0, p1}, Lcom/android/settings/display/PageLayoutFragment;->j(Landroid/view/View;)V

    .line 339
    return-void
.end method

.method public qd()I
    .locals 5

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 748
    if-lez v1, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 751
    :cond_0
    return v0
.end method
