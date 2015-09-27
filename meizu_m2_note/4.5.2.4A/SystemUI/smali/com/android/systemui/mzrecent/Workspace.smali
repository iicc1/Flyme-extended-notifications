.class public Lcom/android/systemui/mzrecent/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mzrecent/Workspace$1;,
        Lcom/android/systemui/mzrecent/Workspace$SavedState;
    }
.end annotation


# static fields
.field private static final SMOOTHING_CONSTANT:F


# instance fields
.field private mActivePointerId:I

.field private mAllowLongPress:Z

.field protected mCurrentScreen:I

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mMouseDownX:F

.field protected mNextScreen:I

.field private mPageIndicator:Lcom/android/systemui/mzrecent/PageIndicator;

.field private mRevertInterpolatorOnScrollFinish:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mScrollingBounce:I

.field private mScrollingSpeed:I

.field private mSensemode:Z

.field private mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 111
    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/systemui/mzrecent/Workspace;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 849
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 852
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 661
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 662
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 666
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 667
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionX:F

    .line 668
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionY:F

    .line 669
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    .line 670
    iget-object v3, p0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 671
    iget-object v3, p0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 674
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 666
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 859
    :cond_0
    return-void
.end method

.method private snapToScreen(IIZ)V
    .locals 18
    .param p1, "whichScreen"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z

    .prologue
    .line 867
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 868
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 895
    :goto_0
    return-void

    .line 870
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v15

    .line 872
    .local v15, "focusedChild":Landroid/view/View;
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v15, v2, :cond_1

    .line 874
    invoke-virtual {v15}, Landroid/view/View;->clearFocus()V

    .line 876
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 877
    .local v17, "screenDelta":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 880
    :cond_2
    const/4 v14, 0x1

    .line 881
    .local v14, "durationOffset":I
    if-nez v17, :cond_3

    .line 882
    const/16 v14, 0x190

    .line 884
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/mzrecent/Workspace;->mScrollingSpeed:I

    add-int v7, v2, v14

    .line 885
    .local v7, "duration":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getWidth()I

    move-result v2

    mul-int v16, p1, v2

    .line 886
    .local v16, "newX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    sub-int v5, v16, v2

    .line 887
    .local v5, "delta":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/mzrecent/Workspace;->mSensemode:Z

    if-nez v2, :cond_4

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 893
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->invalidate()V

    goto :goto_0

    .line 890
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getScrollX()I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x190

    move v11, v5

    invoke-virtual/range {v8 .. v13}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 491
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 492
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    .line 493
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 496
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 497
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const v6, 0x4e6e6b28    # 1.0E9f

    const/4 v7, -0x1

    .line 303
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 304
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    .line 305
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mSmoothingTime:F

    .line 306
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScrollY:I

    .line 307
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/mzrecent/Workspace;->scrollTo(II)V

    .line 309
    const/4 v3, 0x0

    .line 310
    .local v3, "offset":F
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    if-eq v4, v7, :cond_6

    .line 311
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    if-le v4, v5, :cond_2

    .line 312
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v3, v4

    .line 335
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->postInvalidate()V

    .line 355
    .end local v3    # "offset":F
    :cond_1
    :goto_1
    return-void

    .line 313
    .restart local v3    # "offset":F
    :cond_2
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    if-ge v4, v5, :cond_3

    .line 314
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    mul-int/lit16 v5, v5, 0x280

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_0

    .line 316
    :cond_3
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    if-ne v4, v5, :cond_0

    .line 317
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4

    .line 318
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    mul-int/lit16 v5, v5, 0x280

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_0

    .line 320
    :cond_4
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    if-nez v4, :cond_5

    .line 321
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v3, v4

    goto :goto_0

    .line 323
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    mul-int/lit16 v5, v5, 0x280

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_0

    .line 329
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_0

    .line 336
    .end local v3    # "offset":F
    :cond_7
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    if-eq v4, v7, :cond_8

    .line 337
    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    .line 342
    iget-object v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mPageIndicator:Lcom/android/systemui/mzrecent/PageIndicator;

    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/mzrecent/PageIndicator;->setCurrentPage(I)V

    .line 343
    iput v7, p0, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    .line 345
    iget-boolean v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mRevertInterpolatorOnScrollFinish:Z

    if-eqz v4, :cond_1

    .line 346
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScrollingBounce:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/Workspace;->setBounceAmount(I)V

    goto/16 :goto_1

    .line 347
    :cond_8
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 348
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v4, v6

    .line 349
    .local v2, "now":F
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mSmoothingTime:F

    sub-float v4, v2, v4

    sget v5, Lcom/android/systemui/mzrecent/Workspace;->SMOOTHING_CONSTANT:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 351
    .local v1, "e":F
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 352
    .local v0, "dx":F
    iget v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    int-to-float v4, v4

    mul-float v5, v0, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    .line 353
    iput v2, p0, Lcom/android/systemui/mzrecent/Workspace;->mSmoothingTime:F

    goto/16 :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    const/4 v10, -0x1

    .line 1023
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 1040
    .local v2, "halfScreenSize":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v5

    .line 1041
    .local v5, "pageCount":I
    if-lez v5, :cond_2

    .line 1042
    iget-object v8, p0, Lcom/android/systemui/mzrecent/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v8}, Lcom/android/systemui/mzrecent/Workspace;->getVisiblePages([I)V

    .line 1043
    iget-object v8, p0, Lcom/android/systemui/mzrecent/Workspace;->mTempVisiblePagesRange:[I

    aget v4, v8, v13

    .line 1044
    .local v4, "leftScreen":I
    iget-object v8, p0, Lcom/android/systemui/mzrecent/Workspace;->mTempVisiblePagesRange:[I

    const/4 v9, 0x1

    aget v6, v8, v9

    .line 1045
    .local v6, "rightScreen":I
    if-eq v4, v10, :cond_2

    if-eq v6, v10, :cond_2

    .line 1046
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getDrawingTime()J

    move-result-wide v0

    .line 1048
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1049
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getRight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getScrollY()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getBottom()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1064
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1065
    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 1066
    .local v7, "v":Landroid/view/View;
    if-gt v4, v3, :cond_0

    if-gt v3, v6, :cond_0

    .line 1071
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    invoke-virtual {p0, p1, v7, v0, v1}, Lcom/android/systemui/mzrecent/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1064
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1074
    :cond_0
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1078
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1081
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 470
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(I)V

    .line 481
    :goto_0
    return v0

    .line 475
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(I)V

    goto :goto_0

    .line 481
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 685
    iget v3, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 686
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 688
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 689
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 699
    :cond_0
    return-void

    .line 692
    :cond_1
    if-eq v2, p0, :cond_0

    .line 695
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 696
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 697
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    return v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getVisiblePages([I)V
    .locals 9
    .param p1, "range"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 1084
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v2

    .line 1086
    .local v2, "pageCount":I
    if-lez v2, :cond_2

    .line 1087
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getMeasuredWidth()I

    move-result v4

    .line 1088
    .local v4, "screenWidth":I
    const/4 v1, 0x0

    .line 1089
    .local v1, "leftScreen":I
    const/4 v3, 0x0

    .line 1090
    .local v3, "rightScreen":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1092
    .local v0, "currPage":Landroid/view/View;
    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 1094
    add-int/lit8 v1, v1, 0x1

    .line 1095
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1097
    :cond_0
    move v3, v1

    .line 1098
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1100
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1102
    add-int/lit8 v3, v3, 0x1

    .line 1103
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1105
    :cond_1
    aput v1, p1, v7

    .line 1106
    aput v3, p1, v8

    .line 1111
    .end local v0    # "currPage":Landroid/view/View;
    .end local v1    # "leftScreen":I
    .end local v3    # "rightScreen":I
    .end local v4    # "screenWidth":I
    :goto_2
    return-void

    .line 1108
    :cond_2
    aput v5, p1, v7

    .line 1109
    aput v5, p1, v8

    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->computeScroll()V

    .line 360
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 526
    .local v0, "action":I
    const/4 v12, 0x2

    if-ne v0, v12, :cond_0

    iget v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    if-eqz v12, :cond_0

    .line 528
    const/4 v12, 0x1

    .line 656
    :goto_0
    return v12

    .line 531
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/Workspace;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 533
    and-int/lit16 v12, v0, 0xff

    packed-switch v12, :pswitch_data_0

    .line 656
    :cond_1
    :goto_1
    :pswitch_0
    iget v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    goto :goto_0

    .line 546
    :pswitch_1
    iget v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 547
    .local v4, "pointerIndex":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 548
    .local v6, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 549
    .local v9, "y":F
    iget v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionX:F

    sub-float v12, v6, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v7, v12

    .line 550
    .local v7, "xDiff":I
    iget v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionY:F

    sub-float v12, v9, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v10, v12

    .line 552
    .local v10, "yDiff":I
    iget v5, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchSlop:I

    .line 553
    .local v5, "touchSlop":I
    if-le v7, v5, :cond_4

    const/4 v8, 0x1

    .line 554
    .local v8, "xMoved":Z
    :goto_2
    if-le v10, v5, :cond_5

    const/4 v11, 0x1

    .line 556
    .local v11, "yMoved":Z
    :goto_3
    if-nez v8, :cond_2

    if-eqz v11, :cond_1

    .line 558
    :cond_2
    if-eqz v8, :cond_3

    .line 560
    const/4 v12, 0x1

    iput v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    .line 561
    iput v6, p0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionX:F

    .line 562
    iget v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    int-to-float v12, v12

    iput v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    .line 563
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    long-to-float v12, v12

    const v13, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v12, v13

    iput v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mSmoothingTime:F

    .line 567
    :cond_3
    iget-boolean v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mAllowLongPress:Z

    if-eqz v12, :cond_1

    .line 568
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mAllowLongPress:Z

    .line 574
    iget v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 575
    .local v1, "currentScreen":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .line 553
    .end local v1    # "currentScreen":Landroid/view/View;
    .end local v8    # "xMoved":Z
    .end local v11    # "yMoved":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 554
    .restart local v8    # "xMoved":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 591
    .end local v4    # "pointerIndex":I
    .end local v5    # "touchSlop":I
    .end local v6    # "x":F
    .end local v7    # "xDiff":I
    .end local v8    # "xMoved":Z
    .end local v9    # "y":F
    .end local v10    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 592
    .restart local v6    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 594
    .restart local v9    # "y":F
    iput v6, p0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionX:F

    .line 595
    iput v9, p0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionY:F

    .line 596
    iput v6, p0, Lcom/android/systemui/mzrecent/Workspace;->mMouseDownX:F

    .line 597
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    iput v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    .line 598
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mAllowLongPress:Z

    .line 605
    iget-object v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_6

    .line 606
    iget-object v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 607
    .local v2, "currx":I
    iget-object v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    .line 609
    .local v3, "finalx":I
    sub-int v12, v2, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v13, 0x5

    if-ge v12, v13, :cond_6

    .line 610
    iget-object v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->abortAnimation()V

    .line 615
    .end local v2    # "currx":I
    .end local v3    # "finalx":I
    :cond_6
    iget-object v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    :goto_4
    iput v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    goto/16 :goto_1

    :cond_7
    const/4 v12, 0x1

    goto :goto_4

    .line 622
    .end local v6    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    iget v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_8

    .line 639
    :cond_8
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    .line 640
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    .line 641
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/systemui/mzrecent/Workspace;->mAllowLongPress:Z

    .line 643
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/Workspace;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 648
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 656
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 420
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v3

    .line 421
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 422
    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 425
    .local v2, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 427
    add-int/2addr v1, v2

    .line 421
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 364
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 365
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 366
    .local v9, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 367
    .local v10, "widthMode":I
    if-eq v10, v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 373
    .local v7, "heightMode":I
    if-eq v7, v0, :cond_1

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v6

    .line 394
    .local v6, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 395
    invoke-virtual {p0, v8}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 394
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 408
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_3

    .line 409
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    mul-int/2addr v0, v9

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/mzrecent/Workspace;->scrollTo(II)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    mul-int v3, v2, v9

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 411
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/Workspace;->mFirstLayout:Z

    .line 413
    :cond_3
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 456
    iget v1, p0, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 457
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mNextScreen:I

    .line 461
    .local v0, "focusableScreen":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 465
    const/4 v1, 0x0

    return v1

    .line 459
    .end local v0    # "focusableScreen":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    .restart local v0    # "focusableScreen":I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 706
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v14, :cond_0

    .line 707
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 709
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 713
    .local v2, "action":I
    and-int/lit16 v14, v2, 0xff

    packed-switch v14, :pswitch_data_0

    .line 844
    :goto_0
    :pswitch_0
    const/4 v14, 0x1

    return v14

    .line 719
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1

    .line 720
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 724
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionX:F

    .line 725
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    goto :goto_0

    .line 730
    :pswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 731
    .local v7, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 732
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionX:F

    sub-float v5, v14, v13

    .line 733
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/mzrecent/Workspace;->mLastMotionX:F

    .line 734
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mMouseDownX:F

    sub-float v6, v14, v13

    .line 739
    .local v6, "moveDistance":F
    const/4 v14, 0x0

    cmpg-float v14, v5, v14

    if-gez v14, :cond_4

    .line 740
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    .line 741
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    neg-float v15, v15

    invoke-static {v15, v5}, Ljava/lang/Math;->max(FF)F

    move-result v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    .line 742
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    long-to-float v14, v14

    const v15, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mSmoothingTime:F

    .line 750
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->invalidate()V

    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getCurrentScreen()I

    move-result v14

    if-nez v14, :cond_3

    .line 746
    float-to-double v14, v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-float v5, v14

    .line 748
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    goto :goto_1

    .line 752
    :cond_4
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-lez v14, :cond_7

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    sub-float/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getWidth()I

    move-result v15

    int-to-float v15, v15

    sub-float v3, v14, v15

    .line 755
    .local v3, "availableToScroll":F
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-lez v14, :cond_5

    .line 756
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    .line 757
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    long-to-float v14, v14

    const v15, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mSmoothingTime:F

    .line 765
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->invalidate()V

    goto/16 :goto_0

    .line 760
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getCurrentScreen()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v14, v15, :cond_6

    .line 761
    float-to-double v14, v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-float v5, v14

    .line 763
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchX:F

    goto :goto_2

    .line 768
    .end local v3    # "availableToScroll":F
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 774
    .end local v5    # "deltaX":F
    .end local v6    # "moveDistance":F
    .end local v7    # "pointerIndex":I
    .end local v13    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 775
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 776
    .local v10, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/Workspace;->mMaximumVelocity:I

    int-to-float v15, v15

    invoke-virtual {v10, v14, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 777
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    invoke-virtual {v10, v14}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v14

    float-to-int v11, v14

    .line 780
    .local v11, "velocityX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getWidth()I

    move-result v8

    .line 781
    .local v8, "screenWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v14, v15

    div-int v12, v14, v8

    .line 783
    .local v12, "whichScreen":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    int-to-float v14, v14

    int-to-float v15, v8

    div-float v9, v14, v15

    .line 785
    .local v9, "scrolledPos":F
    const/16 v14, 0x12c

    if-le v11, v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    if-lez v14, :cond_9

    .line 788
    int-to-float v14, v12

    cmpg-float v14, v9, v14

    if-gez v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    add-int/lit8 v4, v14, -0x1

    .line 790
    .local v4, "bound":I
    :goto_3
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v15}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(IIZ)V

    .line 802
    .end local v4    # "bound":I
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->releaseVelocityTracker()V

    .line 825
    .end local v9    # "scrolledPos":F
    :goto_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    .line 826
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    goto/16 :goto_0

    .line 788
    .restart local v9    # "scrolledPos":F
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    goto :goto_3

    .line 791
    :cond_9
    const/16 v14, -0x12c

    if-ge v11, v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_b

    .line 795
    int-to-float v14, v12

    cmpl-float v14, v9, v14

    if-lez v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    add-int/lit8 v4, v14, 0x1

    .line 797
    .restart local v4    # "bound":I
    :goto_6
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v15}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(IIZ)V

    goto :goto_4

    .line 795
    .end local v4    # "bound":I
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    goto :goto_6

    .line 799
    :cond_b
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(IIZ)V

    goto :goto_4

    .line 804
    .end local v8    # "screenWidth":I
    .end local v9    # "scrolledPos":F
    .end local v10    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v11    # "velocityX":I
    .end local v12    # "whichScreen":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/mzrecent/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 805
    .restart local v10    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/Workspace;->mMaximumVelocity:I

    int-to-float v15, v15

    invoke-virtual {v10, v14, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 806
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    invoke-virtual {v10, v14}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v14

    float-to-int v11, v14

    .line 808
    .restart local v11    # "velocityX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getWidth()I

    move-result v8

    .line 809
    .restart local v8    # "screenWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v14, v15

    div-int v12, v14, v8

    .line 811
    .restart local v12    # "whichScreen":I
    const/16 v14, 0x12c

    if-le v11, v14, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    if-lez v14, :cond_d

    .line 814
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v15}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(IIZ)V

    .line 823
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->releaseVelocityTracker()V

    goto/16 :goto_5

    .line 815
    :cond_d
    const/16 v14, -0x12c

    if-ge v11, v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_e

    .line 819
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v15}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(IIZ)V

    goto :goto_7

    .line 821
    :cond_e
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(IIZ)V

    goto :goto_7

    .line 829
    .end local v8    # "screenWidth":I
    .end local v10    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v11    # "velocityX":I
    .end local v12    # "whichScreen":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/Workspace;->getWidth()I

    move-result v8

    .line 831
    .restart local v8    # "screenWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mScrollX:I

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v14, v15

    div-int v12, v14, v8

    .line 833
    .restart local v12    # "whichScreen":I
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(IIZ)V

    .line 835
    .end local v8    # "screenWidth":I
    .end local v12    # "whichScreen":I
    :cond_f
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mTouchState:I

    .line 836
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/Workspace;->mActivePointerId:I

    goto/16 :goto_0

    .line 840
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/mzrecent/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 243
    instance-of v1, p1, Lcom/android/systemui/mzrecent/MzCellLayout;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 247
    check-cast v0, Lcom/android/systemui/mzrecent/MzCellLayout;

    .line 248
    .local v0, "cl":Lcom/android/systemui/mzrecent/MzCellLayout;
    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/MzCellLayout;->enableHardwareLayers()V

    .line 250
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 437
    .local v0, "screen":I
    iget v1, p0, Lcom/android/systemui/mzrecent/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/mzrecent/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(I)V

    .line 441
    const/4 v1, 0x1

    .line 443
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBounceAmount(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 1014
    iput p1, p0, Lcom/android/systemui/mzrecent/Workspace;->mScrollingBounce:I

    .line 1016
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/Workspace;->getChildCount()I

    move-result v0

    .line 290
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method snapToScreen(I)V
    .locals 1
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v0, 0x0

    .line 862
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/mzrecent/Workspace;->snapToScreen(IIZ)V

    .line 863
    return-void
.end method
