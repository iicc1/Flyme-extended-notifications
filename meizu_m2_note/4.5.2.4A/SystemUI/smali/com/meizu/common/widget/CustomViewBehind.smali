.class public Lcom/meizu/common/widget/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# static fields
.field private static mGestureAreaWidth:I


# instance fields
.field private mActivePointerId:I

.field private mContent:Landroid/view/View;

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mMenuWidth:I

.field private mMode:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTransformer:Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

.field private mViewBehindLocation:[I

.field private mVisibleAlways:Z

.field private mWidthChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 922
    const/16 v0, 0x64

    sput v0, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    return-void
.end method

.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 906
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 907
    .local v0, "y":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 908
    return v0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 400
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 410
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 385
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 386
    .local v1, "pointerId":I
    iget v3, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 388
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 389
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 391
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->recycleVelocityTracker()V

    .line 393
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 388
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 424
    :cond_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public IsBeingDragged()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTransformer:Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 432
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTransformer:Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 433
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 9
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 820
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadeEnabled:Z

    if-nez v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 822
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadeDegree:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 823
    .local v6, "alpha":I
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 824
    const/4 v7, 0x0

    .line 825
    .local v7, "left":I
    const/4 v8, 0x0

    .line 826
    .local v8, "right":I
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v0, :cond_2

    .line 828
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 829
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 844
    :cond_1
    :goto_1
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 831
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 833
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_1

    .line 836
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 838
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 839
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 840
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_1
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 855
    iget-boolean v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorEnabled:Z

    if-nez v4, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 859
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 860
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "CustomViewBehindSelectedView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 864
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v1, v4

    .line 865
    .local v1, "offset":I
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v4, :cond_3

    .line 867
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 868
    .local v2, "right":I
    sub-int v0, v2, v1

    .line 869
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 870
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 879
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 872
    :cond_3
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 874
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 875
    .restart local v0    # "left":I
    add-int v2, v0, v1

    .line 876
    .restart local v2    # "right":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 877
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 778
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    .line 783
    :cond_2
    const/4 v0, 0x0

    .line 784
    .local v0, "right":I
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_4

    .line 786
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewBehindLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 787
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewBehindLocation:[I

    aget v1, v1, v4

    if-lez v1, :cond_0

    .line 790
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    add-int v0, v1, v2

    .line 806
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 808
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 792
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 794
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    .line 796
    :cond_5
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 798
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 801
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 802
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 804
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    add-int v0, v1, v2

    goto :goto_1
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 659
    .local v0, "widthOffset":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomViewAbove;->getAboveOffsetLeft()I

    move-result v0

    .line 663
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 665
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 671
    :goto_0
    return v1

    .line 667
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0

    .line 671
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 677
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v0, :cond_0

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 685
    :goto_0
    return v0

    .line 681
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 683
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 685
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .locals 3
    .param p1, "content"    # Landroid/view/View;
    .param p2, "page"    # I

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 619
    .local v0, "widthOffset":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomViewAbove;->getAboveOffsetLeft()I

    move-result v0

    .line 622
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_2

    .line 624
    packed-switch p2, :pswitch_data_0

    .line 652
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_1
    return v1

    .line 627
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 629
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_1

    .line 632
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 634
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 637
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_1

    .line 639
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 642
    :cond_3
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 644
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 647
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 649
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 634
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 644
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 557
    if-le p1, v3, :cond_1

    move p1, v0

    .line 558
    :cond_0
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    .line 568
    :goto_1
    return v1

    .line 557
    :cond_1
    if-ge p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 562
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-ne v1, v3, :cond_3

    if-ge p1, v3, :cond_3

    move v1, v0

    .line 564
    goto :goto_1

    :cond_3
    move v1, p1

    .line 568
    goto :goto_1
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .locals 6
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 690
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 691
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 692
    .local v1, "right":I
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v4, :cond_2

    .line 694
    if-lt p2, v0, :cond_1

    sget v4, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    add-int/2addr v4, v0

    if-gt p2, v4, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 694
    goto :goto_0

    .line 696
    :cond_2
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-ne v4, v2, :cond_4

    .line 698
    if-gt p2, v1, :cond_3

    sget v4, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 700
    :cond_4
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 702
    if-lt p2, v0, :cond_5

    sget v4, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    add-int/2addr v4, v0

    if-le p2, v4, :cond_0

    :cond_5
    if-gt p2, v1, :cond_6

    sget v4, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v3

    .line 704
    goto :goto_0
.end method

.method public menuClosedSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 739
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 741
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 741
    goto :goto_0

    .line 743
    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 745
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 747
    :cond_3
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 751
    goto :goto_0
.end method

.method public menuOpenSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 756
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 758
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 758
    goto :goto_0

    .line 760
    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 762
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 764
    :cond_3
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 768
    goto :goto_0
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
    .locals 1
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    .line 714
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 721
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 717
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 719
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/common/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
    .locals 4
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_3

    .line 728
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_2

    .line 734
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 728
    goto :goto_0

    .line 730
    :cond_3
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eq v2, v0, :cond_4

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_5

    if-ne p2, v3, :cond_5

    .line 732
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 734
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 175
    iget-object v10, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v10}, Lcom/meizu/common/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 255
    :goto_0
    return v8

    .line 181
    :cond_0
    iget-object v10, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v10}, Lcom/meizu/common/widget/CustomViewAbove;->IsBeingDragged()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 182
    iput-boolean v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    move v8, v9

    .line 183
    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 188
    .local v0, "action":I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_2

    iget-boolean v10, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    if-eqz v10, :cond_2

    move v8, v9

    .line 190
    goto :goto_0

    .line 193
    :cond_2
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 255
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    goto :goto_0

    .line 195
    :pswitch_1
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 196
    .local v1, "activePointerId":I
    if-eq v1, v11, :cond_3

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 201
    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 202
    .local v4, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 203
    .local v6, "y":I
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    int-to-float v10, v4

    sub-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v5, v8

    .line 204
    .local v5, "xDiff":I
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    int-to-float v10, v6

    sub-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v7, v8

    .line 206
    .local v7, "yDiff":I
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchSlop:I

    if-le v5, v8, :cond_3

    sub-int v8, v5, v7

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    int-to-float v10, v4

    iget v11, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    sub-float/2addr v10, v11

    invoke-virtual {v8, v10}, Lcom/meizu/common/widget/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 208
    iput-boolean v9, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 209
    int-to-float v8, v4

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 210
    int-to-float v8, v6

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    .line 212
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->initVelocityTrackerIfNotExists()V

    .line 213
    iget-object v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 215
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 222
    .end local v1    # "activePointerId":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":I
    .end local v5    # "xDiff":I
    .end local v6    # "y":I
    .end local v7    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v4, v9

    .line 223
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 224
    .restart local v6    # "y":I
    iput-boolean v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, p0, Lcom/meizu/common/widget/CustomViewBehind;->mInitialMotionX:F

    iput v9, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 226
    int-to-float v9, v6

    iput v9, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    .line 227
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 229
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->initOrResetVelocityTracker()V

    .line 230
    iget-object v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 237
    .end local v4    # "x":I
    .end local v6    # "y":I
    :pswitch_3
    iput-boolean v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 238
    iput v11, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 239
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 242
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 243
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 244
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    .line 245
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    goto/16 :goto_1

    .line 249
    .end local v2    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 250
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 251
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    goto/16 :goto_1

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    sub-int v4, p4, p2

    .line 444
    .local v4, "width":I
    sub-int v3, p5, p3

    .line 445
    .local v3, "height":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 446
    .local v1, "childWidth":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 447
    .local v0, "childHeight":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v5, v7, v7, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 448
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 449
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v5, v7, v7, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 452
    :cond_0
    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mWidthChanged:Z

    if-eqz v5, :cond_1

    .line 453
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v5}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v2

    .line 454
    .local v2, "currentPage":I
    packed-switch v2, :pswitch_data_0

    .line 464
    :goto_0
    :pswitch_0
    iput-boolean v7, p0, Lcom/meizu/common/widget/CustomViewBehind;->mWidthChanged:Z

    .line 467
    .end local v2    # "currentPage":I
    :cond_1
    return-void

    .line 456
    .restart local v2    # "currentPage":I
    :pswitch_1
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v5, v7, v7, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZZ)V

    goto :goto_0

    .line 459
    :pswitch_2
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZZ)V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 472
    invoke-static {v5, p1}, Lcom/meizu/common/widget/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .line 473
    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/meizu/common/widget/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .line 474
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/meizu/common/widget/CustomViewBehind;->setMeasuredDimension(II)V

    .line 475
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMenuWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p1, v5, v4}, Lcom/meizu/common/widget/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 476
    .local v1, "contentWidth":I
    invoke-static {p2, v5, v2}, Lcom/meizu/common/widget/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 477
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 478
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 479
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 480
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/common/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v21

    if-nez v21, :cond_0

    .line 269
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    .line 364
    :goto_0
    return v21

    .line 273
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/common/widget/CustomViewAbove;->IsBeingDragged()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 274
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 275
    const/16 v21, 0x0

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->initVelocityTrackerIfNotExists()V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 282
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 364
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v21, 0x1

    goto :goto_0

    .line 284
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->getChildCount()I

    move-result v21

    if-nez v21, :cond_3

    .line 285
    const/16 v21, 0x0

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mInitialMotionX:F

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    .line 290
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    goto :goto_1

    .line 294
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 295
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 296
    .local v19, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 297
    .local v20, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v6, v21, v22

    .line 298
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    move/from16 v21, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v7, v21, v22

    .line 300
    .local v7, "deltaY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v21, v21, v22

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 304
    .local v13, "parent":Landroid/view/ViewParent;
    if-eqz v13, :cond_4

    .line 305
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 307
    :cond_4
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 308
    const/16 v21, 0x0

    cmpl-float v21, v6, v21

    if-lez v21, :cond_7

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v6, v6, v21

    .line 314
    .end local v13    # "parent":Landroid/view/ViewParent;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 315
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 316
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v11, v0

    .line 318
    .local v11, "oldScrollX":F
    add-float v16, v11, v6

    .line 320
    .local v16, "scrollX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/common/widget/CustomViewAbove;->getLeftBound()I

    move-result v21

    move/from16 v0, v21

    int-to-float v9, v0

    .line 321
    .local v9, "leftBound":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/common/widget/CustomViewAbove;->getRightBound()I

    move-result v21

    move/from16 v0, v21

    int-to-float v15, v0

    .line 323
    .local v15, "rightBound":F
    cmpg-float v21, v16, v9

    if-gez v21, :cond_8

    .line 324
    move/from16 v16, v9

    .line 329
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v21, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v16, v22

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->getScrollY()I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .line 311
    .end local v9    # "leftBound":F
    .end local v11    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .restart local v13    # "parent":Landroid/view/ViewParent;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v6, v6, v21

    goto/16 :goto_2

    .line 325
    .end local v13    # "parent":Landroid/view/ViewParent;
    .restart local v9    # "leftBound":F
    .restart local v11    # "oldScrollX":F
    .restart local v15    # "rightBound":F
    .restart local v16    # "scrollX":F
    :cond_8
    cmpl-float v21, v16, v15

    if-lez v21, :cond_6

    .line 326
    move/from16 v16, v15

    goto :goto_3

    .line 337
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v9    # "leftBound":F
    .end local v11    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v19    # "x":I
    .end local v20    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 340
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v8, v0

    .line 342
    .local v8, "initialVelocity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v16

    .line 343
    .local v16, "scrollX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v21

    sub-int v21, v16, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v12, v21, v22

    .line 345
    .local v12, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 346
    .local v14, "pointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 347
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    .line 349
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v12, v8, v1}, Lcom/meizu/common/widget/CustomViewAbove;->determineTargetPage(FII)I

    move-result v10

    .line 350
    .local v10, "nextPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v10, v1, v2, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 354
    .end local v10    # "nextPage":I
    .end local v17    # "totalDelta":I
    :goto_4
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 355
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 352
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_4

    .line 360
    .end local v8    # "initialVelocity":I
    .end local v12    # "pageOffset":F
    .end local v14    # "pointerIndex":I
    .end local v16    # "scrollX":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewBehind;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "vis":I
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_4

    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVisibleAlways:Z

    if-nez v1, :cond_0

    .line 584
    const/4 v0, 0x4

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/meizu/common/widget/CustomViewBehind;->scrollTo(II)V

    .line 607
    :cond_1
    :goto_0
    if-ne v0, v2, :cond_2

    .line 608
    const-string v1, "CustomViewBehind"

    const-string v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_2
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomViewBehind;->setVisibility(I)V

    .line 610
    if-nez v0, :cond_3

    .line 611
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->invalidate()V

    .line 613
    :cond_3
    return-void

    .line 587
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 589
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_5

    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVisibleAlways:Z

    if-nez v1, :cond_5

    .line 590
    const/4 v0, 0x4

    .line 591
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/meizu/common/widget/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    .line 593
    :cond_6
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 595
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_8

    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVisibleAlways:Z

    if-nez v1, :cond_8

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 597
    if-nez p2, :cond_9

    move v0, v2

    .line 598
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_a

    .line 600
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/meizu/common/widget/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    :cond_7
    move v1, v3

    .line 595
    goto :goto_1

    :cond_8
    move v1, v3

    .line 596
    goto :goto_2

    :cond_9
    move v0, v3

    .line 597
    goto :goto_3

    .line 604
    :cond_a
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/meizu/common/widget/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 153
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTransformer:Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->invalidate()V

    .line 155
    :cond_0
    return-void
.end method
