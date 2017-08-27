.class Lcom/android/settings/eA;
.super Landroid/view/View;
.source "MiuiKeyguardLockPatternView.java"


# instance fields
.field private rR:Z

.field final synthetic rS:Lcom/android/settings/MiuiKeyguardLockPatternView;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiKeyguardLockPatternView;Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    .line 171
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 172
    return-void
.end method


# virtual methods
.method public I(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/settings/eA;->rR:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/eA;->invalidate()V

    .line 177
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 192
    iget-boolean v0, p0, Lcom/android/settings/eA;->rR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->c(Lcom/android/settings/MiuiKeyguardLockPatternView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->d(Lcom/android/settings/MiuiKeyguardLockPatternView;)Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_2

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->e(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->h(Lcom/android/settings/MiuiKeyguardLockPatternView;)I

    move-result v1

    .line 210
    iget-object v2, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->i(Lcom/android/settings/MiuiKeyguardLockPatternView;)I

    move-result v2

    .line 212
    iget-object v3, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v3}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(Lcom/android/settings/MiuiKeyguardLockPatternView;)F

    move-result v3

    .line 213
    iget-object v4, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v4}, Lcom/android/settings/MiuiKeyguardLockPatternView;->b(Lcom/android/settings/MiuiKeyguardLockPatternView;)F

    move-result v4

    .line 215
    int-to-float v1, v1

    sub-float v1, v3, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    .line 216
    int-to-float v2, v2

    sub-float v2, v4, v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 219
    iget-object v3, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v3}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(Lcom/android/settings/MiuiKeyguardLockPatternView;)F

    move-result v3

    iget-object v4, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v4}, Lcom/android/settings/MiuiKeyguardLockPatternView;->h(Lcom/android/settings/MiuiKeyguardLockPatternView;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 220
    iget-object v4, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v4}, Lcom/android/settings/MiuiKeyguardLockPatternView;->b(Lcom/android/settings/MiuiKeyguardLockPatternView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v5}, Lcom/android/settings/MiuiKeyguardLockPatternView;->i(Lcom/android/settings/MiuiKeyguardLockPatternView;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 222
    iget-object v5, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v5}, Lcom/android/settings/MiuiKeyguardLockPatternView;->j(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Matrix;

    move-result-object v5

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 223
    iget-object v1, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->j(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->h(Lcom/android/settings/MiuiKeyguardLockPatternView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v5}, Lcom/android/settings/MiuiKeyguardLockPatternView;->i(Lcom/android/settings/MiuiKeyguardLockPatternView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 224
    iget-object v1, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->j(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 225
    iget-object v1, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->j(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->h(Lcom/android/settings/MiuiKeyguardLockPatternView;)I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v3}, Lcom/android/settings/MiuiKeyguardLockPatternView;->i(Lcom/android/settings/MiuiKeyguardLockPatternView;)I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 227
    if-eqz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->j(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->k(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 230
    :cond_1
    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->f(Lcom/android/settings/MiuiKeyguardLockPatternView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->e(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->d(Lcom/android/settings/MiuiKeyguardLockPatternView;)Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_4

    .line 200
    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->g(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->d(Lcom/android/settings/MiuiKeyguardLockPatternView;)Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->d(Lcom/android/settings/MiuiKeyguardLockPatternView;)Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_6

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardLockPatternView;->e(Lcom/android/settings/MiuiKeyguardLockPatternView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 206
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->d(Lcom/android/settings/MiuiKeyguardLockPatternView;)Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    iget-object v1, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(Lcom/android/settings/MiuiKeyguardLockPatternView;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(Lcom/android/settings/MiuiKeyguardLockPatternView;II)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    iget-object v2, p0, Lcom/android/settings/eA;->rS:Lcom/android/settings/MiuiKeyguardLockPatternView;

    invoke-static {v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->b(Lcom/android/settings/MiuiKeyguardLockPatternView;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, p2, v2}, Lcom/android/settings/MiuiKeyguardLockPatternView;->a(Lcom/android/settings/MiuiKeyguardLockPatternView;II)I

    move-result v1

    .line 184
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 185
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/eA;->setMeasuredDimension(II)V

    .line 186
    return-void
.end method
