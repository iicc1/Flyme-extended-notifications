.class public Lcom/meizu/common/widget/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;
    }
.end annotation


# static fields
.field private static mCriticalVelocity:I

.field private static final sInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private mActivePointerId:I

.field private mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

.field private mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

.field private mPlusVelocitys:I

.field private mQuickReturn:Z

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field private mVelocityCount:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

.field private mViewOffsetLeft:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/CustomViewAbove;->sInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1143
    const/16 v0, 0x28a

    sput v0, Lcom/meizu/common/widget/CustomViewAbove;->mCriticalVelocity:I

    return-void
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 604
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrolling:Z

    .line 605
    .local v0, "needPopulate":Z
    if-eqz v0, :cond_2

    .line 607
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 608
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 609
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 610
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 611
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 612
    .local v3, "x":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 613
    .local v4, "y":I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 614
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 617
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    if-eqz v5, :cond_2

    .line 618
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    invoke-interface {v5}, Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;->onOpened()V

    .line 624
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrolling:Z

    .line 625
    return-void

    .line 620
    .restart local v1    # "oldX":I
    .restart local v2    # "oldY":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    if-eqz v5, :cond_2

    .line 621
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    invoke-interface {v5}, Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1019
    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    .line 1020
    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 1021
    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    .line 1022
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 1024
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1027
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1032
    :cond_0
    return-void

    .line 1028
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 678
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 679
    .local v0, "activePointerIndex":I
    if-ne v0, v1, :cond_0

    .line 680
    iput v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 681
    :cond_0
    return v0
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 375
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 376
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 377
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    const/4 v3, 0x1

    .line 381
    .end local v2    # "v":Landroid/view/View;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isInternalContentView(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 392
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const/4 v1, 0x1

    .line 396
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 999
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1000
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1001
    .local v1, "pointerId":I
    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1004
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1005
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 1006
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 1007
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1008
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1011
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1004
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1036
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollingCacheEnabled:Z

    .line 1047
    :cond_0
    return-void
.end method

.method private startDrag()V
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    .line 1016
    return-void
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 644
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    int-to-float v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/meizu/common/widget/CustomViewBehind;->menuOpenTouchAllowed(Landroid/view/View;IF)Z

    move-result v1

    .line 657
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 647
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 654
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/meizu/common/widget/CustomViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0

    .line 650
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->isInternalContentView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public IsBeingDragged()Z
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    return v0
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1092
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1093
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1094
    const/4 v0, 0x0

    .line 1096
    :cond_0
    const/4 v1, 0x0

    .line 1098
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1100
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 1101
    if-ne p1, v4, :cond_3

    .line 1102
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 1120
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1121
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->playSoundEffect(I)V

    .line 1123
    :cond_2
    return v1

    .line 1103
    :cond_3
    if-ne p1, v5, :cond_1

    .line 1107
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 1108
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 1110
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1113
    :cond_5
    if-eq p1, v4, :cond_6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 1115
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 1116
    :cond_7
    if-eq p1, v5, :cond_8

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1118
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 549
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 550
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 552
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 553
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 554
    .local v2, "x":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 556
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 557
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 558
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomViewAbove;->pageScrolled(I)V

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->invalidate()V

    .line 569
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 568
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    goto :goto_0
.end method

.method determineTargetPage(FII)I
    .locals 3
    .param p1, "pageOffset"    # F
    .param p2, "velocity"    # I
    .param p3, "deltaX"    # I

    .prologue
    .line 966
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    .line 967
    .local v0, "targetPage":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_2

    .line 968
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 969
    add-int/lit8 v0, v0, -0x1

    .line 976
    :cond_0
    :goto_0
    return v0

    .line 970
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 985
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 988
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/widget/CustomViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 989
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/meizu/common/widget/CustomViewBehind;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 990
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/meizu/common/widget/CustomViewBehind;->drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 991
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1052
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 1064
    const/4 v0, 0x0

    .line 1065
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1088
    :cond_0
    :goto_0
    return v0

    .line 1068
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 1069
    goto :goto_0

    .line 1071
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 1072
    goto :goto_0

    .line 1074
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1079
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1080
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1081
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1082
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1066
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getAboveOffsetLeft()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewOffsetLeft:I

    return v0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 403
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 342
    packed-switch p1, :pswitch_data_0

    .line 349
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 345
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/widget/CustomViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLeftBound()I
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 980
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getRightBound()I
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isMenuOpen()Z
    .locals 2

    .prologue
    .line 365
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 696
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mEnabled:Z

    if-nez v13, :cond_1

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 698
    const/4 v13, 0x1

    .line 799
    :goto_0
    return v13

    .line 700
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 705
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v13}, Lcom/meizu/common/widget/CustomViewBehind;->IsBeingDragged()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 706
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 707
    const/4 v13, 0x1

    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v2, v13, 0xff

    .line 712
    .local v2, "action":I
    const/4 v13, 0x3

    if-eq v2, v13, :cond_3

    const/4 v13, 0x1

    if-eq v2, v13, :cond_3

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    if-eqz v13, :cond_4

    .line 714
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->endDrag()V

    .line 715
    const/4 v13, 0x0

    goto :goto_0

    .line 718
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_5

    .line 719
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 721
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 723
    sparse-switch v2, :sswitch_data_0

    .line 799
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    if-eqz v13, :cond_e

    :cond_7
    const/4 v13, 0x1

    goto :goto_0

    .line 726
    :sswitch_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchMode:I

    if-nez v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v13

    if-nez v13, :cond_8

    .line 727
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 728
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/CustomViewAbove;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 729
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    invoke-virtual {v8, v13}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    float-to-int v7, v13

    .line 730
    .local v7, "velocity":I
    if-lez v7, :cond_8

    .line 731
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    .line 732
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    .line 738
    .end local v7    # "velocity":I
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 739
    .local v3, "activePointerId":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_6

    .line 741
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 742
    .local v6, "pointerIndex":I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_6

    .line 744
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 745
    .local v9, "x":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    sub-float v5, v9, v13

    .line 746
    .local v5, "dx":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 747
    .local v10, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 748
    .local v11, "y":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionY:F

    sub-float v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 751
    .local v12, "yDiff":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v13, v10, v13

    if-lez v13, :cond_a

    cmpl-float v13, v10, v12

    if-lez v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/meizu/common/widget/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 756
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchMode:I

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    if-lez v13, :cond_9

    .line 757
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    div-int v4, v13, v14

    .line 758
    .local v4, "averageVelocity":I
    sget v13, Lcom/meizu/common/widget/CustomViewAbove;->mCriticalVelocity:I

    if-le v4, v13, :cond_9

    .line 759
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 763
    .end local v4    # "averageVelocity":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->startDrag()V

    .line 764
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 765
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_1

    .line 766
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v13, v12, v13

    if-lez v13, :cond_6

    .line 767
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 772
    .end local v3    # "activePointerId":I
    .end local v5    # "dx":F
    .end local v6    # "pointerIndex":I
    .end local v9    # "x":F
    .end local v10    # "xDiff":F
    .end local v11    # "y":F
    .end local v12    # "yDiff":F
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x8

    if-lt v13, v15, :cond_c

    const v13, 0xff00

    :goto_2
    and-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 775
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mInitialMotionX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 776
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionY:F

    .line 778
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 779
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 780
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    move/from16 v17, v0

    add-float v16, v16, v17

    invoke-virtual/range {v13 .. v16}, Lcom/meizu/common/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 784
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    .line 789
    :cond_b
    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    .line 790
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    goto/16 :goto_1

    .line 772
    :cond_c
    const v13, 0xff00

    goto :goto_2

    .line 787
    :cond_d
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_3

    .line 793
    :sswitch_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    .line 794
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    .line 795
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 799
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 723
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 527
    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 528
    .local v1, "width":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 529
    .local v0, "height":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 530
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 502
    invoke-static {v4, p1}, Lcom/meizu/common/widget/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    .line 503
    .local v3, "width":I
    invoke-static {v4, p2}, Lcom/meizu/common/widget/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    .line 504
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/meizu/common/widget/CustomViewAbove;->setMeasuredDimension(II)V

    .line 506
    invoke-static {p1, v4, v3}, Lcom/meizu/common/widget/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 507
    .local v1, "contentWidth":I
    invoke-static {p2, v4, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 508
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 509
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 601
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 513
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 515
    if-eq p1, p3, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    .line 521
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 523
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 808
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 810
    const/16 v23, 0x0

    .line 948
    :goto_0
    return v23

    .line 812
    :cond_0
    const/16 v23, 0x1

    goto :goto_0

    .line 816
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 817
    const/16 v23, 0x0

    goto :goto_0

    .line 820
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/common/widget/CustomViewBehind;->IsBeingDragged()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 821
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 822
    const/16 v23, 0x0

    goto :goto_0

    .line 825
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 827
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 828
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 830
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 832
    and-int/lit16 v0, v4, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 948
    :cond_5
    :goto_1
    :pswitch_0
    const/16 v23, 0x1

    goto :goto_0

    .line 835
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    .line 837
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 838
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 839
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    .line 840
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    goto :goto_1

    .line 843
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 847
    .local v14, "pointerIndex":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v14, v0, :cond_5

    .line 849
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 850
    .local v19, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v7, v19, v23

    .line 851
    .local v7, "dx":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 852
    .local v20, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    .line 853
    .local v21, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionY:F

    move/from16 v23, v0

    sub-float v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 856
    .local v22, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v20, v23

    if-gtz v23, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchSlop:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v20, v23

    if-lez v23, :cond_9

    :cond_6
    cmpl-float v23, v20, v22

    if-lez v23, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/meizu/common/widget/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->startDrag()V

    .line 861
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 862
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 869
    .end local v7    # "dx":F
    .end local v14    # "pointerIndex":I
    .end local v19    # "x":F
    .end local v20    # "xDiff":F
    .end local v21    # "y":F
    .end local v22    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 871
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 872
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 875
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 876
    .restart local v19    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v6, v23, v19

    .line 877
    .local v6, "deltaX":F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v12, v0

    .line 879
    .local v12, "oldScrollX":F
    add-float v16, v12, v6

    .line 881
    .local v16, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getLeftBound()I

    move-result v23

    move/from16 v0, v23

    int-to-float v10, v0

    .line 882
    .local v10, "leftBound":F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getRightBound()I

    move-result v23

    move/from16 v0, v23

    int-to-float v15, v0

    .line 884
    .local v15, "rightBound":F
    cmpg-float v23, v16, v10

    if-gez v23, :cond_a

    .line 885
    move/from16 v16, v10

    .line 890
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v16, v24

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 891
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 893
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .line 866
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .restart local v7    # "dx":F
    .restart local v14    # "pointerIndex":I
    .restart local v20    # "xDiff":F
    .restart local v21    # "y":F
    .restart local v22    # "yDiff":F
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 886
    .end local v7    # "dx":F
    .end local v14    # "pointerIndex":I
    .end local v20    # "xDiff":F
    .end local v21    # "y":F
    .end local v22    # "yDiff":F
    .restart local v5    # "activePointerIndex":I
    .restart local v6    # "deltaX":F
    .restart local v10    # "leftBound":F
    .restart local v12    # "oldScrollX":F
    .restart local v15    # "rightBound":F
    .restart local v16    # "scrollX":F
    :cond_a
    cmpl-float v23, v16, v15

    if-lez v23, :cond_8

    .line 887
    move/from16 v16, v15

    goto :goto_2

    .line 897
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v19    # "x":F
    :pswitch_3
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    .line 898
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    .line 899
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 901
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 902
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v9, v0

    .line 903
    .local v9, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v16

    .line 904
    .local v16, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v23

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getBehindWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v13, v23, v24

    .line 906
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 907
    .restart local v5    # "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    .line 908
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 909
    .restart local v19    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mInitialMotionX:F

    move/from16 v23, v0

    sub-float v23, v19, v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 911
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v9, v1}, Lcom/meizu/common/widget/CustomViewAbove;->determineTargetPage(FII)I

    move-result v11

    .line 912
    .local v11, "nextPage":I
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 916
    .end local v11    # "nextPage":I
    .end local v17    # "totalDelta":I
    .end local v19    # "x":F
    :goto_3
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 917
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 914
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_3

    .line 918
    .end local v5    # "activePointerIndex":I
    .end local v9    # "initialVelocity":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    move/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    move/from16 v27, v0

    add-float v26, v26, v27

    invoke-virtual/range {v23 .. v26}, Lcom/meizu/common/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 922
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(I)V

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 927
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 928
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 929
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 934
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 935
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 936
    .restart local v19    # "x":F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 937
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_1

    .line 941
    .end local v8    # "index":I
    .end local v19    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 943
    .restart local v14    # "pointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 945
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_1

    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1127
    iget v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-lez v1, :cond_0

    .line 1128
    iget v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1135
    iget v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-ge v1, v0, :cond_0

    .line 1136
    iget v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageScrolled(I)V
    .locals 6
    .param p1, "xpos"    # I

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getWidth()I

    move-result v3

    .line 573
    .local v3, "widthWithMargin":I
    div-int v2, p1, v3

    .line 574
    .local v2, "position":I
    rem-int v1, p1, v3

    .line 575
    .local v1, "offsetPixels":I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 577
    .local v0, "offset":F
    invoke-virtual {p0, v2, v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->onPageScrolled(IFI)V

    .line 578
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 957
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 958
    int-to-float v0, p1

    iput v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    .line 961
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/meizu/common/widget/CustomViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    .line 963
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 220
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 221
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 232
    return-void
.end method

.method public setCurrentItem(IZZ)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 243
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 251
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 254
    if-nez p3, :cond_0

    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_0

    .line 255
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 276
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v3, p1}, Lcom/meizu/common/widget/CustomViewBehind;->getMenuPage(I)I

    move-result p1

    .line 261
    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-eq v3, p1, :cond_3

    const/4 v1, 0x1

    .line 262
    .local v1, "dispatchSelected":Z
    :goto_1
    iput p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    .line 263
    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    .line 264
    .local v0, "destX":I
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 267
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 270
    :cond_2
    if-eqz p2, :cond_4

    .line 271
    invoke-virtual {p0, v0, v2, p4}, Lcom/meizu/common/widget/CustomViewAbove;->smoothScrollTo(III)V

    goto :goto_0

    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_3
    move v1, v2

    .line 261
    goto :goto_1

    .line 273
    .restart local v0    # "destX":I
    .restart local v1    # "dispatchSelected":Z
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    .line 274
    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method smoothScrollTo(III)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 447
    invoke-direct {p0, v9}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 451
    .local v1, "sx":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 452
    .local v2, "sy":I
    sub-int v3, p1, v1

    .line 453
    .local v3, "dx":I
    sub-int v4, p2, v2

    .line 454
    .local v4, "dy":I
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 455
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    .line 456
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;->onOpened()V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0

    .line 466
    :cond_3
    invoke-direct {p0, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 467
    iput-boolean v8, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrolling:Z

    .line 469
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getBehindWidth()I

    move-result v7

    .line 471
    .local v7, "width":I
    const/4 v5, 0x0

    .line 472
    .local v5, "duration":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v8, v7

    div-float v6, v0, v8

    .line 473
    .local v6, "pageDelta":F
    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v0, v6

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v0, v8

    float-to-int v5, v0

    .line 474
    const/16 v0, 0x12c

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 476
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, v9}, Lcom/meizu/common/widget/CustomViewBehind;->setVisibility(I)V

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 479
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->invalidate()V

    goto :goto_0
.end method

.method public thisSlideAllowed(F)Z
    .locals 2
    .param p1, "dx"    # F

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, "allowed":Z
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/CustomViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    .line 674
    :goto_0
    return v0

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/CustomViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    goto :goto_0
.end method
