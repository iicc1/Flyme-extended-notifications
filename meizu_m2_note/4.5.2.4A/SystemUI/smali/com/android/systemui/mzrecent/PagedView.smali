.class public abstract Lcom/android/systemui/mzrecent/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;,
        Lcom/android/systemui/mzrecent/PagedView$SavedState;,
        Lcom/android/systemui/mzrecent/PagedView$ScrollInterpolator;,
        Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;
    }
.end annotation


# instance fields
.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field private mChildWidth:I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDivider:Landroid/view/View;

.field private mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected mHasScrollIndicator:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field protected mIsStart:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field protected mPageIndicator:Lcom/android/systemui/mzrecent/PageIndicator;

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected moveDistance:F

.field protected overScrollMode:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/mzrecent/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/mzrecent/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mFirstLayout:Z

    .line 100
    iput v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    .line 110
    iput v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastScreenCenter:I

    .line 121
    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    .line 122
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mForceScreenScrolled:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mAllowLongPress:Z

    .line 140
    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCellCountX:I

    .line 141
    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCellCountY:I

    .line 143
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mAllowOverScroll:Z

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mTempVisiblePagesRange:[I

    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mLayoutScale:F

    .line 161
    iput v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    .line 168
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mContentIsRefreshable:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mFadeInAdjacentScreens:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mUsePagingTouchSlop:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mDeferScrollUpdate:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsPageMoving:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsDataReady:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsStart:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mHasScrollIndicator:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mShouldShowScrollIndicator:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mDivider:Landroid/view/View;

    .line 1986
    new-instance v0, Lcom/android/systemui/mzrecent/PagedView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/mzrecent/PagedView$1;-><init>(Lcom/android/systemui/mzrecent/PagedView;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 2211
    sget-object v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->OVERTUREPAGE:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->overScrollMode:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    .line 250
    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 255
    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorPaddingRight:I

    .line 273
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->init()V

    .line 275
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/mzrecent/PagedView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/PagedView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1556
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1559
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1570
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1571
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1575
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1576
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionX:F

    .line 1577
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionY:F

    .line 1578
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionXRemainder:F

    .line 1579
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    .line 1580
    iget-object v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1581
    iget-object v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1584
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1575
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1275
    sub-float/2addr p1, v1

    .line 1276
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1566
    :cond_0
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 2083
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2095
    :cond_0
    :goto_0
    return-void

    .line 2085
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2089
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2090
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/PagedView;->updateScrollingIndicatorPosition()V

    .line 2092
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 2093
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 2098
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2100
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 2102
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v6

    .line 2103
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 2104
    .local v8, "pageWidth":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2105
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2107
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2109
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2113
    .local v3, "indicatorWidth":I
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2115
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 2116
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2118
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2119
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 2120
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2121
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2127
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 2124
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2125
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

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
    .line 1013
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1014
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1017
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 1018
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 1019
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1028
    :cond_1
    :goto_0
    return-void

    .line 1022
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1023
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1024
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1246
    iget-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1247
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mAllowLongPress:Z

    .line 1251
    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1252
    .local v0, "currentPage":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1256
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2029
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2031
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->computeScrollHelper()Z

    .line 512
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 467
    iget-object v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mOverScrollX:I

    iget-object v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/mzrecent/PagedView;->scrollTo(II)V

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidate()V

    .line 506
    :cond_2
    :goto_0
    return v2

    .line 476
    :cond_3
    iget v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    if-eq v4, v6, :cond_6

    .line 477
    iget v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    .line 478
    iput v6, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->notifyPageSwitchListener()V

    .line 480
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->setFinalIndicator()V

    .line 483
    iget-boolean v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v4, :cond_4

    .line 484
    iget v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/PagedView;->loadAssociatedPages(I)V

    .line 485
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 491
    :cond_4
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    if-nez v3, :cond_5

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->pageEndMoving()V

    .line 496
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 498
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    const/16 v3, 0x1000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 501
    .local v1, "ev":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_6
    move v2, v3

    .line 506
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1306
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1308
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1310
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1312
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/mzrecent/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1315
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1316
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1319
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1321
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1322
    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mOverScrollX:I

    .line 1323
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1328
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidate()V

    goto :goto_0

    .line 1325
    :cond_2
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mOverScrollX:I

    .line 1326
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1203
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/mzrecent/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1204
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1215
    iget v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1216
    .local v0, "pointerIndex":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1220
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1221
    .local v6, "y":F
    iget v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1222
    .local v3, "xDiff":I
    iget v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1224
    .local v7, "yDiff":I
    iget v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1225
    .local v1, "touchSlop":I
    iget v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mPagingTouchSlop:I

    if-le v3, v10, :cond_5

    move v5, v9

    .line 1226
    .local v5, "xPaged":Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1227
    .local v4, "xMoved":Z
    :goto_2
    if-le v7, v1, :cond_2

    move v8, v9

    .line 1229
    .local v8, "yMoved":Z
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_0

    .line 1230
    :cond_3
    iget-boolean v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_7

    if-eqz v5, :cond_4

    .line 1232
    :goto_3
    iput v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    .line 1233
    iget v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mTotalMotionX:F

    .line 1234
    iput v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionX:F

    .line 1235
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionXRemainder:F

    .line 1236
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchX:F

    .line 1237
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-float v9, v10

    const v10, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mSmoothingTime:F

    .line 1238
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->pageBeginMoving()V

    .line 1241
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->cancelCurrentPageLongPress()V

    goto :goto_0

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_5
    move v5, v8

    .line 1225
    goto :goto_1

    .restart local v5    # "xPaged":Z
    :cond_6
    move v4, v8

    .line 1226
    goto :goto_2

    .line 1230
    .restart local v4    # "xMoved":Z
    .restart local v8    # "yMoved":Z
    :cond_7
    if-eqz v4, :cond_4

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 914
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 916
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 920
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mForceScreenScrolled:Z

    .line 921
    invoke-virtual {p0, v7}, Lcom/android/systemui/mzrecent/PagedView;->screenScrolled(I)V

    .line 922
    iput v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastScreenCenter:I

    .line 927
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v5

    .line 928
    .local v5, "pageCount":I
    if-lez v5, :cond_5

    .line 929
    iget-object v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/systemui/mzrecent/PagedView;->getVisiblePages([I)V

    .line 930
    iget-object v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 931
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 932
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    const/4 v9, -0x1

    if-eq v6, v9, :cond_5

    .line 933
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 935
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 936
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 951
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 952
    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 953
    .local v8, "v":Landroid/view/View;
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_2

    if-gt v4, v3, :cond_3

    if-gt v3, v6, :cond_3

    invoke-virtual {p0, v8}, Lcom/android/systemui/mzrecent/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 955
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 956
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/systemui/mzrecent/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 951
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 958
    :cond_3
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 961
    .end local v8    # "v":Landroid/view/View;
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 962
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 965
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_5
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 996
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 998
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    .line 1007
    :goto_0
    return v0

    .line 1001
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1002
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1003
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1007
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 1667
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1668
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1669
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1039
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1040
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1042
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1043
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1053
    :cond_0
    return-void

    .line 1046
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1049
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1050
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1051
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 1894
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 1898
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v0

    .line 1899
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 784
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildOffsets:[I

    .line 787
    .local v0, "childOffsets":[I
    :goto_0
    if-eqz v0, :cond_2

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsStart:Z

    if-eqz v3, :cond_2

    .line 788
    aget v2, v0, p1

    .line 800
    :cond_0
    :goto_1
    return v2

    .line 784
    .end local v0    # "childOffsets":[I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_0

    .line 790
    .restart local v0    # "childOffsets":[I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 793
    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 794
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 795
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 794
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 797
    :cond_3
    if-eqz v0, :cond_0

    .line 798
    aput v2, v0, p1

    goto :goto_1
.end method

.method protected getChildWidth(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1616
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1619
    .local v0, "measuredWidth":I
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildWidth:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1620
    .local v1, "width":I
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mMinimumWidth:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1621
    .local v2, "widthMax":I
    iput v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildWidth:I

    .line 1622
    return v2
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2185
    const-string v0, ""

    return-object v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1626
    const v7, 0x7fffffff

    .line 1627
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1628
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1629
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v1

    .line 1630
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1631
    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1632
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/systemui/mzrecent/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1633
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1634
    .local v4, "halfChildWidth":I
    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/PagedView;->getChildOffset(I)I

    move-result v10

    add-int v0, v10, v4

    .line 1635
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1636
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 1637
    move v7, v3

    .line 1638
    move v8, v5

    .line 1630
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1641
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected getRelativeChildOffset(I)I
    .locals 13
    .param p1, "index"    # I

    .prologue
    .line 806
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    if-eqz v10, :cond_0

    .line 807
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    array-length v3, v10

    .line 808
    .local v3, "length":I
    if-lt p1, v3, :cond_0

    .line 809
    const-string v10, "PagedView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getRelativeChildOffset lenght= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; index= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    add-int/lit8 p1, v3, -0x1

    .line 815
    .end local v3    # "length":I
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    aget v10, v10, p1

    const/4 v11, -0x1

    if-le v10, v11, :cond_2

    iget-boolean v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsStart:Z

    if-eqz v10, :cond_2

    .line 817
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    aget v5, v10, p1

    .line 843
    :cond_1
    :goto_0
    return v5

    .line 819
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 822
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 823
    .local v4, "measuredWidth":I
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 825
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 827
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 828
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 829
    iget v10, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 830
    .local v8, "widthMin":I
    iget v10, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 832
    .local v7, "widthMax":I
    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 833
    move v4, v8

    .line 837
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingRight()I

    move-result v11

    add-int v6, v10, v11

    .line 838
    .local v6, "padding":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingLeft()I

    move-result v10

    sub-int v11, v4, v6

    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->getChildWidth(I)I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int v5, v10, v11

    .line 840
    .local v5, "offset":I
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    if-eqz v10, :cond_1

    .line 841
    iget-object v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    aput v5, v10, p1

    goto :goto_0

    .line 834
    .end local v5    # "offset":I
    .end local v6    # "padding":I
    :cond_4
    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 835
    move v4, v7

    goto :goto_1
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 852
    .local v4, "measuredWidth":I
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 854
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 856
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 857
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 858
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 859
    .local v7, "widthMin":I
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 861
    .local v6, "widthMax":I
    iget-object v9, p0, Lcom/android/systemui/mzrecent/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 863
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 864
    move v4, v7

    .line 868
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mMinimumWidth:I

    .line 869
    .local v5, "minWidth":I
    if-le v5, v4, :cond_2

    move v3, v5

    .line 871
    .local v3, "maxWidth":I
    :goto_1
    int-to-float v9, v3

    iget v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mLayoutScale:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    return v9

    .line 865
    .end local v3    # "maxWidth":I
    .end local v5    # "minWidth":I
    :cond_1
    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 866
    move v4, v7

    goto :goto_0

    .restart local v5    # "minWidth":I
    :cond_2
    move v3, v4

    .line 869
    goto :goto_1
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1259
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1261
    .local v1, "halfScreenSize":I
    invoke-virtual {p0, p2}, Lcom/android/systemui/mzrecent/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1262
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/android/systemui/mzrecent/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1265
    .local v0, "delta":I
    int-to-float v4, v0

    int-to-float v5, v3

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1266
    .local v2, "scrollProgress":F
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1267
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1268
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method protected getVisiblePages([I)V
    .locals 9
    .param p1, "range"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 875
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v2

    .line 877
    .local v2, "pageCount":I
    if-lez v2, :cond_2

    .line 878
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 879
    .local v4, "screenWidth":I
    const/4 v1, 0x0

    .line 880
    .local v1, "leftScreen":I
    const/4 v3, 0x0

    .line 881
    .local v3, "rightScreen":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 883
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

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 885
    add-int/lit8 v1, v1, 0x1

    .line 886
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 888
    :cond_0
    move v3, v1

    .line 889
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 891
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 893
    add-int/lit8 v3, v3, 0x1

    .line 894
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 896
    :cond_1
    aput v1, p1, v7

    .line 897
    aput v3, p1, v8

    .line 902
    .end local v0    # "currPage":Landroid/view/View;
    .end local v1    # "leftScreen":I
    .end local v3    # "rightScreen":I
    .end local v4    # "screenWidth":I
    :goto_2
    return-void

    .line 899
    :cond_2
    aput v5, p1, v7

    .line 900
    aput v5, p1, v8

    goto :goto_2
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 2079
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2034
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2072
    :cond_0
    :goto_0
    return-void

    .line 2036
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2038
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2039
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2041
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/PagedView;->updateScrollingIndicatorPosition()V

    .line 2042
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2043
    if-eqz p1, :cond_2

    .line 2044
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2045
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2047
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2049
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2051
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/mzrecent/PagedView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/mzrecent/PagedView$2;-><init>(Lcom/android/systemui/mzrecent/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2069
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1077
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 342
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 282
    iget-object v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 283
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/mzrecent/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/systemui/mzrecent/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 284
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCenterPagesVertically:Z

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 289
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchSlop:I

    .line 290
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mPagingTouchSlop:I

    .line 291
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mMaximumVelocity:I

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mDensity:F

    .line 294
    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mFlingThresholdVelocity:I

    .line 295
    const/high16 v1, 0x437a0000    # 250.0f

    iget v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mMinFlingVelocity:I

    .line 296
    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mMinSnapVelocity:I

    .line 297
    invoke-virtual {p0, p0}, Lcom/android/systemui/mzrecent/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 298
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 765
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v0

    .line 766
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 767
    iput-object v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildOffsets:[I

    .line 768
    iput-object v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    .line 769
    iput-object v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 781
    :cond_0
    return-void

    .line 773
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildOffsets:[I

    .line 774
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    .line 775
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 776
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 777
    iget-object v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 778
    iget-object v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 779
    iget-object v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1983
    const/4 v0, 0x1

    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 1844
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/mzrecent/PagedView;->loadAssociatedPages(IZ)V

    .line 1845
    return-void
.end method

.method protected loadAssociatedPages(IZ)V
    .locals 9
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1848
    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mContentIsRefreshable:Z

    if-eqz v5, :cond_7

    .line 1849
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v0

    .line 1850
    .local v0, "count":I
    if-ge p1, v0, :cond_7

    .line 1851
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v3

    .line 1852
    .local v3, "lowerPageBound":I
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v4

    .line 1857
    .local v4, "upperPageBound":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1859
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/mzrecent/Page;

    .line 1860
    .local v2, "layout":Lcom/android/systemui/mzrecent/Page;
    if-lt v1, v3, :cond_0

    if-le v1, v4, :cond_2

    .line 1861
    :cond_0
    invoke-interface {v2}, Lcom/android/systemui/mzrecent/Page;->getPageChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1862
    invoke-interface {v2}, Lcom/android/systemui/mzrecent/Page;->removeAllViewsOnPage()V

    .line 1864
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1857
    .end local v2    # "layout":Lcom/android/systemui/mzrecent/Page;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1872
    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    .line 1873
    if-eq v1, p1, :cond_5

    if-eqz p2, :cond_5

    .line 1872
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1876
    :cond_5
    if-gt v3, v1, :cond_4

    if-gt v1, v4, :cond_4

    .line 1878
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1879
    if-ne v1, p1, :cond_6

    if-eqz p2, :cond_6

    move v5, v6

    :goto_4
    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/mzrecent/PagedView;->syncPageItems(IZ)V

    .line 1881
    iget-object v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1883
    :catch_0
    move-exception v5

    goto :goto_3

    :cond_6
    move v5, v7

    .line 1879
    goto :goto_4

    .line 1891
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "lowerPageBound":I
    .end local v4    # "upperPageBound":I
    :cond_7
    return-void

    .line 1866
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "lowerPageBound":I
    .restart local v4    # "upperPageBound":I
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSwitchListener:Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSwitchListener:Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 386
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mForceScreenScrolled:Z

    .line 756
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidate()V

    .line 757
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidateCachedOffsets()V

    .line 758
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 762
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1551
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1533
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1534
    const/4 v1, 0x0

    .line 1535
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1540
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1541
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1542
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->scrollRight()V

    .line 1546
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1537
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1538
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 1544
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1527
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2193
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2151
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2152
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2153
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2154
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2155
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2156
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2158
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 2139
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2140
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2141
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2142
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2144
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2145
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2147
    :cond_1
    return-void

    .line 2140
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1094
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 1098
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1198
    :cond_0
    :goto_0
    return v5

    .line 1104
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1105
    .local v0, "action":I
    if-ne v0, v9, :cond_2

    iget v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    if-eq v7, v5, :cond_0

    .line 1110
    :cond_2
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 1193
    :cond_3
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    if-eq v7, v9, :cond_4

    iget v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    iget v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    if-nez v7, :cond_0

    :cond_4
    move v5, v6

    .line 1196
    goto :goto_0

    .line 1117
    :pswitch_1
    iget v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    if-eq v7, v10, :cond_5

    .line 1118
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1133
    :cond_5
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1134
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1136
    .local v4, "y":F
    iput v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mDownMotionX:F

    .line 1137
    iput v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionX:F

    .line 1138
    iput v4, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionY:F

    .line 1139
    iput v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionXRemainder:F

    .line 1140
    iput v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mTotalMotionX:F

    .line 1141
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    .line 1142
    iput-boolean v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mAllowLongPress:Z

    .line 1149
    iget-object v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1151
    .local v3, "xDist":I
    iget-object v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchSlop:I

    if-ge v3, v7, :cond_7

    :cond_6
    move v1, v5

    .line 1152
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_8

    .line 1153
    iput v6, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    .line 1154
    iget-object v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1162
    :goto_3
    iget v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    if-eq v7, v9, :cond_3

    iget v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 1164
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1165
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/mzrecent/PagedView;->hitsPreviousPage(FF)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1167
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/mzrecent/PagedView;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_7
    move v1, v6

    .line 1151
    goto :goto_2

    .line 1156
    .restart local v1    # "finishedScrolling":Z
    :cond_8
    iput v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    goto :goto_3

    .line 1177
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "x":F
    .end local v3    # "xDist":I
    .end local v4    # "y":F
    :pswitch_3
    iput v6, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    .line 1178
    iput-boolean v6, p0, Lcom/android/systemui/mzrecent/PagedView;->mAllowLongPress:Z

    .line 1179
    iput v10, p0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    .line 1180
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1184
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1185
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1110
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
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 691
    iget-boolean v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsDataReady:Z

    if-nez v8, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingBottom()I

    move-result v9

    add-int v7, v8, v9

    .line 698
    .local v7, "verticalPadding":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v1

    .line 699
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 701
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_4

    .line 702
    invoke-virtual {p0, v6}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    .line 704
    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 705
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 706
    .local v2, "childHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingTop()I

    move-result v4

    .line 707
    .local v4, "childTop":I
    iget-boolean v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mCenterPagesVertically:Z

    if-eqz v8, :cond_2

    .line 708
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v7

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    .line 714
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    add-int v9, v4, v2

    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 717
    iget v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSpacing:I

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 701
    .end local v2    # "childHeight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidth":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 721
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    iget-boolean v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mFirstLayout:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-ltz v8, :cond_0

    iget v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 722
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/mzrecent/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->updateCurrentPageScroll()V

    .line 724
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/systemui/mzrecent/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 725
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/mzrecent/PagedView;->mFirstLayout:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 516
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/PagedView;->mIsDataReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 517
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 629
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 522
    .local v17, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 523
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 524
    .local v8, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 525
    .local v9, "heightSize":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 526
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Workspace can only be used in EXACTLY mode."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 531
    :cond_1
    if-lez v18, :cond_2

    if-gtz v9, :cond_3

    .line 532
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 543
    :cond_3
    const/4 v13, 0x0

    .line 545
    .local v13, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingBottom()I

    move-result v20

    add-int v16, v19, v20

    .line 546
    .local v16, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getPaddingRight()I

    move-result v20

    add-int v10, v19, v20

    .line 553
    .local v10, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v3

    .line 554
    .local v3, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v3, :cond_4

    .line 556
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 557
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 563
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v7, 0x40000000    # 2.0f

    .line 570
    .local v7, "childWidthMode":I
    const/high16 v5, 0x40000000    # 2.0f

    .line 573
    .local v5, "childHeightMode":I
    sub-int v19, v18, v10

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 575
    .local v6, "childWidthMeasureSpec":I
    sub-int v19, v9, v16

    move/from16 v0, v19

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 578
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 579
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 554
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 587
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childHeightMeasureSpec":I
    .end local v5    # "childHeightMode":I
    .end local v6    # "childWidthMeasureSpec":I
    .end local v7    # "childWidthMode":I
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v8, v0, :cond_5

    .line 588
    add-int v9, v13, v16

    .line 590
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/mzrecent/PagedView;->setMeasuredDimension(II)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidateCachedOffsets()V

    .line 599
    if-lez v3, :cond_6

    .line 605
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/PagedView;->mPageSpacing:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 614
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v14

    .line 615
    .local v14, "offset":I
    sub-int v19, v18, v14

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 617
    .local v15, "spacing":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/mzrecent/PagedView;->setPageSpacing(I)V

    .line 621
    .end local v14    # "offset":I
    .end local v15    # "spacing":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->updateScrollingIndicatorPosition()V

    .line 623
    if-lez v3, :cond_7

    .line 624
    add-int/lit8 v19, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getChildOffset(I)I

    move-result v19

    add-int/lit8 v20, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 627
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 982
    iget v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 983
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    .line 987
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 988
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 989
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 991
    :goto_1
    return v2

    .line 985
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 991
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1348
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v15

    if-gtz v15, :cond_0

    .line 1349
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    .line 1521
    :goto_0
    return v15

    .line 1351
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/mzrecent/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1353
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1355
    .local v2, "action":I
    and-int/lit16 v15, v2, 0xff

    packed-switch v15, :pswitch_data_0

    .line 1521
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v15, 0x1

    goto :goto_0

    .line 1361
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1362
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1366
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mDownMotionX:F

    .line 1367
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionXRemainder:F

    .line 1368
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTotalMotionX:F

    .line 1369
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    .line 1370
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1376
    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 1378
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 1379
    .local v10, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 1380
    .local v14, "x":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionXRemainder:F

    move/from16 v16, v0

    add-float v15, v15, v16

    sub-float v4, v15, v14

    .line 1382
    .local v4, "deltaX":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTotalMotionX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTotalMotionX:F

    .line 1389
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_a

    .line 1390
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchX:F

    add-float/2addr v15, v4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchX:F

    .line 1391
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v15, v0

    const v16, 0x4e6e6b28    # 1.0E9f

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mSmoothingTime:F

    .line 1392
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mDeferScrollUpdate:Z

    if-nez v15, :cond_9

    .line 1393
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-nez v15, :cond_4

    const/4 v15, 0x0

    cmpg-float v15, v4, v15

    if-gez v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mScrollX:I

    if-gtz v15, :cond_4

    .line 1394
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mScrollX:I

    const/16 v16, -0xf

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 1395
    :cond_3
    float-to-int v15, v4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/mzrecent/PagedView;->scrollBy(II)V

    .line 1415
    :goto_2
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionX:F

    .line 1416
    float-to-int v15, v4

    int-to-float v15, v15

    sub-float v15, v4, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1398
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-nez v15, :cond_6

    const/4 v15, 0x0

    cmpl-float v15, v4, v15

    if-lez v15, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mScrollX:I

    if-lez v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1400
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mScrollX:I

    const/16 v16, 0xf

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 1401
    :cond_5
    float-to-int v15, v4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/mzrecent/PagedView;->scrollBy(II)V

    goto :goto_2

    .line 1404
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-nez v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mScrollX:I

    if-lez v15, :cond_8

    .line 1405
    :cond_7
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/mzrecent/PagedView;->setDividerVisibility(I)V

    .line 1407
    :cond_8
    float-to-int v15, v4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/mzrecent/PagedView;->scrollBy(II)V

    goto :goto_2

    .line 1413
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidate()V

    goto :goto_2

    .line 1418
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1421
    .end local v4    # "deltaX":F
    .end local v10    # "pointerIndex":I
    .end local v14    # "x":F
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/mzrecent/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1426
    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 1427
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    .line 1428
    .local v3, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 1429
    .restart local v10    # "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 1430
    .restart local v14    # "x":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/mzrecent/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1431
    .local v12, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v15, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/PagedView;->mMaximumVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1432
    invoke-virtual {v12, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    float-to-int v13, v15

    .line 1434
    .local v13, "velocityX":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mDownMotionX:F

    sub-float v15, v14, v15

    float-to-int v4, v15

    .line 1435
    .local v4, "deltaX":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/mzrecent/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v9

    .line 1436
    .local v9, "pageWidth":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-float v15, v15

    int-to-float v0, v9

    move/from16 v16, v0

    const v17, 0x3ecccccd    # 0.4f

    mul-float v16, v16, v17

    cmpl-float v15, v15, v16

    if-lez v15, :cond_f

    const/4 v7, 0x1

    .line 1439
    .local v7, "isSignificantMove":Z
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/PagedView;->mLastMotionXRemainder:F

    move/from16 v17, v0

    add-float v16, v16, v17

    sub-float v16, v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTotalMotionX:F

    .line 1442
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTotalMotionX:F

    const/high16 v16, 0x41c80000    # 25.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/PagedView;->mFlingThresholdVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_10

    const/4 v6, 0x1

    .line 1451
    .local v6, "isFling":Z
    :goto_4
    const/4 v11, 0x0

    .line 1452
    .local v11, "returnToOriginalPage":Z
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-float v15, v15

    int-to-float v0, v9

    move/from16 v16, v0

    const v17, 0x3ea8f5c3    # 0.33f

    mul-float v16, v16, v17

    cmpl-float v15, v15, v16

    if-lez v15, :cond_c

    int-to-float v15, v13

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v15

    int-to-float v0, v4

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_c

    if-eqz v6, :cond_c

    .line 1456
    const/4 v11, 0x1

    .line 1466
    :cond_c
    if-eqz v7, :cond_d

    if-lez v4, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    if-eqz v6, :cond_12

    if-lez v13, :cond_12

    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-lez v15, :cond_12

    .line 1468
    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    .line 1470
    .local v5, "finalPage":I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/android/systemui/mzrecent/PagedView;->snapToPageWithVelocity(II)V

    .line 1502
    .end local v3    # "activePointerId":I
    .end local v4    # "deltaX":I
    .end local v5    # "finalPage":I
    .end local v6    # "isFling":Z
    .end local v7    # "isSignificantMove":Z
    .end local v9    # "pageWidth":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "returnToOriginalPage":Z
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "velocityX":I
    .end local v14    # "x":F
    :goto_6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    .line 1503
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    .line 1504
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1436
    .restart local v3    # "activePointerId":I
    .restart local v4    # "deltaX":I
    .restart local v9    # "pageWidth":I
    .restart local v10    # "pointerIndex":I
    .restart local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v13    # "velocityX":I
    .restart local v14    # "x":F
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1442
    .restart local v7    # "isSignificantMove":Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_4

    .line 1468
    .restart local v6    # "isFling":Z
    .restart local v11    # "returnToOriginalPage":Z
    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    add-int/lit8 v5, v15, -0x1

    goto :goto_5

    .line 1471
    :cond_12
    if-eqz v7, :cond_13

    if-gez v4, :cond_13

    if-eqz v6, :cond_14

    :cond_13
    if-eqz v6, :cond_16

    if-gez v13, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_16

    .line 1473
    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    .line 1475
    .restart local v5    # "finalPage":I
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/android/systemui/mzrecent/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_6

    .line 1473
    .end local v5    # "finalPage":I
    :cond_15
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    add-int/lit8 v5, v15, 0x1

    goto :goto_7

    .line 1477
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1479
    .end local v3    # "activePointerId":I
    .end local v4    # "deltaX":I
    .end local v6    # "isFling":Z
    .end local v7    # "isSignificantMove":Z
    .end local v9    # "pageWidth":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "returnToOriginalPage":Z
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "velocityX":I
    .end local v14    # "x":F
    :cond_17
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 1483
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1484
    .local v8, "nextPage":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-eq v8, v15, :cond_18

    .line 1485
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    goto :goto_6

    .line 1487
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1489
    .end local v8    # "nextPage":I
    :cond_19
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1494
    .restart local v8    # "nextPage":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-eq v8, v15, :cond_1a

    .line 1495
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1497
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1500
    .end local v8    # "nextPage":I
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/mzrecent/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1508
    :pswitch_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->snapToDestination()V

    .line 1511
    :cond_1c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mTouchState:I

    .line 1512
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/mzrecent/PagedView;->mActivePointerId:I

    .line 1513
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/mzrecent/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1517
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/mzrecent/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1355
    nop

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

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1587
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1332
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->dampedOverScroll(F)V

    .line 1333
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsPageMoving:Z

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->onPageBeginMoving()V

    .line 393
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsPageMoving:Z

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->onPageEndMoving()V

    .line 400
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2162
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2181
    :goto_0
    return v0

    .line 2165
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2167
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2168
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->scrollRight()V

    goto :goto_0

    .line 2174
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2175
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2165
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1591
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1592
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->indexToPage(I)I

    move-result v0

    .line 1593
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1594
    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    .line 1596
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 970
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->indexToPage(I)I

    move-result v0

    .line 971
    .local v0, "page":I
    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 972
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    .line 973
    const/4 v1, 0x1

    .line 975
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1063
    if-eqz p1, :cond_0

    .line 1066
    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1067
    .local v0, "currentPage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1069
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1070
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 7
    .param p1, "screenCenter"    # I

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/PagedView;->updateScrollingIndicator()V

    .line 734
    :cond_0
    iget v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mOverScrollX:I

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mOverScrollX:I

    iget v6, p0, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    if-le v5, v6, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 736
    .local v3, "isInOverscroll":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    .line 737
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 738
    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 739
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 740
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/mzrecent/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 742
    .local v4, "scrollProgress":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v0, v5, v6

    .line 743
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 737
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 734
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "isInOverscroll":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 746
    .restart local v2    # "i":I
    .restart local v3    # "isInOverscroll":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidate()V

    .line 748
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 432
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/mzrecent/PagedView;->scrollTo(II)V

    .line 433
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1767
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 1768
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    .line 1773
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    .line 1771
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1777
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1778
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    .line 1783
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1781
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/android/systemui/mzrecent/PagedView;->mUnboundedScrollX:I

    .line 438
    if-gez p1, :cond_2

    .line 439
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->overScrollMode:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    sget-object v1, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->OVERTUREPAGE:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    if-ne v0, v1, :cond_1

    .line 440
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 442
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->overScroll(F)V

    .line 460
    :cond_0
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mTouchX:F

    .line 461
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mSmoothingTime:F

    .line 462
    return-void

    .line 445
    :cond_1
    div-int/lit8 v0, p1, 0x2

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    .line 447
    :cond_2
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_4

    .line 448
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->overScrollMode:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    sget-object v1, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->OVERTUREPAGE:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    if-ne v0, v1, :cond_3

    .line 449
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 450
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 451
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->overScroll(F)V

    goto :goto_0

    .line 454
    :cond_3
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    .line 457
    :cond_4
    iput p1, p0, Lcom/android/systemui/mzrecent/PagedView;->mOverScrollX:I

    .line 458
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :goto_0
    return-void

    .line 373
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->updateCurrentPageScroll()V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/PagedView;->updateScrollingIndicator()V

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->notifyPageSwitchListener()V

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->updateIndicator()V

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsDataReady:Z

    .line 314
    return-void
.end method

.method protected setDivider(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/android/systemui/mzrecent/PagedView;->mDivider:Landroid/view/View;

    .line 2224
    return-void
.end method

.method protected setDividerVisibility(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2230
    :cond_0
    return-void
.end method

.method public abstract setFinalIndicator()V
.end method

.method public setIsStart(Z)V
    .locals 0
    .param p1, "mIsStart"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/systemui/mzrecent/PagedView;->mIsStart:Z

    .line 196
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/systemui/mzrecent/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v0

    .line 425
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 426
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 684
    iput p1, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSpacing:I

    .line 685
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidateCachedOffsets()V

    .line 686
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSwitchListener:Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;

    .line 302
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSwitchListener:Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mPageSwitchListener:Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 306
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 905
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2001
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mShouldShowScrollIndicator:Z

    .line 2002
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 2003
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2025
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2008
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mShouldShowScrollIndicator:Z

    .line 2009
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2010
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2012
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/PagedView;->updateScrollingIndicatorPosition()V

    .line 2013
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2014
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2015
    if-eqz p1, :cond_2

    .line 2016
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2018
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2020
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2022
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(II)V

    .line 1647
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 1715
    const/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(II)V

    .line 1716
    return-void
.end method

.method protected snapToPage(II)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1719
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1727
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1729
    .local v1, "newX":I
    iget v2, p0, Lcom/android/systemui/mzrecent/PagedView;->mUnboundedScrollX:I

    .line 1730
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1731
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(III)V

    .line 1732
    return-void
.end method

.method protected snapToPage(III)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 1735
    iput p1, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    .line 1737
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1738
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1740
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1743
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->pageBeginMoving()V

    .line 1744
    invoke-virtual {p0, p3}, Lcom/android/systemui/mzrecent/PagedView;->awakenScrollBars(I)Z

    .line 1745
    if-nez p3, :cond_1

    .line 1746
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1749
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1750
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1751
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/systemui/mzrecent/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1756
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_3

    .line 1757
    iget v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/PagedView;->loadAssociatedPages(I)V

    .line 1761
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->notifyPageSwitchListener()V

    .line 1762
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->invalidate()V

    .line 1763
    return-void

    .line 1759
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1673
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1674
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1676
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1678
    .local v5, "newX":I
    iget v6, p0, Lcom/android/systemui/mzrecent/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1679
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 1681
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/mzrecent/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    .line 1685
    const/16 v6, 0x1f4

    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(II)V

    .line 1712
    :goto_0
    return-void

    .line 1696
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1698
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1701
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1702
    iget v6, p0, Lcom/android/systemui/mzrecent/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1709
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1711
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 351
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/PagedView;->getChildOffset(I)I

    move-result v1

    .line 352
    .local v1, "offset":I
    iget v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 353
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 354
    .local v0, "newX":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/mzrecent/PagedView;->scrollTo(II)V

    .line 355
    iget-object v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 356
    iget-object v3, p0, Lcom/android/systemui/mzrecent/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 357
    return-void
.end method

.method public abstract updateIndicator()V
.end method
