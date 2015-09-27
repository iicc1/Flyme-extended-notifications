.class public Lcom/meizu/common/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/ProgressBar$1;,
        Lcom/meizu/common/widget/ProgressBar$SavedState;,
        Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBehavior:I

.field private mBreakPoint:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsVertical:Z

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method static synthetic access$000(Lcom/meizu/common/widget/ProgressBar;IIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/ProgressBar;Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;)Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ProgressBar;
    .param p1, "x1"    # Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 553
    .local v4, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 554
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 555
    const/4 v3, 0x0

    .line 557
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 558
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 561
    :cond_0
    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 562
    .local v2, "level":I
    if-eqz v3, :cond_3

    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 567
    .end local v2    # "level":I
    :goto_2
    if-eqz p4, :cond_1

    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 568
    invoke-virtual {p0, v4, p3}, Lcom/meizu/common/widget/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :cond_1
    monitor-exit p0

    return-void

    .line 552
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    .restart local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scale":F
    :cond_3
    move-object v3, v1

    .line 562
    goto :goto_1

    .line 564
    .end local v2    # "level":I
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 552
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/meizu/common/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 576
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :goto_0
    monitor-exit p0

    return-void

    .line 579
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    .line 583
    .local v0, "r":Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    .line 584
    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 589
    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 575
    .end local v0    # "r":Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 587
    :cond_1
    :try_start_2
    new-instance v0, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;-><init>(Lcom/meizu/common/widget/ProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "r":Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method

.method private updateDrawableBounds(II)V
    .locals 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v12, 0x0

    .line 875
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingRight()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v11

    sub-int v7, v10, v11

    .line 876
    .local v7, "right":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingBottom()I

    move-result v10

    sub-int v10, p2, v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v11

    sub-int v0, v10, v11

    .line 877
    .local v0, "bottom":I
    const/4 v8, 0x0

    .line 878
    .local v8, "top":I
    const/4 v6, 0x0

    .line 880
    .local v6, "left":I
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_1

    .line 882
    iget-boolean v10, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v10, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v10, :cond_0

    .line 885
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 886
    .local v5, "intrinsicWidth":I
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 887
    .local v4, "intrinsicHeight":I
    int-to-float v10, v5

    int-to-float v11, v4

    div-float v3, v10, v11

    .line 888
    .local v3, "intrinsicAspect":F
    int-to-float v10, p1

    int-to-float v11, p2

    div-float v1, v10, v11

    .line 889
    .local v1, "boundAspect":F
    cmpl-float v10, v3, v1

    if-eqz v10, :cond_0

    .line 890
    cmpl-float v10, v1, v3

    if-lez v10, :cond_3

    .line 892
    int-to-float v10, p2

    mul-float/2addr v10, v3

    float-to-int v9, v10

    .line 893
    .local v9, "width":I
    sub-int v10, p1, v9

    div-int/lit8 v6, v10, 0x2

    .line 894
    add-int v7, v6, v9

    .line 903
    .end local v1    # "boundAspect":F
    .end local v3    # "intrinsicAspect":F
    .end local v4    # "intrinsicHeight":I
    .end local v5    # "intrinsicWidth":I
    .end local v9    # "width":I
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v6, v8, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 906
    :cond_1
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    .line 907
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v12, v12, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 909
    :cond_2
    return-void

    .line 897
    .restart local v1    # "boundAspect":F
    .restart local v3    # "intrinsicAspect":F
    .restart local v4    # "intrinsicHeight":I
    .restart local v5    # "intrinsicWidth":I
    :cond_3
    int-to-float v10, p1

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v3

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 898
    .local v2, "height":I
    sub-int v10, p2, v2

    div-int/lit8 v8, v10, 0x2

    .line 899
    add-int v0, v8, v2

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1003
    .local v0, "state":[I
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1007
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1010
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 996
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 997
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    .line 998
    return-void
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 854
    iget-boolean v3, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 855
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 856
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 857
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v4

    add-int v1, v3, v4

    .line 858
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v4

    add-int v2, v3, v4

    .line 860
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/meizu/common/widget/ProgressBar;->invalidate(IIII)V

    .line 866
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 512
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 513
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 515
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1074
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1075
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    .line 1078
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshIsPosted:Z

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1093
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1094
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 921
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 923
    iget-object v2, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 924
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 928
    iget-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 930
    .local v0, "availdeDis":I
    :goto_0
    iget v8, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    mul-int/2addr v8, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v9

    div-int v1, v8, v9

    .line 933
    .local v1, "breakLevel":I
    iget-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    if-eqz v8, :cond_3

    .line 934
    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v10

    sub-int v11, v0, v1

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 935
    .local v3, "firstPartRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    sub-int v9, v0, v1

    add-int/lit8 v9, v9, 0x5

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v10

    invoke-direct {v5, v8, v9, v10, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 940
    .local v5, "secondPartRect":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 941
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 942
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v6

    .line 943
    .local v6, "time":J
    iget-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v8, :cond_0

    .line 944
    iget-object v8, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v9, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8, v6, v7, v9}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 945
    iget-object v8, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 947
    .local v4, "scale":F
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    .line 948
    const v8, 0x461c4000    # 10000.0f

    mul-float/2addr v8, v4

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    .line 952
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 954
    .end local v4    # "scale":F
    :cond_0
    iget v8, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v9

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    if-eqz v8, :cond_4

    .line 955
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 956
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 957
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 959
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 960
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 961
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 962
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 963
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 969
    :goto_2
    iget-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v8, :cond_1

    instance-of v8, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v8, :cond_1

    .line 970
    check-cast v2, Landroid/graphics/drawable/Animatable;

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 971
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 974
    .end local v0    # "availdeDis":I
    .end local v1    # "breakLevel":I
    .end local v3    # "firstPartRect":Landroid/graphics/Rect;
    .end local v5    # "secondPartRect":Landroid/graphics/Rect;
    .end local v6    # "time":J
    :cond_1
    monitor-exit p0

    return-void

    .line 928
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingRight()I

    move-result v9

    sub-int v0, v8, v9

    goto/16 :goto_0

    .line 937
    .restart local v0    # "availdeDis":I
    .restart local v1    # "breakLevel":I
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v10

    invoke-direct {v3, v8, v9, v1, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 938
    .restart local v3    # "firstPartRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v8, v1, 0x5

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v10

    invoke-direct {v5, v8, v9, v0, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v5    # "secondPartRect":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 950
    .restart local v4    # "scale":F
    .restart local v6    # "time":J
    :catchall_0
    move-exception v8

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 921
    .end local v0    # "availdeDis":I
    .end local v1    # "breakLevel":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "firstPartRect":Landroid/graphics/Rect;
    .end local v4    # "scale":F
    .end local v5    # "secondPartRect":Landroid/graphics/Rect;
    .end local v6    # "time":J
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 965
    .restart local v0    # "availdeDis":I
    .restart local v1    # "breakLevel":I
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "firstPartRect":Landroid/graphics/Rect;
    .restart local v5    # "secondPartRect":Landroid/graphics/Rect;
    .restart local v6    # "time":J
    :cond_4
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 966
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1098
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1099
    const-class v0, Lcom/meizu/common/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1100
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1101
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1102
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 978
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 980
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 981
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 982
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 983
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 984
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 986
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    .line 987
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 988
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 990
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/meizu/common/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Lcom/meizu/common/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/meizu/common/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    monitor-exit p0

    return-void

    .line 978
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 572
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1065
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/ProgressBar$SavedState;

    .line 1066
    .local v0, "ss":Lcom/meizu/common/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1068
    iget v1, v0, Lcom/meizu/common/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    .line 1069
    iget v1, v0, Lcom/meizu/common/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1070
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1054
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1055
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1057
    .local v0, "ss":Lcom/meizu/common/widget/ProgressBar$SavedState;
    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    iput v2, v0, Lcom/meizu/common/widget/ProgressBar$SavedState;->progress:I

    .line 1058
    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/meizu/common/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 1060
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 870
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 871
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 840
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 842
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 844
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 845
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    .line 850
    :cond_1
    :goto_0
    return-void

    .line 847
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 520
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 522
    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 605
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 613
    :cond_1
    if-gez p1, :cond_2

    .line 614
    const/4 p1, 0x0

    .line 617
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 618
    iget p1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 621
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 622
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    .line 623
    const v0, 0x102000d

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 640
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 644
    :cond_1
    if-gez p1, :cond_2

    .line 645
    const/4 p1, 0x0

    .line 648
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 649
    iget p1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 652
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 653
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    .line 654
    const v0, 0x102000f

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 825
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 827
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 829
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    .line 836
    :cond_1
    :goto_0
    return-void

    .line 832
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 776
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 765
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 768
    :cond_2
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 769
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 770
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 771
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 772
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 773
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 774
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1
.end method

.method stopAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 783
    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 784
    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 785
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 790
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
