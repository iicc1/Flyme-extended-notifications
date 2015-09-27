.class public Lcom/meizu/common/widget/EnhanceSeekBar;
.super Landroid/view/View;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;,
        Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;,
        Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private hasMoved:Z

.field private mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

.field private mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mHalfThumbHeight:I

.field private mHalfThumbWidth:I

.field private mInitialTouchX:F

.field private mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private mIsDragging:Z

.field private mIsInItemPositon:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mMax:I

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mProgress:I

.field private mScaledTouchSlop:I

.field private mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mTouchDownProgress:I

.field private mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;


# direct methods
.method static synthetic access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceSeekBar;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    return-object v0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 615
    :cond_0
    return-void
.end method

.method private flingThumb(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v4

    .line 564
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 567
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 568
    .local v5, "x":I
    const/4 v3, 0x0

    .line 569
    .local v3, "thumbX":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 570
    const/4 v3, 0x0

    .line 576
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 577
    .local v1, "process":I
    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 579
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 580
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v3

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v3, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 581
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 582
    return-void

    .line 571
    .end local v1    # "process":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_0
.end method

.method private declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPointInside(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 555
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 556
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private onProgressRefresh(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 311
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 318
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v11

    sub-int v2, v10, v11

    .line 351
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 352
    .local v8, "thumbWidth":I
    sub-int/2addr v2, v8

    .line 357
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, p3

    int-to-float v11, v2

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    sub-int v7, v2, v10

    .line 361
    .local v7, "thumbPos":I
    const/high16 v10, -0x80000000

    move/from16 v0, p4

    if-ne v0, v10, :cond_2

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 363
    .local v4, "oldBounds":Landroid/graphics/Rect;
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 364
    .local v9, "topBound":I
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 365
    .local v3, "bottomBound":I
    const/4 v6, 0x1

    .line 372
    .end local v4    # "oldBounds":Landroid/graphics/Rect;
    .local v6, "shouldAnimation":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v10, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 374
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 376
    :cond_0
    if-eqz v6, :cond_4

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 379
    .local v5, "oldThumbPos":I
    if-ne v5, v7, :cond_3

    .line 380
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    .line 381
    const/high16 v10, -0x80000000

    move/from16 v0, p4

    if-ne v0, v10, :cond_1

    .line 382
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v10, :cond_1

    .line 383
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v11

    move-object/from16 v0, p0

    invoke-interface {v10, v0, v11}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    .line 418
    .end local v5    # "oldThumbPos":I
    :cond_1
    :goto_1
    return-void

    .line 367
    .end local v3    # "bottomBound":I
    .end local v6    # "shouldAnimation":Z
    .end local v9    # "topBound":I
    :cond_2
    move/from16 v9, p4

    .line 368
    .restart local v9    # "topBound":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int v3, v9, v10

    .line 369
    .restart local v3    # "bottomBound":I
    const/4 v6, 0x0

    .restart local v6    # "shouldAnimation":Z
    goto :goto_0

    .line 389
    .restart local v5    # "oldThumbPos":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float v11, v5

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 390
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float v11, v7

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 391
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    const-string v11, "xY"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 395
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 396
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v11, Lcom/meizu/common/widget/EnhanceSeekBar$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$1;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 417
    .end local v5    # "oldThumbPos":I
    :goto_2
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    goto :goto_1

    .line 414
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    add-int v11, v7, v8

    invoke-virtual {v10, v7, v9, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    goto :goto_2
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v4

    .line 590
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 591
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 593
    .local v5, "x":I
    const/4 v2, 0x0

    .line 594
    .local v2, "progress":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 595
    const/4 v3, 0x0

    .line 602
    .local v3, "scale":F
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v1

    .line 603
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 604
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 605
    return-void

    .line 596
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 597
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 599
    .end local v3    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .restart local v3    # "scale":F
    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 336
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 338
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v0

    .line 340
    .local v0, "max":I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 341
    .local v1, "scale":F
    :goto_0
    if-eqz v2, :cond_0

    .line 342
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 344
    :cond_0
    return-void

    .line 340
    .end local v1    # "scale":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 324
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 326
    .local v0, "state":[I
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 328
    .end local v0    # "state":[I
    :cond_0
    return-void
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 422
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 423
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 425
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 431
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 432
    .local v3, "available":F
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v7

    .line 433
    .local v7, "max":I
    if-lez v7, :cond_0

    int-to-float v0, v7

    div-float v8, v3, v0

    .line 435
    .local v8, "offset":F
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 437
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 438
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-gt v6, v7, :cond_2

    .line 439
    int-to-float v0, v6

    mul-float/2addr v0, v8

    const/4 v1, 0x0

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 438
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 428
    .end local v3    # "available":F
    .end local v6    # "i":I
    .end local v7    # "max":I
    .end local v8    # "offset":F
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 441
    .restart local v3    # "available":F
    .restart local v6    # "i":I
    .restart local v7    # "max":I
    .restart local v8    # "offset":F
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 443
    const/4 v6, 0x0

    :goto_2
    if-gt v6, v7, :cond_5

    .line 444
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 445
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    :goto_3
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    aget-object v9, v0, v6

    check-cast v9, Ljava/lang/String;

    .line 451
    .local v9, "string":Ljava/lang/String;
    int-to-float v0, v6

    mul-float/2addr v0, v8

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    .end local v9    # "string":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 447
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 454
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 457
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 458
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 462
    :goto_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    .end local v3    # "available":F
    .end local v6    # "i":I
    .end local v7    # "max":I
    .end local v8    # "offset":F
    :cond_6
    monitor-exit p0

    return-void

    .line 460
    .restart local v3    # "available":F
    .restart local v6    # "i":I
    .restart local v7    # "max":I
    .restart local v8    # "offset":F
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 693
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 694
    const-class v0, Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 695
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 699
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 700
    const-class v1, Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 702
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    .line 704
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 705
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 707
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 708
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 711
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    move v3, v4

    .line 471
    .local v3, "thumbHeight":I
    :goto_0
    const/16 v2, 0x14

    .line 472
    .local v2, "minHeight":I
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 473
    add-int/lit8 v2, v2, 0x32

    .line 475
    :cond_0
    move v0, v2

    .line 476
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v5

    add-int/lit8 v5, v5, 0x40

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    add-int v1, v5, v6

    .line 477
    .local v1, "dw":I
    if-eqz v3, :cond_2

    .line 478
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    const/16 v4, 0x32

    :cond_1
    add-int/2addr v4, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 480
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 481
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 483
    const/4 v4, 0x0

    invoke-static {v1, p1, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, p2, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    .line 470
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v2    # "minHeight":I
    .end local v3    # "thumbHeight":I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 686
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    .line 687
    .local v0, "ss":Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 688
    iget v1, v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 689
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 676
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 677
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 679
    .local v0, "ss":Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    iput v2, v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    .line 681
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/EnhanceSeekBar;->updateThumbPos(II)V

    .line 333
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 622
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStartTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    .line 625
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 632
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStopTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    .line 635
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 490
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v3

    .line 494
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v5

    if-eqz v5, :cond_0

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 499
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    move v3, v4

    .line 551
    goto :goto_0

    .line 501
    :pswitch_0
    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    .line 502
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 503
    .local v0, "available":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float v1, v5, v6

    .line 504
    .local v1, "process":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/common/widget/EnhanceSeekBar;->isPointInside(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 507
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    .line 508
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 509
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 511
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStartTrackingTouch()V

    .line 513
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    .line 514
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto :goto_1

    .line 518
    .end local v0    # "available":I
    .end local v1    # "process":F
    :pswitch_1
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v5, :cond_5

    .line 519
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    .line 520
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->flingThumb(Landroid/view/MotionEvent;)V

    .line 521
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 523
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mScaledTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 524
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto :goto_1

    .line 526
    :cond_6
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto :goto_1

    .line 532
    :pswitch_2
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v5, :cond_7

    .line 533
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 534
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 535
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    goto/16 :goto_1

    .line 536
    :cond_7
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    if-nez v5, :cond_2

    .line 538
    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    invoke-virtual {p0, v5, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto/16 :goto_1

    .line 543
    :pswitch_3
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v5, :cond_8

    .line 544
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 545
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    .line 547
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 715
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 740
    :goto_0
    return v2

    .line 718
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 719
    goto :goto_0

    .line 722
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v1

    .line 723
    .local v1, "progress":I
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 724
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 740
    goto :goto_0

    .line 726
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 727
    goto :goto_0

    .line 729
    :cond_2
    sub-int v4, v1, v0

    invoke-virtual {p0, v4, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 733
    :sswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 734
    goto :goto_0

    .line 736
    :cond_3
    add-int v4, v1, v0

    invoke-virtual {p0, v4, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 724
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromFling"    # Z

    .prologue
    .line 255
    monitor-enter p0

    if-gez p1, :cond_0

    .line 256
    const/4 p1, 0x0

    .line 259
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-le p1, v1, :cond_1

    .line 260
    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    .line 263
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    if-nez v1, :cond_3

    .line 264
    :cond_2
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    .line 265
    if-nez p2, :cond_5

    .line 266
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 267
    .local v0, "scale":F
    :goto_0
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onProgressRefresh(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v0    # "scale":F
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 266
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressDragging(Lcom/meizu/common/widget/EnhanceSeekBar;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
