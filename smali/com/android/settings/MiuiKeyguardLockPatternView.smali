.class public Lcom/android/settings/MiuiKeyguardLockPatternView;
.super Landroid/widget/LinearLayout;
.source "MiuiKeyguardLockPatternView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private pC:Ljava/util/ArrayList;

.field private pD:[[Z

.field private pE:F

.field private pF:F

.field private pG:J

.field private pI:Z

.field private pJ:Z

.field private pK:Z

.field private pL:Z

.field private pM:F

.field private final pN:I

.field private pO:F

.field private pP:F

.field private pQ:F

.field private pR:Landroid/graphics/Bitmap;

.field private final pT:Landroid/graphics/Path;

.field private final pU:Landroid/graphics/Rect;

.field private pV:I

.field private pW:I

.field private final pY:Landroid/graphics/Matrix;

.field private py:Z

.field private pz:Landroid/graphics/Paint;

.field private rG:Landroid/graphics/Paint;

.field private rH:I

.field private rI:I

.field private rJ:I

.field private rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private final rM:I

.field private final rN:I

.field private rO:Landroid/graphics/Bitmap;

.field private rP:J

.field private rQ:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/16 v4, 0x9

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->py:Z

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    .line 67
    filled-new-array {v8, v8}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pD:[[Z

    .line 74
    iput v3, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    .line 75
    iput v3, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    .line 79
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 80
    iput-boolean v7, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pI:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pJ:Z

    .line 82
    iput-boolean v7, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pK:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pL:Z

    .line 85
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pM:F

    .line 86
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pN:I

    .line 87
    const/16 v0, 0xdd

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rM:I

    .line 88
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rN:I

    .line 89
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pO:F

    .line 97
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pT:Landroid/graphics/Path;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pU:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pY:Landroid/graphics/Matrix;

    .line 791
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    .line 113
    invoke-virtual {p0, v7}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setClickable(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0092

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rH:I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rI:I

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rJ:I

    .line 117
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0140

    invoke-virtual {v2, v3, v0, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 119
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pM:F

    .line 121
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    const v0, 0x7f020218

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->L(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rO:Landroid/graphics/Bitmap;

    .line 135
    const v0, 0x7f020219

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->L(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pR:Landroid/graphics/Bitmap;

    .line 138
    const/4 v0, 0x2

    new-array v2, v0, [Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rO:Landroid/graphics/Bitmap;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pR:Landroid/graphics/Bitmap;

    aput-object v0, v2, v7

    .line 140
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 141
    iget v5, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pV:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pV:I

    .line 142
    iget v5, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pW:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pW:I

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setOrientation(I)V

    move v0, v1

    .line 146
    :goto_1
    if-ge v0, v8, :cond_1

    .line 147
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->T(I)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setWillNotDraw(Z)V

    .line 151
    return-void
.end method

.method private L(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private M(I)V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 625
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->sendAccessibilityEvent(I)V

    .line 626
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method

.method private N(I)F
    .locals 3

    .prologue
    .line 670
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pP:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pP:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private O(I)F
    .locals 3

    .prologue
    .line 674
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pQ:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pQ:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private T(I)V
    .locals 5

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 156
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 159
    new-instance v3, Lcom/android/settings/eA;

    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1, v0}, Lcom/android/settings/eA;-><init>(Lcom/android/settings/MiuiKeyguardLockPatternView;Landroid/content/Context;II)V

    .line 160
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {v3, v4}, Lcom/android/settings/eA;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->addView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiKeyguardLockPatternView;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pP:F

    return v0
.end method

.method private a(F)I
    .locals 6

    .prologue
    .line 513
    iget v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pQ:F

    .line 514
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pO:F

    mul-float v2, v1, v0

    .line 516
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 517
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 519
    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 520
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 524
    :goto_1
    return v0

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(II)I
    .locals 2

    .prologue
    .line 401
    .line 402
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 403
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    .line 414
    :goto_0
    :sswitch_0
    return p2

    .line 408
    :sswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 403
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/android/settings/MiuiKeyguardLockPatternView;II)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(II)I

    move-result v0

    return v0
.end method

.method private a(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->b(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v5

    .line 443
    if-eqz v5, :cond_5

    .line 447
    iget-object v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    .line 448
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 449
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 450
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    sub-int v6, v1, v4

    .line 451
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    sub-int v7, v1, v4

    .line 453
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    .line 454
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    .line 456
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    if-lez v6, :cond_6

    move v1, v2

    :goto_0
    add-int/2addr v1, v8

    .line 460
    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_7

    .line 461
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    if-lez v7, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    .line 464
    :goto_1
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 467
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pD:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    .line 469
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 471
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 472
    iget-boolean v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pK:Z

    if-eqz v0, :cond_4

    .line 473
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->performHapticFeedback(II)Z

    :cond_4
    move-object v0, v5

    .line 479
    :cond_5
    return-object v0

    :cond_6
    move v1, v3

    .line 457
    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 20

    .prologue
    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 795
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rP:J

    sub-long/2addr v2, v4

    .line 796
    const-wide/16 v4, 0x320

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    .line 797
    const-wide/16 v4, 0x0

    .line 798
    const/4 v10, 0x0

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v13

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v14

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pP:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pM:F

    mul-float/2addr v3, v8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 803
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v12, :cond_0

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    const/4 v3, 0x0

    aput v3, v2, v8

    .line 805
    if-lez v8, :cond_7

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 808
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v9

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v11

    sub-float/2addr v9, v11

    .line 809
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v2

    sub-float v2, v3, v2

    .line 810
    mul-float v3, v9, v9

    mul-float/2addr v2, v2

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v4

    .line 803
    :goto_1
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-wide v4, v2

    goto :goto_0

    .line 813
    :cond_0
    long-to-double v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    sub-float/2addr v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    sub-float/2addr v5, v13

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    sub-float/2addr v5, v14

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    sub-float/2addr v8, v14

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-long v4, v2

    .line 816
    const/4 v2, 0x1

    move-wide v8, v4

    move-wide v4, v6

    move v6, v2

    :goto_2
    if-ge v6, v12, :cond_3

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 819
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v7

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v11

    sub-float/2addr v7, v11

    .line 820
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v2

    sub-float v2, v3, v2

    .line 821
    mul-float v3, v7, v7

    mul-float/2addr v2, v2

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v7, v2

    .line 822
    int-to-long v2, v7

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    .line 823
    int-to-long v2, v7

    sub-long v2, v4, v2

    move-wide v4, v2

    move v2, v10

    .line 831
    :goto_3
    int-to-long v10, v7

    sub-long/2addr v8, v10

    .line 816
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v10, v2

    goto :goto_2

    .line 824
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 825
    long-to-float v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, v7

    div-float/2addr v2, v3

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    const-wide/16 v10, 0xdd

    int-to-long v0, v7

    move-wide/from16 v16, v0

    sub-long v16, v16, v4

    mul-long v10, v10, v16

    sub-long v4, v8, v4

    div-long v4, v10, v4

    long-to-int v4, v4

    aput v4, v3, v6

    .line 827
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 829
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    add-int/lit8 v11, v6, -0x1

    aget v3, v3, v11

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    add-int/lit8 v11, v6, -0x1

    aget v3, v3, v11

    rsub-int v3, v3, 0xdd

    mul-int/2addr v3, v7

    int-to-long v0, v3

    move-wide/from16 v18, v0

    div-long v18, v18, v8

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v3, v0

    aput v3, v2, v6

    move v2, v10

    goto :goto_3

    .line 834
    :cond_3
    const/4 v2, 0x1

    move v11, v2

    :goto_4
    if-ge v11, v12, :cond_6

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    aget v2, v2, v11

    if-eqz v2, :cond_4

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    add-int/lit8 v3, v11, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v3

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v4

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v5

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v6

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    add-int/lit8 v7, v11, -0x1

    aget v2, v2, v7

    if-nez v2, :cond_5

    .line 842
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rJ:I

    const v15, 0xffffff

    and-int/2addr v9, v15

    aput v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rJ:I

    const v15, 0xffffff

    and-int/2addr v9, v15

    aput v9, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    aget v9, v9, v11

    shl-int/lit8 v9, v9, 0x18

    const v15, 0xffffff

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rJ:I

    move/from16 v16, v0

    and-int v15, v15, v16

    or-int/2addr v9, v15

    aput v9, v7, v8

    const/4 v8, 0x3

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v15, 0x0

    aput v15, v8, v9

    const/4 v9, 0x1

    aput v10, v8, v9

    const/4 v9, 0x2

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v8, v9

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 849
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 850
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 834
    :cond_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_4

    .line 846
    :cond_5
    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    add-int/lit8 v8, v11, -0x1

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    const v8, 0xffffff

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rJ:I

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    aget v8, v8, v11

    shl-int/lit8 v8, v8, 0x18

    const v9, 0xffffff

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rJ:I

    and-int/2addr v9, v15

    or-int/2addr v8, v9

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_5

    .line 853
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rQ:[I

    add-int/lit8 v4, v12, -0x1

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    const v4, 0xffffff

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rJ:I

    and-int/2addr v4, v7

    or-int v7, v3, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rJ:I

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v13

    move v4, v14

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 856
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rG:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->invalidate()V

    .line 858
    return-void

    :cond_7
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 603
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v3, 0x1

    if-ge v2, v0, :cond_4

    .line 604
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    move v1, v0

    .line 605
    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    .line 606
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 607
    iget-object v5, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 608
    if-eqz v4, :cond_0

    if-ne v5, v7, :cond_0

    .line 609
    iput-boolean v7, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pL:Z

    .line 610
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eP()V

    .line 613
    :cond_0
    iget v4, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 614
    iget v5, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 615
    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pP:F

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 616
    iput v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    .line 617
    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->invalidate()V

    .line 603
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 604
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move v1, v0

    goto :goto_1

    .line 605
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_2

    .line 621
    :cond_4
    return-void
.end method

.method private a(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pD:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 484
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eO()V

    .line 486
    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiKeyguardLockPatternView;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pQ:F

    return v0
.end method

.method private b(F)I
    .locals 6

    .prologue
    .line 533
    iget v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pP:F

    .line 534
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pO:F

    mul-float v2, v1, v0

    .line 536
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 537
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 539
    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 540
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 544
    :goto_1
    return v0

    .line 537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private b(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(F)I

    move-result v1

    .line 492
    if-gez v1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-object v0

    .line 495
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->b(F)I

    move-result v2

    .line 496
    if-ltz v2, :cond_0

    .line 500
    iget-object v3, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pD:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    .line 503
    invoke-static {v1, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pL:Z

    .line 633
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eQ()V

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->invalidate()V

    .line 642
    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eS()V

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 647
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 648
    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    .line 649
    if-eqz v2, :cond_0

    .line 650
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pL:Z

    .line 651
    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 652
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eP()V

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->invalidate()V

    .line 654
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rP:J

    .line 659
    :goto_0
    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    .line 660
    iput v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    .line 667
    return-void

    .line 656
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pL:Z

    .line 657
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eR()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/MiuiKeyguardLockPatternView;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pJ:Z

    return v0
.end method

.method static synthetic d(Lcom/android/settings/MiuiKeyguardLockPatternView;)Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pR:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private eO()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 323
    :cond_0
    const v0, 0x11070084

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->M(I)V

    .line 324
    return-void
.end method

.method private eP()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 330
    :cond_0
    const v0, 0x11070082

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->M(I)V

    .line 331
    return-void
.end method

.method private eQ()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 337
    :cond_0
    const v0, 0x11070085

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->M(I)V

    .line 338
    return-void
.end method

.method private eR()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 344
    :cond_0
    const v0, 0x11070083

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->M(I)V

    .line 345
    return-void
.end method

.method private eS()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eT()V

    .line 360
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->invalidate()V

    .line 362
    return-void
.end method

.method private eT()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 368
    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 369
    :goto_1
    if-ge v0, v4, :cond_0

    .line 370
    iget-object v3, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pD:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 373
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/android/settings/MiuiKeyguardLockPatternView;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pL:Z

    return v0
.end method

.method static synthetic g(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rO:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/MiuiKeyguardLockPatternView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pV:I

    return v0
.end method

.method static synthetic i(Lcom/android/settings/MiuiKeyguardLockPatternView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pW:I

    return v0
.end method

.method static synthetic j(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pY:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eS()V

    .line 352
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pV:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pV:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    iget-object v6, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    .line 680
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 681
    iget-object v8, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pD:[[Z

    .line 683
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_2

    .line 688
    add-int/lit8 v0, v7, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pG:J

    sub-long/2addr v4, v10

    long-to-int v1, v4

    rem-int v4, v1, v0

    .line 691
    div-int/lit16 v5, v4, 0x2bc

    .line 693
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eT()V

    move v1, v2

    .line 694
    :goto_0
    if-ge v1, v5, :cond_0

    .line 695
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 696
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v9

    aget-object v9, v8, v9

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    aput-boolean v3, v9, v0

    .line 694
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 701
    :cond_0
    if-lez v5, :cond_3

    if-ge v5, v7, :cond_3

    move v0, v3

    .line 704
    :goto_1
    if-eqz v0, :cond_1

    .line 705
    rem-int/lit16 v0, v4, 0x2bc

    int-to-float v0, v0

    const/high16 v1, 0x442f0000    # 700.0f

    div-float v1, v0, v1

    .line 709
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 710
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v4

    .line 711
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v9

    .line 713
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 714
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, v1

    .line 716
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v0

    sub-float/2addr v0, v9

    mul-float/2addr v0, v1

    .line 718
    add-float v1, v4, v5

    iput v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    .line 719
    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    .line 722
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->invalidate()V

    .line 725
    :cond_2
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pP:F

    .line 727
    iget v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pM:F

    mul-float/2addr v0, v1

    .line 728
    iget-object v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 730
    iget-object v9, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pT:Landroid/graphics/Path;

    .line 731
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    move v5, v2

    .line 733
    :goto_2
    if-ge v5, v12, :cond_5

    .line 734
    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiKeyguardLockPatternView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v4, v2

    .line 735
    :goto_3
    if-ge v4, v12, :cond_4

    .line 736
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/eA;

    .line 737
    aget-object v10, v8, v5

    aget-boolean v10, v10, v4

    invoke-virtual {v1, v10}, Lcom/android/settings/eA;->I(Z)V

    .line 735
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_3
    move v0, v2

    .line 701
    goto :goto_1

    .line 733
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 745
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pJ:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_c

    :cond_6
    move v1, v3

    .line 749
    :goto_4
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    move v4, v3

    .line 750
    :goto_5
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 751
    iget-object v5, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v10, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v10, :cond_e

    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rI:I

    :goto_6
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 752
    iget-object v5, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v10, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v10, :cond_f

    const/16 v0, 0x80

    :goto_7
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v5, :cond_a

    move v5, v2

    .line 756
    :goto_8
    if-ge v2, v7, :cond_7

    .line 757
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 762
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v10

    aget-object v10, v8, v10

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    aget-boolean v10, v10, v11

    if-nez v10, :cond_10

    .line 777
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pL:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v2, :cond_9

    :cond_8
    if-eqz v5, :cond_9

    .line 779
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    iget v2, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 781
    :cond_9
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pz:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 784
    :cond_a
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v2, :cond_b

    if-lez v7, :cond_b

    if-eqz v1, :cond_b

    .line 785
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(Landroid/graphics/Canvas;)V

    .line 788
    :cond_b
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 789
    return-void

    :cond_c
    move v1, v2

    .line 745
    goto :goto_4

    :cond_d
    move v4, v2

    .line 749
    goto :goto_5

    .line 751
    :cond_e
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rH:I

    goto :goto_6

    .line 752
    :cond_f
    const/16 v0, 0x20

    goto :goto_7

    .line 767
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v5

    .line 768
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v0

    .line 769
    if-nez v2, :cond_11

    .line 770
    invoke-virtual {v9, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 756
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    goto :goto_8

    .line 772
    :cond_11
    invoke-virtual {v9, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 551
    packed-switch v0, :pswitch_data_0

    .line 562
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 563
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 565
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 553
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 556
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 559
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0, p1, p1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 432
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 392
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 393
    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pP:F

    .line 395
    iget v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 396
    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pQ:F

    .line 397
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 570
    iget-boolean v2, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pI:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 596
    :goto_0
    return v0

    .line 574
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 596
    goto :goto_0

    .line 576
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 579
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 582
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 585
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eS()V

    .line 586
    iput-boolean v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pL:Z

    .line 587
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eR()V

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 2

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rL:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 305
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pG:J

    .line 311
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pC:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 312
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->N(I)F

    move-result v1

    iput v1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pE:F

    .line 313
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->O(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pF:F

    .line 314
    invoke-direct {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->eT()V

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->invalidate()V

    .line 317
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->pJ:Z

    .line 259
    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/MiuiKeyguardLockPatternView;->rK:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 278
    return-void
.end method
