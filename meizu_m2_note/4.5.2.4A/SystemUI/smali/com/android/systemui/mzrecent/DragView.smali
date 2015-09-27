.class public Lcom/android/systemui/mzrecent/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field private static sDragAlpha:F


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeProgress:F

.field private mDragLayer:Lcom/android/systemui/mzrecent/MzDragLayer;

.field private mHasDrawn:Z

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/mzrecent/DragView;->sDragAlpha:F

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 302
    :cond_0
    return-void
.end method

.method move(II)V
    .locals 2
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 318
    iget v0, p0, Lcom/android/systemui/mzrecent/DragView;->mRegistrationX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/systemui/mzrecent/DragView;->mOffsetX:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/DragView;->setTranslationX(F)V

    .line 319
    iget v0, p0, Lcom/android/systemui/mzrecent/DragView;->mRegistrationY:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/systemui/mzrecent/DragView;->mOffsetY:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/DragView;->setTranslationY(F)V

    .line 320
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 193
    const/4 v2, 0x0

    .line 201
    .local v2, "debug":Z
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/DragView;->mHasDrawn:Z

    .line 202
    iget v5, p0, Lcom/android/systemui/mzrecent/DragView;->mCrossFadeProgress:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 203
    .local v1, "crossFade":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 204
    if-eqz v1, :cond_3

    iget v5, p0, Lcom/android/systemui/mzrecent/DragView;->mCrossFadeProgress:F

    sub-float v5, v8, v5

    mul-float/2addr v5, v9

    float-to-int v0, v5

    .line 206
    .local v0, "alpha":I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    .end local v0    # "alpha":I
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/systemui/mzrecent/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    if-eqz v1, :cond_1

    .line 210
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/systemui/mzrecent/DragView;->mCrossFadeProgress:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 212
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/android/systemui/mzrecent/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 214
    .local v3, "sX":F
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/android/systemui/mzrecent/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 216
    .local v4, "sY":F
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 217
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/systemui/mzrecent/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    .end local v3    # "sX":F
    .end local v4    # "sY":F
    :cond_1
    return-void

    .line 202
    .end local v1    # "crossFade":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    .restart local v1    # "crossFade":Z
    :cond_3
    const/16 v0, 0xff

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/mzrecent/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/mzrecent/DragView;->setMeasuredDimension(II)V

    .line 187
    return-void
.end method

.method remove()V
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/mzrecent/DragView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragView;->mDragLayer:Lcom/android/systemui/mzrecent/MzDragLayer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/mzrecent/MzDragLayer;->removeView(Landroid/view/View;)V

    .line 329
    :cond_0
    return-void
.end method

.method public resetLayoutParams()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/mzrecent/DragView;->mOffsetY:F

    iput v0, p0, Lcom/android/systemui/mzrecent/DragView;->mOffsetX:F

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/DragView;->requestLayout()V

    .line 307
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/DragView;->mPaint:Landroid/graphics/Paint;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/DragView;->invalidate()V

    .line 269
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/systemui/mzrecent/DragView;->mPaint:Landroid/graphics/Paint;

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/DragView;->invalidate()V

    .line 225
    return-void
.end method
